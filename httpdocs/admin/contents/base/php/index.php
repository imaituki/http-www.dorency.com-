<?php
//-------------------------------------------------------------------
// 作成日： 2019/03/26
// 作成者： 牧
// 内  容： 中途採用募集要項 一覧表示
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  メッセージ取得
//----------------------------------------
// 取得
$message = ( isset( $_SESSION["admin"][_CONTENTS_DIR]["message"] ) ) ? $_SESSION["admin"][_CONTENTS_DIR]["message"] : null;

// クリア
unset( $_SESSION["admin"][_CONTENTS_DIR]["message"] );


//----------------------------------------
//  SESSION取得
//----------------------------------------
$arr_post = ( isset( $_SESSION["admin"][_CONTENTS_DIR]["search"]["POST"] ) ) ? $_SESSION["admin"][_CONTENTS_DIR]["search"]["POST"] : null;


//----------------------------------------
//  データ一覧取得
//----------------------------------------
// 操作クラス
$objManage = new DB_manage( _DNS );
$objBase   = new AD_base( $objManage, $_ARR_IMAGE );

// データ取得
$t_base = $objBase->GetSearchList( $arr_post );

// クラス削除
unset( $objManage );
unset( $objBase );

//----------------------------------------
// 表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= "base/";

// テンプレートに設定
$smarty->assign( "message"      , $message          );
$smarty->assign( "t_base"       , $t_base           );
$smarty->assign( '_ARR_IMAGE'   , $_ARR_IMAGE       );

// 表示
$smarty->display("index.tpl");
?>
