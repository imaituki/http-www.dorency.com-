<?php
//-------------------------------------------------------------------
// 作成日： 2019/03/26
// 作成者： 牧
// 内  容： 中途採用募集要項 ソート
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  ソート処理
//----------------------------------------
// 操作クラス
$objManage = new DB_manage( _DNS );
$objBase = new AD_base( $objManage, $_ARR_IMAGE );

// トランザクション
$objBase->_DBconn->StartTrans();

// ソート
$res = $objBase->sort( $arr_post["sort"], "id_base " );

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
	echo json_encode( array( "result" => "false", "message" => "並び順の変更に失敗しました。（F5ボタンを押して一度ページを更新してください）<br />" ) );
} else {
	echo json_encode( array( "result" => "true", "message" => "並び順の変更が完了しました。<br />" ) );
}
?>
