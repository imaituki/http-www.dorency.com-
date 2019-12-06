<?php
//-------------------------------------------------------------------
// 作成日： 2019/10/07
// 作成者： 福嶋
// 内  容： 採用情報 編集
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  編集データ取得
//----------------------------------------
// 操作クラス
$objManage  = new DB_manage( _DNS );
$objRecruit = new AD_recruit( $objManage );

// データ取得
$_POST = $objRecruit->GetIdRow( $arr_get["id"] );

// クラス削除
unset( $objManage      );
unset( $objRecruit );


//----------------------------------------
//  表示
//----------------------------------------
if( !empty( $_POST["id_recruit"] ) ) {

	// データ加工
	$_POST["display_start"] = ( !empty( $_POST["display_start"] ) ) ? date( "Y/m/d", strtotime( $_POST["display_start"] ) ) : NULL;
	$_POST["display_end"]   = ( !empty( $_POST["display_end"]   ) ) ? date( "Y/m/d", strtotime( $_POST["display_end"]   ) ) : NULL;

	// smarty設定
	$smarty = new MySmarty("admin");
	$smarty->compile_dir .= "recruit/";

	// テンプレートに設定
	$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

	// オプション設定
	$smarty->assign( 'OptionEmployment', $OptionEmployment );
	$smarty->assign( 'OptionSalaryUnit', $OptionSalaryUnit );

	// 表示
	$smarty->display( "edit.tpl" );

} else {

	// メッセージ保管
	$_SESSION["admin"][_CONTENTS_DIR]["message"]["ng"] = "データの取得に失敗しました。<br />";

	// 表示
	header( "Location: ./index.php" );

}

?>
