<?php
//-------------------------------------------------------------------
// 作成日： 2019/03/26
// 作成者： 牧
// 内  容： 中途採用募集要項 プレビュー
//-------------------------------------------------------------------

//----------------------------------------
//  共通設定
//----------------------------------------
require "./config.ini";
require $_SERVER["DOCUMENT_ROOT"] . "/../cgi-data/config/front.ini";

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

// 日付
//$arr_post["date"] = date( "Y-m-d", mktime(  0,  0,  0, $arr_post["date"]["Month"], $arr_post["date"]["Day"], $arr_post["date"]["Year"] ) );

// タグ許可
$arr_post["comment"] = html_entity_decode( $arr_post["comment"] );

// 設定
$t_recruit = $arr_post;

//----------------------------------------
//  表示
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "recruit/";

// テンプレート設定
$smarty->assign( "t_recruit", $t_recruit );

// オプション配列
$smarty->assign( "OptionSalaryUnit" , $OptionSalaryUnit  );
$smarty->assign( 'OptionEmployment' , $OptionEmployment  );
$smarty->assign( 'OptionRecruit'    , $OptionRecruit     );



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
