<?php
//-------------------------------------------------------------------
// 作成日： 2019/11/01
// 作成者： 岡田
// 内  容： グループ会社 一括削除
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  削除処理
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objProduct = new AD_product( $objManage, $_ARR_IMAGE );

// トランザクション
$objProduct->_DBconn->StartTrans();

// 削除
$res = $objProduct->delete( $arr_post["id"] );

// ロールバック
if( $res == false ) {
	$objProduct->_DBconn->RollbackTrans();
}

// コミット
$objProduct->_DBconn->CompleteTrans();

// クラス削除
unset( $objManage );
unset( $objProduct   );

// 戻り値
if( $res == false ) {
	echo json_encode( array( "result" => "false", "message" => "削除するデータを選択してください。<br />" ) );
} else {
	echo json_encode( array( "result" => "true", "message" => "削除完了しました。<br />" ) );
}

?>
