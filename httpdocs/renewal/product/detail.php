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

        // thead出力用
        if( !empty( $t_product[$key]["detail"] ) && is_array( $t_product[$key]["detail"] ) ){
            unset( $type, $feature, $days, $time, $use, $necessary_time, $html );
            foreach ( $t_product[$key]["detail"] as $key2 => $val2 ) {
                if( !empty( $val2["type"] ) ) $type = 1;
                if( !empty( $val2["feature"] ) ) $feature = 1;
                if( !empty( $val2["days"] ) ) $days = 1;
                if( !empty( $val2["time"] ) ) $time = 1;
                if( !empty( $val2["use"] ) ) $use = 1;
                if( !empty( $val2["necessary_time"] ) ) $necessary_time = 1;
            }
            if( !empty( $type ) ) $t_product[$key]["type_flg"] = 1;
            if( !empty( $feature ) ) $t_product[$key]["feature_flg"] = 1;
            if( !empty( $days ) ) $t_product[$key]["days_flg"] = 1;
            if( !empty( $time ) ) $t_product[$key]["time_flg"] = 1;
            if( !empty( $use ) ) $t_product[$key]["use_flg"] = 1;
            if( !empty( $necessary_time ) ) $t_product[$key]["necessary_time_flg"] = 1;
        }
    }
}

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
