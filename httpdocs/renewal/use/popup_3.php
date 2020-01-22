<?php
//-------------------------------------------------------------------
// 作成日： 2019/03/27
// 作成者： 岡田
// 内  容： 製品情報
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";

//----------------------------------------
//  ヘッダー情報
//----------------------------------------
// タイトル
$_HTML_HEADER["title"] = "ドーナッツ";

// キーワード
$_HTML_HEADER["keyword"] = "";

// ディスクリプション
$_HTML_HEADER["description"] = "";

//----------------------------------------
//  データ取得
//----------------------------------------
// 操作クラス
$objManage          = new DB_manage( _DNS );
$objProductCategory = new FT_product_category( $objManage );
$objProduct         = new FT_product( $objManage );

$t_product_parts = $objProduct->GetSearchExample( array( "search_example" => 3 ) );

if( !empty( $t_product_parts ) && is_array( $t_product_parts ) ){
	foreach( $t_product_parts as $key => $val ){
		$t_product[$val["id_product_category"]][] = $val;
		$t_product_category[$val["id_product_category"]] = $objProductCategory->GetIdRow( $val["id_product_category"] );
	}
}

// クラス削除
unset( $objProductCategory );
unset( $objProduct         );
unset( $objManage          );

//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "use/";

// テンプレートに設定
$smarty->assign( "t_product"         , $t_product          );
$smarty->assign( "t_product_category", $t_product_category );

// 表示
$smarty->display("popup_3.tpl");

?>
