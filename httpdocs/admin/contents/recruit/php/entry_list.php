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
//  データ一覧取得
//----------------------------------------
// 操作クラス
$objManage = new DB_manage( _DNS );
$objRecruit = new AD_recruit( $objManage, $_ARR_IMAGE );

// データ取得
$t_recruit_contact = $objRecruit->GetSearchContactList( array( "search_id_recruit" => $arr_get["id"] ),array( "fetch" => _DB_FETCH_ALL ) );

// クラス削除
unset( $objManage );
unset( $objRecruit );

//----------------------------------------
// 表示
//----------------------------------------
// smarty設定
$smarty = new MySmarty("admin");
$smarty->compile_dir .= "recruit/";

// テンプレートに設定
$smarty->assign( "message"           , $message          );
$smarty->assign( "t_recruit_contact" , $t_recruit_contact );


// オプション配列
$smarty->assign( "OptionSalaryUnit" , $OptionSalaryUnit  );
$smarty->assign( 'OptionEmployment' , $OptionEmployment  );

// 表示
$smarty->display("entry_list.tpl");
?>
