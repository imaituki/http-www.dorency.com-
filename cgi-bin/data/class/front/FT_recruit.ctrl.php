<?php
//----------------------------------------------------------------------------
// 作成日： 2019/10/10
// 作成者： 福嶋
// 内  容： 採用情報クラス
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
	var $_CtrLogName = "採用情報";


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
								"where"  => "display_flg = 1 AND 
											 ( ( display_indefinite_flg = 1 ) OR 
											   ( display_indefinite_flg = 0 AND display_start <= NOW() AND display_end >= NOW() ) ) ", 
								"order"  => "update_date DESC"
							);
		
		// 検索条件
		if( !empty( $search["employment"] ) ) {
			$creation_kit["where"] .= "AND employment = " . $search["employment"] . " ";
		}
		
		// 取得件数
		if( !empty( $limit ) ) {
			$creation_kit["limit"] = $limit;
		}
		
		// 取得条件
		if( empty( $option ) ) {

			// ページ切り替え配列
			$_PAGE_INFO = array( "PageNumber"      => ( !empty( $search["page"] ) ) ? $search["page"] : 1, 
								 "PageShowLimit"   => _PAGESHOWLIMIT,
								 "PageNaviLimit"   => _PAGENAVILIMIT, 
								 "LinkSeparator"   => " ", 
								 "LinkBackText"    => "&lt; 前へ", 
								 "LinkNextText"    => "次へ &gt;", 
								 "LinkBackClass"   => "next", 
								 "LinkNextClass"   => "back", 
								 "LinkSpanPref"    => "<li>", 
								 "LinkSpanPost"    => "</li>", 
								 "LinkSpanNowPref" => "<span>", 
								 "LinkSpanNowPost" => "</span>" );

			// オプション
			$option = array( "fetch" => _DB_FETCH_ALL,
							 "page"  => $_PAGE_INFO );

		}

		// データ取得
		$res = $this->_DBconn->selectCtrl( $creation_kit, $option );

		// if( !empty($res["data"]) ){
		// 	foreach( $res["data"] as $key => $val ){
		// 		if( !empty($val["comment"]) ){
		// 			$res["data"][$key]["comment"] = html_entity_decode( $val["comment"] );
		// 		}
		// 	}
		// }elseif( !empty($res) ){
		// 	foreach( $res as $key => $val ){
		// 		if( !empty($val["comment"]) ){
		// 			$res[$key]["comment"] = html_entity_decode( $val["comment"] );
		// 		}
		// 	}
		// }

		// 戻り値
		return $res;

	}


	//-------------------------------------------------------
	// 関数名：GetIdRow
	// 引  数：$id - ID
	// 戻り値：1件分のデータ
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
							   "where"  => $this->_CtrTablePk . " = " . $id . " AND
											 display_flg = 1 AND 
											( ( display_indefinite_flg = 1 ) OR 
											  ( display_indefinite_flg = 0 AND display_start <= NOW() AND display_end >= NOW() ) ) " );

		// データ取得
		$res = $this->_DBconn->selectCtrl( $creation_kit, array( "fetch" => _DB_FETCH ) );

		// if( !empty($res["comment"]) ){
		// 	$res["comment"] = html_entity_decode( $res["comment"] );
		// }

		// 戻り値
		return $res;

	}
}
?>