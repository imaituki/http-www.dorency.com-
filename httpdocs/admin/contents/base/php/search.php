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
$objManage      = new DB_manage( _DNS );
$objBase = new AD_base( $objManage );

// データ取得
$mst_base = $objBase->GetSearchList( $arr_post );

// クラス削除
unset( $objManage );
unset( $objBase   );


//----------------------------------------
//  表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= "base/";

// テンプレートに設定
$smarty->assign( "page_navi"    , $mst_base["page"] );
$smarty->assign( "mst_base"    , $mst_base["data"] );
$smarty->assign( '_ARR_IMAGE'   , $_ARR_IMAGE        );

// オプション設定
$smarty->assign( 'OptionBaseCategory', $OptionBaseCategory );
$smarty->assign( 'OptionOffice'       , $OptionOffice        );
$smarty->assign( 'OptionDirector'     , $OptionDirector      );

// 表示
$smarty->display("list.tpl");

?>
