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
$_HTML_HEADER["title"] = "用途のご紹介";

// キーワード
$_HTML_HEADER["keyword"] = "";

// ディスクリプション
$_HTML_HEADER["description"] = "";

// ページID
$_HTML_HEADER["id"] = "use";


//----------------------------------------
//  データ取得
//----------------------------------------
// 操作クラス
$objManage  = new DB_manage( _DNS );
$objProductCategory = new FT_product_category( $objManage );
$objProduct = new FT_product( $objManage );

if( !empty( $OptionExample ) && is_array( $OptionExample ) ){
	foreach( $OptionExample as $key => $val ){
		$t_product_parts[$key] = $objProduct->GetSearchExample( array( "search_example" => $key ) );
		
		if( !empty( $t_product_parts[$key] ) && is_array( $t_product_parts[$key] ) ){
			foreach( $t_product_parts[$key] as $key2 => $val2 ){
				if( empty( $t_product_category[$key][$val2["id_product_category"]] ) ){
					$t_product_category[$key][$val2["id_product_category"]] = $objProductCategory->GetIdRow( $val2["id_product_category"] );
				}
				$t_product_category[$key][$val2["id_product_category"]]["data"][] = $val2;
			}
		}
	}
}

// クラス削除
unset( $objProduct );
unset( $objProductCategory );
unset( $objManage  );

//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "use/";

// テンプレートに設定
$smarty->assign( "t_product_parts"   , $t_product_parts    );
$smarty->assign( "t_product_category", $t_product_category );
$smarty->assign( "OptionExample"    , $OptionExample    );
$smarty->assign( "OptionExampleTag" , $OptionExampleTag );

// 表示
$smarty->display("index.tpl");

?>