<?php
//-------------------------------------------------------------------
// 作成日： 2018/01/15
// 作成者： 岡田
// 内  容： お知らせカテゴリマスタ 新規登録
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";

//----------------------------------------
//  表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= _CONTENTS_DIR. "/";

// テンプレートに設定
$smarty->assign( '_ARR_IMAGE'    , $_ARR_IMAGE            );


// 表示
$smarty->display( "new.tpl" );

?>
