<?php
//-------------------------------------------------------------------
// 作成日： 2019/10/07
// 作成者： 福嶋
// 内  容： 採用情報 ソート
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  ソート処理
//----------------------------------------
// 操作クラス
$objManage  = new DB_manage( _DNS );
$objRecruit = new AD_recruit( $objManage, $_ARR_IMAGE );

// トランザクション
$objRecruit->_DBconn->StartTrans();

// ソート
$res = $objRecruit->sort( $arr_post["sort"], "id_recruit" );

// ロールバック
if( $res == false ) {
	$objRecruit->_DBconn->RollbackTrans();
}

// コミット
$objRecruit->_DBconn->CompleteTrans();

// クラス削除
unset( $objManage );
unset( $objRecruit );

// 戻り値
if( $res == false ) {
	echo json_encode( array( "result" => "false", "message" => "並び順の変更に失敗しました。（F5ボタンを押して一度ページを更新してください）<br />" ) );
} else {
	echo json_encode( array( "result" => "true", "message" => "並び順の変更が完了しました。<br />" ) );
}
?>
