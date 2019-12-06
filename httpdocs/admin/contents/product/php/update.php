<?php
//-------------------------------------------------------------------
// 作成日： 2019/11/01
// 作成者： 岡田
// 内  容： グループ会社 編集
//-------------------------------------------------------------------

//----------------------------------------
//  設定ファイル
//----------------------------------------
require "./config.ini";

//----------------------------------------
//  初期化
//----------------------------------------
$message = NULL;

//----------------------------------------
//  更新処理
//----------------------------------------
// 操作クラス
$objManage      = new DB_manage( _DNS );
$objProduct = new AD_product( $objManage, $_ARR_IMAGE );

// データ変換
$arr_post = $objProduct->convert( $arr_post );

// データチェック
$message = $objProduct->check( $arr_post, 'update' );

// エラーチェック
if( empty( $message["ng"] ) ) {

	// トランザクション
	$objProduct->_DBconn->StartTrans();

	$arr_detail = $arr_post["detail"];
	unset( $arr_post["detail"] );

	// 登録処理
	$res = $objProduct->update( $arr_post );

	// ロールバック
	if( $res == false ) {
		$objProduct->_DBconn->RollbackTrans();
		$message["ng"]["all"] = _ERRHEAD . "登録処理に失敗しました。（ブラウザの再起動を行って改善されない場合は、システム管理者へご連絡ください。）<br />";
	}else{
		if( !empty( $arr_detail ) && is_array( $arr_detail ) ){
			$objProduct->_DBconn->delete( "t_product_parts", "id_product = " . $arr_post["id_product"] );

			foreach ( $arr_detail as $key => $val ) {
				$val["id_product"] = $arr_post["id_product"];
				// 登録処理
				$res2 = $objProduct->insert_detail( $val );
			}
		}
		// ロールバック
		if( $res2 == false ) {
			$objProduct->_DBconn->RollbackTrans();
			$message["ng"]["all"] = _ERRHEAD . "登録処理に失敗しました。（ブラウザの再起動を行って改善されない場合は、システム管理者へご連絡ください。）<br />";
		}
	}

	// コミット
	$objProduct->_DBconn->CompleteTrans();

}

// クラス削除
unset( $objManage );
unset( $objProduct   );

//----------------------------------------
//  表示
//----------------------------------------
if( empty( $message["ng"] ) ) {

	// メッセージ保管
	$_SESSION["admin"][_CONTENTS_DIR]["message"]["ok"] = "更新が完了しました。<br />";

	// 表示
	header( "Location: ./index.php" );

} else {

	// 写真
	if( !empty($_ARR_IMAGE) && is_array($_ARR_IMAGE) ){
		foreach( $_ARR_IMAGE as $key => $val ) {
			$arr_post[$val["name"]] = $arr_post["_" . $val["name"]."_now"];
		}
	}

	// smarty設定
	$smarty = new MySmarty("admin");
	$smarty->compile_dir .= "mst_product/";

	// テンプレートに設定
	$smarty->assign( "message"   , $message    );
	$smarty->assign( "arr_post"  , $arr_post   );
	$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

	// オプション設定
	$smarty->assign( 'OptionProductCategory', $OptionProductCategory );
	$smarty->assign( 'OptionOffice'       , $OptionOffice        );
	$smarty->assign( 'OptionDirector'     , $OptionDirector      );

	// 表示
	$smarty->display( "edit.tpl" );

}
?>
