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

// ページID
$_HTML_HEADER["id"] = "product";

//----------------------------------------
//  データ取得
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objProductCategory = new FT_product_category( $objManage );

// カテゴリ
$t_product_category  = $objProductCategory->GetSearchList( $search );

// クラス削除
unset( $objProductCategory   );
unset( $objManage        );

//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "product/";

// テンプレートに設定
$smarty->assign( "t_product_category", $t_product_category );


// 表示
$smarty->display("index.tpl");
?>
