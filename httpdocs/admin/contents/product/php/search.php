<?php
//-------------------------------------------------------------------
// 作成日： 2019/11/01
// 作成者： 岡田
// 内  容： グループ会社 検索
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
$objManage  = new DB_manage( _DNS );
$objProduct = new AD_product( $objManage );

// データ取得
$mst_product = $objProduct->GetSearchList( $arr_post );

// クラス削除
unset( $objManage );
unset( $objProduct   );


//----------------------------------------
//  表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= "product/";

// テンプレートに設定
$smarty->assign( "mst_product"    , $mst_product      );


// オプション設定
$smarty->assign( 'OptionProductCategory', $OptionProductCategory );


// 表示
$smarty->display("list.tpl");

?>
