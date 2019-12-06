<?php
//-------------------------------------------------------------------
// 作成日： 2019/10/07
// 作成者： 福嶋
// 内  容： 採用情報 一括削除
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  削除処理
//----------------------------------------
// 操作クラス
$objManage  = new DB_manage( _DNS );
$objRecruit = new AD_recruit( $objManage, $_ARR_IMAGE );

// トランザクション
$objRecruit->_DBconn->StartTrans();

// 削除
$res = $objRecruit->delete( $arr_post["id"] );

// ロールバック
if( $res == false ) {
	$objRecruit->_DBconn->RollbackTrans();
}

// コミット
$objRecruit->_DBconn->CompleteTrans();

// クラス削除
unset( $objManage    );
unset( $objRecruit   );

// 戻り値
if( $res == false ) {
	echo json_encode( array( "result" => "false", "message" => "削除するデータを選択してください。<br />" ) );
} else {
	echo json_encode( array( "result" => "true", "message" => "削除完了しました。<br />" ) );
}

?>
