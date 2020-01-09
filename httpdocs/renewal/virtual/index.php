<?php
//-------------------------------------------------------------------
// 作成日：2019/10/11
// 作成者：岡田
// 内  容：トップページ
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";

//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = "バーチャル工場見学";

// キーワード
$_HTML_HEADER["keyword"] = "";

// ディスクリプション
$_HTML_HEADER["description"] = "";

// ページID
$_HTML_HEADER["id"] = "virtual";
//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "virtual/";

// 表示
$smarty->display("index.tpl");
?>
