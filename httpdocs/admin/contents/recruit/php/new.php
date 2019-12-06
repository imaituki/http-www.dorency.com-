<?php
//-------------------------------------------------------------------
// 作成日： 2019/10/07
// 作成者： 福嶋
// 内  容： 採用情報 新規登録
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
$smarty->compile_dir .= "recruit/";

// テンプレートに設定
$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

// オプション設定
$smarty->assign( 'OptionEmployment', $OptionEmployment );
$smarty->assign( 'OptionSalaryUnit', $OptionSalaryUnit );

// 表示
$smarty->display( "new.tpl" );

?>