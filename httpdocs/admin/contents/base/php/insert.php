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
$objManage = new DB_manage( _DNS );
$objBase   = new AD_base( $objManage, $_ARR_IMAGE );

// データ変換
$arr_post = $objBase->convert( $arr_post );

// データチェック
$message = $objBase->check( $arr_post, 'insert' );

// エラーチェック
if( empty( $message["ng"] ) ) {

	// トランザクション
	$objBase->_DBconn->StartTrans();

	// 登録処理
	$res = $objBase->insert( $arr_post );

	// 失敗したらロールバック
	if( $res == false ) {
		$objBase->_DBconn->RollbackTrans();
		$message["ng"]["all"] = _ERRHEAD . "登録処理に失敗しました。（ブラウザの再起動を行って改善されない場合は、システム管理者へご連絡ください。）<br />";
	}

	// コミット
	$objBase->_DBconn->CompleteTrans();

}

// クラス削除
unset( $objManage );
unset( $objBase   );

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
	$smarty->compile_dir .= "mst_base/";

	// テンプレートに設定
	$smarty->assign( "message"   , $message    );
	$smarty->assign( "arr_post"  , $arr_post   );
	$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

	// 表示
	$smarty->display( "new.tpl" );

}

?>
