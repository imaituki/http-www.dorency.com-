<?php
//-------------------------------------------------------------------
// 作成日： 2019/10/21
// 作成者： 岡田
// 内  容： エントリー　確認
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  初期化
//----------------------------------------
$message   = NULL;

//----------------------------------------
// エントリークラス
//----------------------------------------
// クラス呼び出し
$objManage  = new DB_manage( _DNS );
$objEntry = new FT_entry( $objManage );

// 文字エンコード
$arr_post = $objEntry->convert( $arr_post );

// チェック
$message = $objEntry->check( $arr_post );

// クラス削除
unset( $objManage  );
unset( $objEntry );

//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = "エントリー";

// キーワード
$_HTML_HEADER["keyword"] = "";

// ディスクリプション
$_HTML_HEADER["description"] = "";

//----------------------------------------
//  表示
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "recruit/";

// テンプレートに設定
$smarty->assign( "message" , $message  );
$smarty->assign( "arr_post", $arr_post );

// オプション設定
$smarty->assign( "OptionRecruit"   , $OptionRecruit  );

// エラーチェック
if( empty( $message["ng"] ) ) {

	// 表示
	$smarty->display("check.tpl");

} else {

	// 表示
	$smarty->display("form.tpl");

}

?>
