<?php
//-------------------------------------------------------------------
// 作成日： 2019/11/01
// 作成者： 岡田
// 内  容： グループ会社 ソート
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";


//----------------------------------------
//  ソート処理
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objProduct = new AD_product( $objManage, $_ARR_IMAGE );

// トランザクション
$objProduct->_DBconn->StartTrans();

// ソート
$res = $objProduct->sort( $arr_post["sort"], "id_product" );

// ロールバック
if( $res == false ) {
	$objProduct->_DBconn->RollbackTrans();
}

// コミット
$objProduct->_DBconn->CompleteTrans();

// クラス削除
unset( $objManage );
unset( $objProduct );

// 戻り値
if( $res == false ) {
	echo json_encode( array( "result" => "false", "message" => "並び順の変更に失敗しました。（F5ボタンを押して一度ページを更新してください）<br />" ) );
} else {
	echo json_encode( array( "result" => "true", "message" => "並び順の変更が完了しました。<br />" ) );
}
?>
