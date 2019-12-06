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
$objBase = new AD_base( $objManage, $_ARR_IMAGE );

// データ変換
$arr_post = $objBase->convert( $arr_post );

// データチェック
$message = $objBase->check( $arr_post, 'update' );

// エラーチェック
if( empty( $message["ng"] ) ) {

	// トランザクション
	$objBase->_DBconn->StartTrans();

	$arr_detail = $arr_post["detail"];
	unset( $arr_post["detail"] );

	// 登録処理
	$res = $objBase->update( $arr_post );

	// ロールバック
	if( $res == false ) {
		$objBase->_DBconn->RollbackTrans();
		$message["ng"]["all"] = _ERRHEAD . "登録処理に失敗しました。（ブラウザの再起動を行って改善されない場合は、システム管理者へご連絡ください。）<br />";
	}else{
		if( !empty( $arr_detail ) && is_array( $arr_detail ) ){
			$objBase->_DBconn->delete( "t_base_parts", "id_base = " . $arr_post["id_base"] );

			foreach ( $arr_detail as $key => $val ) {
				$val["id_base"] = $arr_post["id_base"];
				// 登録処理
				$res2 = $objBase->insert_detail( $val );
			}
		}
		// ロールバック
		if( $res2 == false ) {
			$objBase->_DBconn->RollbackTrans();
			$message["ng"]["all"] = _ERRHEAD . "登録処理に失敗しました。（ブラウザの再起動を行って改善されない場合は、システム管理者へご連絡ください。）<br />";
		}
	}

	// コミット
	$objBase->_DBconn->CompleteTrans();

}

// クラス削除
unset( $objManage );
unset( $objBase   );

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
	$smarty->compile_dir .= "mst_base/";

	// テンプレートに設定
	$smarty->assign( "message"   , $message    );
	$smarty->assign( "arr_post"  , $arr_post   );
	$smarty->assign( '_ARR_IMAGE', $_ARR_IMAGE );

	// オプション設定
	$smarty->assign( 'OptionBaseCategory', $OptionBaseCategory );
	$smarty->assign( 'OptionOffice'       , $OptionOffice        );
	$smarty->assign( 'OptionDirector'     , $OptionDirector      );

	// 表示
	$smarty->display( "edit.tpl" );

}
?>
