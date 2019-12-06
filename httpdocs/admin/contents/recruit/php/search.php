<?php
//-------------------------------------------------------------------
// 作成日： 2019/10/07
// 作成者： 福嶋
// 内  容： 採用情報 検索
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  SESSION設定
//----------------------------------------
if( !empty( $arr_post["search_date_start"] ) ) {
	$arr_post["search_date_start"] = date( "Y/m/d", strtotime( $arr_post["search_date_start"] ) );
} else {
	$arr_post["search_date_start"] = null;
}
if( !empty( $arr_post["search_date_end"] ) ) {
	$arr_post["search_date_end"] = date( "Y/m/d", strtotime( $arr_post["search_date_end"] ) );
} else {
	$arr_post["search_date_end"] = null;
}
$_SESSION["admin"][_CONTENTS_DIR]["search"]["POST"] = $arr_post;


//----------------------------------------
//  データ一覧取得
//----------------------------------------
// 操作クラス
$objManage  = new DB_manage( _DNS );
$objRecruit = new AD_recruit( $objManage );

// データ取得
$t_recruit = $objRecruit->GetSearchList( $arr_post );

// クラス削除
unset( $objManage );
unset( $objRecruit   );


//----------------------------------------
//  表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= "recruit/";

// テンプレートに設定
$smarty->assign( "page_navi"    , $t_recruit["page"] );
$smarty->assign( "t_recruit", $t_recruit["data"] );
$smarty->assign( '_ARR_IMAGE'   , $_ARR_IMAGE            );

// オプション設定
$smarty->assign( 'OptionEmployment', $OptionEmployment );

// 表示
$smarty->display("list.tpl");

?>