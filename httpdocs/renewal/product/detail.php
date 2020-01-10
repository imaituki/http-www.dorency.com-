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
$_HTML_HEADER["title"] = "鮮度保持剤";

// キーワード
$_HTML_HEADER["keyword"] = "";

// ディスクリプション
$_HTML_HEADER["description"] = "";



//----------------------------------------
//  データ取得
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objProductCategory = new FT_product_category( $objManage );
$objProduct = new FT_product( $objManage );

// カテゴリ
$search["search_product_category"] = $arr_get["id"];

// データ取得
$t_product_category  = $objProductCategory->GetSearchList( $search );
$t_product_category_detail  = $objProductCategory->GetIdRow( $arr_get["id"] );
$t_product = $objProduct->GetSearchList( $search );

foreach ($t_product as $key => $val) {
    if( !empty( $t_product[$key]["id_product"] ) ) {
        $t_product[$key]["detail"] = $objProduct->GetSearchDetail( array( "search_id_product_parts" => $t_product[$key]["id_product"] ) );
    }
}
disp_arr($t_product);

// クラス削除
unset( $objProductCategory);
unset( $objProduct     );
unset( $objManage      );

//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "product/";

// テンプレートに設定
$smarty->assign( "t_product"                , $t_product                 );
$smarty->assign( "t_product_category_detail", $t_product_category_detail );
$smarty->assign( "t_product_category"       , $t_product_category        );

// オプション設定
$smarty->assign( "OptionProductCategory", $OptionProductCategory );

// 表示
$smarty->display("detail.tpl");
?>
