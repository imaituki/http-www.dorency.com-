<?php
//-------------------------------------------------------------------
// 作成日： 2019/03/26
// 作成者： 牧
// 内  容： 中途採用募集要項 一括表示切替
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  表示切替
//----------------------------------------
// 操作クラス
$objManage = new DB_manage( _DNS );
$objBase = new AD_base( $objManage, $_ARR_IMAGE );

// トランザクション
$objBase->_DBconn->StartTrans();

// 表示切り替え
$res = $objBase->changeDisplay( $arr_post["id"], $arr_post["display_flg"] );

// ロールバック
if( $res == false ) {
	$objBase->_DBconn->RollbackTrans();
}

// コミット
$objBase->_DBconn->CompleteTrans();

// クラス削除
unset( $objManage );
unset( $objBase );

// 戻り値
if( $res == false ) {
	echo json_encode( array( "result" => "false", "message" => "表示切り替えに失敗しました。<br />" ) );
} else {
	echo json_encode( array( "result" => "true", "message" => "表示切り替え完了しました。<br />" ) );
}

?>
