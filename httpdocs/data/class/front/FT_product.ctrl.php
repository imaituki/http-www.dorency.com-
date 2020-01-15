<?php
//----------------------------------------------------------------------------
// 作成日: 2016/11/01
// 作成者: 鈴木
// 内  容: お知らせクラス
//----------------------------------------------------------------------------

//-------------------------------------------------------
//  クラス
//-------------------------------------------------------
class FT_product {

	//-------------------------------------------------------
	//  変数宣言
	//-------------------------------------------------------
	// DB接続
	var $_DBconn = null;

	// 主テーブル
	var $_CtrTable   = "mst_product";
	var $_CtrTablePk = "id_product";
	var $_CtrTable2   = "t_product_parts";

	// コントロール機能（ログ用）
	var $_CtrLogName = "お知らせ";


	//-------------------------------------------------------
	// 関数名: __construct
	// 引  数: $dbconn  :  DB接続オブジェクト
	// 戻り値: なし
	// 内  容: コンストラクタ
	//-------------------------------------------------------
	function __construct( $dbconn ) {

		// クラス宣言
		if( !empty( $dbconn ) ) {
			$this->_DBconn  = $dbconn;
		} else {
			$this->_DBconn  = new DB_manage( _DNS );
		}

	}


	//-------------------------------------------------------
	// 関数名: __destruct
	// 引  数: なし
	// 戻り値: なし
	// 内  容: デストラクタ
	//-------------------------------------------------------
	function __destruct() {

	}


	//-------------------------------------------------------
	// 関数名: GetSearchList
	// 引  数: $search - 検索条件
	//       : $option - 取得条件
	// 戻り値: リスト
	// 内  容: 検索を行いデータを取得
	//-------------------------------------------------------
	function GetSearchList( $search, $option = null, $limit = null ) {
		// SQL配列
		$creation_kit = array(  "select" => "*",
								"from"   => $this->_CtrTable,
								"where"  => "display_flg = 1 AND delete_flg = 0 ",
								"order"  => "display_num ASC"
							);

		//-------------------------------------------
		// 検索条件
		//-------------------------------------------
		// 掲載箇所
		if( !empty( $search["search_product_category"] ) ){
			$creation_kit["where"] .= "AND id_product_category = " . $search["search_product_category"] . " ";
		}
		// 取得条件
		if( empty( $option ) ) {

			// ページ切り替え配列
			$_PAGE_INFO = array( "PageNumber"      => $search["page"],
								 "PageShowLimit"   => _PAGESHOWLIMIT,
								 "PageNaviLimit"   => _PAGENAVILIMIT,
								 "LinkSeparator"   => " ",
								 "LinkBackText"    => "&lt; 前へ",
								 "LinkNextText"    => "次へ &gt;",
								 "LinkBackClass"   => "next",
								 "LinkNextClass"   => "back",
								 "LinkSpanPref"    => "<li>",
								 "LinkSpanPost"    => "</li>",
								 "LinkSpanNowPref" => "<strong>",
								 "LinkSpanNowPost" => "</strong>" );

			// オプション
			$option = array( "fetch" => _DB_FETCH_ALL );

		} else {

			// 取得件数制限
			if( !empty( $limit ) ) {
				$creation_kit["limit"] = $limit;
			}

		}

		// データ取得
		$res = $this->_DBconn->selectCtrl( $creation_kit, array( "fetch" => _DB_FETCH_ALL ) );

		// タグ許可
		if( !empty($res["data"]) && is_array($res["data"]) ) {
			foreach( $res["data"] as $key => $val ) {
				if( !empty( $res["data"][$key]["comment"] ) ) {
					$res["data"][$key]["comment"] = html_entity_decode( $res["data"][$key]["comment"] );
				}
			}
		} elseif( !empty($res) && is_array($res) ) {
			foreach( $res as $key => $val ) {
				if( !empty( $res[$key]["comment"] ) ) {
					$res[$key]["comment"] = html_entity_decode( $res[$key]["comment"] );
				}
			}
		}

		if( is_array( $res["data"] ) ) {
			foreach( $res["data"] as $key => $val ) {
				if( !empty( $res["data"][$key]["id_category"] ) ) {
					$res["data"][$key]["id_category"] = explode( ",", $res["data"][$key]["id_category"] );
				}
			}
		} elseif( is_array( $res ) ) {
			foreach( $res as $key => $val ) {
				if( !empty( $res[$key]["id_category"] ) ) {
					$res[$key]["id_category"] = explode( ",", $res[$key]["id_category"] );
				}
			}
		}

		// 戻り値
		return $res;

	}
	//-------------------------------------------------------
	// 関数名：GetSearchDetail
	// 引  数：$search - 検索条件
	// 戻り値：リスト
	// 内  容：検索を行いデータを取得
	//-------------------------------------------------------
	function GetSearchDetail( $search ) {
		// SQL配列
		$creation_kit = array(  "select" => "*",
								"from"   => $this->_CtrTable2,
								"where"  => "id_product = " . $search["search_id_product_parts"] . " ",
								"order"  => "id_product_parts ASC"
							);

		// データ取得
		$res = $this->_DBconn->selectCtrl( $creation_kit, array( "fetch" => _DB_FETCH_ALL ) );
		// 戻り値
		return $res;
	}

	//-------------------------------------------------------
	// 関数名：GetSearchExample
	// 引  数：$search - 検索条件
	// 戻り値：リスト
	// 内  容：検索を行いデータを取得
	//-------------------------------------------------------
	function GetSearchExample( $search ) {
		// SQL配列
		$creation_kit = array(  "select" => "*",
								"from"   => $this->_CtrTable2,
								"join"   => "JOIN {$this->_CtrTable} ON {$this->_CtrTable}.{$this->_CtrTablePk} = {$this->_CtrTable2}.{$this->_CtrTablePk} ",
								"where"  => "1 ",
								"order"  => "display_num ASC, id_product_parts ASC"
							);

		$creation_kit["where"] .= "AND " . $this->_DBconn->createWhereSql( $search["search_example"], "example", "LIKE", "OR", "%string%" ) . " ";

		// データ取得
		$res = $this->_DBconn->selectCtrl( $creation_kit, array( "fetch" => _DB_FETCH_ALL ) );
		// 戻り値
		return $res;
	}

	//-------------------------------------------------------
	// 関数名: GetOption
	// 引  数: なし
	// 戻り値: お知らせカテゴリーオプション
	// 内  容: お知らせカテゴリーをオプション化して取得
	//-------------------------------------------------------
	function GetOption() {

		// SQL配列
		$creation_kit = array(  "select" => "id_category, title",
								"from"   => "mst_info_category",
								"where"  => "delete_flg = 0 ",
								"order"  => "display_num ASC"
							);
		// データ取得
		$arr_option = $this->_DBconn->selectCtrl( $creation_kit, array("fetch" => _DB_FETCH_ALL) );

		// オプション用に成形
		if( !empty($arr_option) ){
			foreach( $arr_option as $val ){
				$res[$val["id_category"]] = $val["title"];
			}
		}

		// 戻り値
		return $res;

	}

}
?>
