<?php
//-------------------------------------------------------------------
// 作成日： 2019/03/26
// 作成者： 牧
// 内  容： 中途採用募集要項 検索
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  SESSION設定
//----------------------------------------
$_SESSION["admin"][_CONTENTS_DIR]["search"]["POST"] = $arr_post;


//----------------------------------------
//  データ一覧取得
//----------------------------------------
// 操作クラス
$objManage = new DB_manage( _DNS );
$objRecruit = new AD_recruit( $objManage, $_ARR_IMAGE );

// データ取得
$t_recruit = $objRecruit->GetSearchList( $arr_post );

// クラス削除
unset( $objManage   );
unset( $objRecruit   );


//----------------------------------------
//  表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= "recruit/";

// テンプレートに設定
$smarty->assign( "page_navi"    , $t_recruit["page"] );
$smarty->assign( "t_recruit"    , $t_recruit["data"] );
$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

// オプション配列
$smarty->assign( "OptionSalaryUnit" , $OptionSalaryUnit  );
$smarty->assign( 'OptionEmployment' , $OptionEmployment  );
$smarty->assign( 'OptionRecruit'    , $OptionRecruit     );



// 表示
$smarty->display("list.tpl");

?>
