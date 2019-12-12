<?php
//-------------------------------------------------------------------
// 作成日： 2019/11/01
// 作成者： 岡田
// 内  容： グループ会社 編集
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  編集データ取得
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objProduct = new AD_product( $objManage );

// データ取得
$_POST = $objProduct->GetIdRow( $arr_get["id"] );

if( !empty( $_POST["id_product"] ) ) {
	// 事業所取得
	$_POST["detail"] = $objProduct->GetSearchDetail( $_POST["id_product"] );
}
// クラス削除
unset( $objManage      );
unset( $objProduct );

//----------------------------------------
//  表示
//----------------------------------------
if( !empty( $_POST["id_product"] ) ) {


	// smarty設定
	$smarty = new MySmarty("admin");
	$smarty->compile_dir .= "product/";

	// テンプレートに設定
	$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

	// オプション設定
	$smarty->assign( 'OptionProductCategory', $OptionProductCategory );

	// 表示
	$smarty->display( "edit.tpl" );

} else {

	// メッセージ保管
	$_SESSION["admin"][_CONTENTS_DIR]["message"]["ng"] = "データの取得に失敗しました。<br />";

	// 表示
	header( "Location: ./index.php" );

}

?>
