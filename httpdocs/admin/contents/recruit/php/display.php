<?php
//-------------------------------------------------------------------
// 作成日： 2019/10/07
// 作成者： 福嶋
// 内  容： 採用情報 一括表示切替
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  表示切替
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objRecruit = new AD_recruit( $objManage );

// トランザクション
$objRecruit->_DBconn->StartTrans();

// 表示切り替え
$res = $objRecruit->changeDisplay( $arr_post["id"], $arr_post["display_flg"] );

// ロールバック
if( $res == false ) {
	$objRecruit->_DBconn->RollbackTrans();
}

// コミット
$objRecruit->_DBconn->CompleteTrans();

// クラス削除
unset( $objManage );
unset( $objRecruit   );

// 戻り値
if( $res == false ) {
	echo json_encode( array( "result" => "false", "message" => "表示切り替えに失敗しました。<br />" ) );
} else {
	echo json_encode( array( "result" => "true", "message" => "表示切り替え完了しました。<br />" ) );
}

?>
