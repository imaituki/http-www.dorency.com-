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
// 初期値設定
//----------------------------------------
$_POST["detail"][0] = "";

//----------------------------------------
//  表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= "product/";

// テンプレートに設定
$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

// オプション設定
$smarty->assign( 'OptionProductCategory', $OptionProductCategory );
$smarty->assign( 'OptionOffice'       , $OptionOffice        );
$smarty->assign( 'OptionDirector'     , $OptionDirector      );

// 表示
$smarty->display( "new.tpl" );

?>