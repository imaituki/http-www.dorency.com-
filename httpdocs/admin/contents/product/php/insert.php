<?php
//-------------------------------------------------------------------
// 作成日： 2019/11/01
// 作成者： 岡田
// 内  容： グループ会社 新規登録
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";

//----------------------------------------
//  初期化
//----------------------------------------
$message = NULL;

//----------------------------------------
//  新規登録処理
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS,1 );
$objProduct = new AD_product( $objManage );

// データ変換
$arr_post = $objProduct->convert( $arr_post );

// データチェック
$message = $objProduct->check( $arr_post, 'insert' );

// エラーチェック
if( empty( $message["ng"] ) ) {

	// トランザクション
	$objProduct->_DBconn->StartTrans();

	$arr_detail = $arr_post["detail"];
	unset( $arr_post["detail"] );

	// 登録処理
	$res = $objProduct->insert( $arr_post );

	// ロールバック
	if( $res == false ) {
		$objProduct->_DBconn->RollbackTrans();
		$message["ng"]["all"] = _ERRHEAD . "登録処理に失敗しました。（ブラウザの再起動を行って改善されない場合は、システム管理者へご連絡ください。）<br />";
	}else{

		if( !empty( $arr_detail ) && is_array( $arr_detail ) ){
			$Id_Product = $objProduct->_DBconn->Insert_ID();

			foreach ( $arr_detail as $key => $val ) {
				$val["id_product"] = $Id_Product;
				// 登録処理
				$res2 = $objProduct->insert_detail( $val );
			}
		}

		// ロールバック
		if( $res2 == false ) {
			$objProduct->_DBconn->RollbackTrans();
			$message["ng"]["all"] = _ERRHEAD . "登録処理に失敗しました。（ブラウザの再起動を行って改善されない場合は、システム管理者へご連絡ください。）<br />";
		}
	}

	// コミット
	$objProduct->_DBconn->CompleteTrans();

}

// クラス削除
unset( $objManage );
unset( $objProduct   );

//----------------------------------------
//  表示
//----------------------------------------
if( empty( $message["ng"] ) ) {

	// メッセージ保管
	$_SESSION["admin"][_CONTENTS_DIR]["message"]["ok"] = "登録が完了しました。<br />";

	// 表示
	header( "Location: ./index.php" );

} else {


	// smarty設定
	$smarty = new MySmarty("admin");
	$smarty->compile_dir .= "mst_product/";

	// テンプレートに設定
	$smarty->assign( "message"   , $message    );
	$smarty->assign( "arr_post"  , $arr_post   );

	// オプション設定
	$smarty->assign( 'OptionProductCategory', $OptionProductCategory );


	// 表示
	$smarty->display( "new.tpl" );

}

?>
