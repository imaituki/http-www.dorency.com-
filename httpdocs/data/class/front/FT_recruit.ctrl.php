<?php
//----------------------------------------------------------------------------
// 作成日： 2019/05/30
// 作成者： 牧
// 内  容： 中途採用募集要項クラス
//----------------------------------------------------------------------------

//-------------------------------------------------------
//  クラス
//-------------------------------------------------------
class FT_recruit {

	//-------------------------------------------------------
	//  変数宣言
	//-------------------------------------------------------
	// DB接続
	var $_DBconn = null;

	// 主テーブル
	var $_CtrTable   = "t_recruit";
	var $_CtrTablePk = "id_recruit";

	// コントロール機能（ログ用）
	var $_CtrLogName = "中途採用募集要項";


	//-------------------------------------------------------
	// 関数名：__construct
	// 引  数：$dbconn  ： DB接続オブジェクト
	// 戻り値：なし
	// 内  容：コンストラクタ
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
	// 関数名：__destruct
	// 引  数：なし
	// 戻り値：なし
	// 内  容：デストラクタ
	//-------------------------------------------------------
	function __destruct() {

	}


	//-------------------------------------------------------
	// 関数名：GetSearchList
	// 引  数：$search - 検索条件
	//       ：$option - 取得条件
	// 戻り値：リスト
	// 内  容：検索を行いデータを取得
	//-------------------------------------------------------
	function GetSearchList( $search, $option = null, $limit = null ) {

		// SQL配列
		$creation_kit = array(  "select" => "*",
								"from"   => $this->_CtrTable,
								"where"  => $search["search_display_site"] ." = recruit AND display_flg = 1 AND ( display_indefinite = 1 OR ( display_indefinite = 0 AND display_start <= NOW() AND  NOW() <= display_end  ) ) ",
								"order"  => "id_recruit ASC"
							);

		// 検索条件
		/*if( !empty( $search["search_recruit_type"] ) ) {
			if( is_array( $search["search_recruit_type"] ) ){
				$creation_kit["where"] .= "AND recruit_type IN( " . implode( ",", $search["search_recruit_type"] ) . " ) ";
			}else{
				$creation_kit["where"] .= "AND recruit_type = " . $search["search_recruit_type"] . " ";
			}
		}

		if( !empty( $search["search_area"] ) ) {
			if( is_array( $search["search_area"] ) ){
				$creation_kit["where"] .= "AND area IN( " . implode( ",", $search["search_area"] ) . " ) ";
			}else{
				$creation_kit["where"] .= "AND area = " . $search["search_area"] . " ";
			}
		}

		if( !empty( $search["search_car_type"] ) ) {
			if( is_array( $search["search_car_type"] ) ){
				$creation_kit["where"] .= "AND car_type IN( " . implode( ",", $search["search_car_type"] ) . " ) ";
			}else{
				$creation_kit["where"] .= "AND car_type = " . $search["search_car_type"] . " ";
			}
		}

		if( !empty( $search["search_work_type"] ) ) {
			if( is_array( $search["search_work_type"] ) ){
				$creation_kit["where"] .= "AND work_type IN( " . implode( ",", $search["search_work_type"] ) . " ) ";
			}else{
				$creation_kit["where"] .= "AND work_type = " . $search["search_work_type"] . " ";
			}
		}


		if( !empty( $search["search_freeword"] ) ) {
			$creation_kit["where"] .= "AND ( ( " . $this->_DBconn->createWhereSql( $search["search_freeword"], "title", "LIKE", "OR", "%string%" ) . " )
			 OR ( " . $this->_DBconn->createWhereSql( $search["search_freeword"], "comment", "LIKE", "OR", "%string%" ) . " ) ) ";
		}
*/

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
		if( is_array( $res["data"] ) ) {
			foreach( $res["data"] as $key => $val ) {
				if( !empty( $res["data"][$key]["comment"] ) ) {
					$res["data"][$key]["comment"] = html_entity_decode( $res["data"][$key]["comment"] );
				}
			}
		} elseif( is_array( $res ) ) {
			foreach( $res as $key => $val ) {
				if( !empty( $res[$key]["comment"] ) ) {
					$res[$key]["comment"] = html_entity_decode( $res[$key]["comment"] );
				}
			}
		}


	/*	if( $res ){
			$creation_kit["select"] = "MAX(update_date) as max";
			$max = $this->_DBconn->selectCtrl( $creation_kit, array( "fetch" => _DB_FETCH ) );
			$res["max"] = $max["max"];
		}*/

		// 戻り値
		return $res;

	}


	//-------------------------------------------------------
	// 関数名：GetIdRow
	// 引  数：$id   - ID
	// 戻り値：1件分
	// 内  容：1件取得する
	//-------------------------------------------------------
	function GetIdRow( $id ) {

		// データチェック
		if( !is_numeric( $id ) ) {
			return null;
		}

		// SQL配列
		$creation_kit = array( "select" => "*",
							   "from"   => $this->_CtrTable,
							   "where"  => "display_flg = 1 AND
											( display_indefinite = 1 OR ( display_indefinite = 0 AND display_start <= NOW() AND  NOW() <= display_end ) ) AND " .
											$this->_CtrTablePk . " = " . $id );

		// データ取得
		$res = $this->_DBconn->selectCtrl( $creation_kit, array( "fetch" => _DB_FETCH ) );

		// タグ許可
		if( !empty($res["comment"]) ){
			$res["comment"] = html_entity_decode( $res["comment"] );
		}

		// 戻り値
		return $res;

	}

	//-------------------------------------------------------
	// 関数名：GetDetailPageNavi
	// 引  数：$id   - 中途採用募集要項ID
	// 戻り値：ページナビ
	// 内  容：詳細ページ用のページナビを作成する
	//-------------------------------------------------------
	function GetDetailPageNavi( $id ) {

		// データチェック
		if( !is_numeric( $id ) ) {
			return null;
		}

		// SQL配列
		$creation_kit = array(  "select" => $this->_CtrTablePk,
								"from"   => $this->_CtrTable,
								"where"  => "display_flg = 1 AND
											 ( display_indefinite = 1 OR
										   ( NOW() BETWEEN display_start AND display_end ) ) ",
								"order"  => "id_recruit DESC"
							);

		// データ取得
		$aryId = $this->_DBconn->selectCtrl( $creation_kit, array( "fetch" => _DB_FETCH_COL ) );

		// データチェック
		if( is_array( $aryId ) ) {

			// 現在のKey
			$pageKey = array_search( $id, $aryId );

			// ページング
			$res["back"] = $aryId[$pageKey+1];
			$res["now"]  = $aryId[$pageKey];
			$res["next"] = $aryId[$pageKey-1];

		}

		// 戻り値
		return $res;

	}

}
?>
