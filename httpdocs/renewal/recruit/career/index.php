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
$_HTML_HEADER["title"] = "中途採用";

// キーワード
$_HTML_HEADER["keyword"] = "";

// ディスクリプション
$_HTML_HEADER["description"] = "";

//----------------------------------------
//  データ取得
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS);
$objRecruit     = new FT_recruit( $objManage );

// 検索条件
$search["search_display_site"] = 2;
// お知らせ
$t_recruit  = $objRecruit->GetSearchList( $search );

// クラス削除
unset( $objRecruit       );
unset( $objManage        );


//----------------------------------------
//  smarty設定
//----------------------------------------
$smarty = new MySmarty("front");
$smarty->compile_dir .= "recruit/career/";

// テンプレートに設定
$smarty->assign( "t_recruit"    , $t_recruit );

// オプション設定
$smarty->assign( "OptionSalaryUnit" , $OptionSalaryUnit  );
$smarty->assign( 'OptionEmployment' , $OptionEmployment  );
$smarty->assign( 'OptionRecruit'    , $OptionRecruit     );


// 表示
$smarty->display("index.tpl");
?>
