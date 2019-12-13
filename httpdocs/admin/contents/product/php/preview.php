<?php
//-------------------------------------------------------------------
// 作成日： 2019/11/01
// 作成者： 岡田
// 内  容： グループ会社 プレビュー
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";

require $_SERVER["DOCUMENT_ROOT"] . "/data/config/front.ini";

//----------------------------------------
//  データ整理
//----------------------------------------
// 写真処理
if( is_array( $_ARR_IMAGE ) ) {
	foreach( $_ARR_IMAGE as $key => $val ) {
		if( !empty( $arr_post["_" . $val["name"] . "_now"] ) ){
			$arr_post[$val["name"]] = $arr_post["_" . $val["name"] . "_now"];
		}
	}
}


// タグ許可
$arr_post["comment"] = html_entity_decode( $arr_post["comment"] );

// 設定
$mst_product = $arr_post;

//----------------------------------------
//  表示
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "product/";

// テンプレート設定
$smarty->assign( "mst_product", $mst_product );

// オプション設定
$smarty->assign( 'OptionProductCategory', $OptionProductCategory );


// 表示
$html = $smarty->fetch( _PREVIEW_TPL, "", _CONTENTS_DIR . "_preview" );

if( is_array( $_ARR_IMAGE ) ) {
	foreach( $_ARR_IMAGE as $key => $val ) {
		if( !empty( $arr_post["_preview_" . $val["name"]] ) ) {
			$html = str_replace( ( _IMAGEPATH . "/" . _CONTENTS_DIR . "/" . $val["name"] . "/" . $val["option"]["s"]["prefixFileName"] . $arr_post[$val["name"]] ), ( "/admin/common/php/imageDisp.php?path=" . $arr_post["_contents_conf_path"] . "&dir=" . $arr_post["_contents_dir"] . "&image=" . $val["name"] . "&size=s" ), $html );
			$html = str_replace( ( _IMAGEPATH . "/" . _CONTENTS_DIR . "/" . $val["name"] . "/" . $val["option"]["m"]["prefixFileName"] . $arr_post[$val["name"]] ), ( "/admin/common/php/imageDisp.php?path=" . $arr_post["_contents_conf_path"] . "&dir=" . $arr_post["_contents_dir"] . "&image=" . $val["name"] . "&size=m" ), $html );
			$html = str_replace( ( _IMAGEPATH . "/" . _CONTENTS_DIR . "/" . $val["name"] . "/" . $val["option"]["l"]["prefixFileName"] . $arr_post[$val["name"]] ), ( "/admin/common/php/imageDisp.php?path=" . $arr_post["_contents_conf_path"] . "&dir=" . $arr_post["_contents_dir"] . "&image=" . $val["name"] . "&size=l" ), $html );
		}
	}
}

echo $html;

?>
