<?php
//-------------------------------------------------------------------
// 作成日: 2019/10/07
// 作成者: 岡田
// 内  容: お知らせ 一覧表示
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";

//----------------------------------------
//  メッセージ取得
//----------------------------------------
// 取得
$message = ( isset($_SESSION["admin"][_CONTENTS_DIR]["message"]) ) ? $_SESSION["admin"][_CONTENTS_DIR]["message"] : null;

// クリア
unset( $_SESSION["admin"][_CONTENTS_DIR]["message"] );
//----------------------------------------
//  データ一覧取得
//----------------------------------------
// 操作クラス
$objManage  = new DB_manage( _DNS );
$objMain    = new $ClassName( $objManage );

// データ取得
$data = $objMain->GetIdRow();

// クラス削除
unset( $objManage  );
unset( $objMain    );


//----------------------------------------
// 表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= _CONTENTS_DIR. "/";

// テンプレートに設定
$smarty->assign( "message", $message );
$smarty->assign( "data"   , $data    );

if( !empty( $_ARR_IMAGE ) ){
	$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );
}

// 表示
$smarty->display("index.tpl");
?>