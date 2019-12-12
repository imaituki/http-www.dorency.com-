<?php
//----------------------------------------------------------------------------
// 作成日: 2019/06/18
// 作成者: 福嶋
// 内  容: エントリーフォーム操作クラス
//----------------------------------------------------------------------------

//-------------------------------------------------------
//  クラス
//-------------------------------------------------------
class FT_entry {

	//-------------------------------------------------------
	//  変数宣言
	//-------------------------------------------------------
	// XML操作クラス
	var $_FN_xml = null;

	// DB接続
	var $_DBconn = null;

	// 主テーブル
	var $_CtrTable   = "t_career_contact";
	var $_CtrTablePk = "id_career_contact";

	// コントロール機能（ログ用）
	var $_CtrLogName = "エントリーフォーム";

	//-------------------------------------------------------
	// 関数名: __construct
	// 引  数: $xmlPath : XMLパス
	// 戻り値: なし
	// 内  容: コンストラクタ
	//-------------------------------------------------------
	function __construct( $xmlPath = null, $dbconn = null ) {

		if( $xmlPath != null ){
			$this->_FN_xml = new FN_xml( $xmlPath );
		}

		// クラス宣言
		if( !empty( $dbconn ) ) {
			$this->_DBconn  = $dbconn;
		} else {
			$this->_DBconn  = new DB_manage( _DNS );
		}

	}


	//-------------------------------------------------------
	// 関数名: __destruct
	// 引  数: なし
	// 戻り値: なし
	// 内  容: デストラクタ
	//-------------------------------------------------------
	function __destruct() {

	}


	//-------------------------------------------------------
	// 関数名: convert
	// 引  数: $arrVal
	// 戻り値: データ変換
	// 内  容: データ変換を行う
	//-------------------------------------------------------
	function convert( $arrVal ) {

		// データ変換クラス宣言
		$objInputConvert = new FN_input_convert( $arrVal, "UTF-8" );

		// 変換エントリー
		$objInputConvert->entryConvert( "mail", array("ENC_KANA"), "a" );

		// 変換実行
		$objInputConvert->execConvertAll();

		// 戻り値
		return $objInputConvert->GetData();
	}


	//-------------------------------------------------------
	// 関数名: check
	// 引  数: $arrVal
	// 戻り値: エラーメッセージ
	// 内  容: データチェック
	//-------------------------------------------------------
	function check( &$arrVal, $mode = NULL ) {

		// チェッククラス宣言
		$objInputCheck = new FN_input_check( "UTF-8" );

		// $arrVal["birthday"] = implode( "/", $arrVal["birthday"] );

		// チェックエントリー
		if( $mode != "index" ){
			$objInputCheck->entryData( "基本情報", "id_career", $arrVal["id_career"], array( "CHECK_EMPTY", "CHECK_MIN_NUM" ), 1, null );
			$objInputCheck->entryData( "別募集", "hope_flg", $arrVal["hope_flg"], array( "CHECK_EMPTY", "CHECK_NUM" ), null, null );
		}else{
			$objInputCheck->entryData( "働き方", "type", $arrVal["type"], array( "CHECK_EMPTY", "CHECK_NUM" ), null, null );
		}
		$objInputCheck->entryData( "お名前", "name", $arrVal["name"], array( "CHECK_EMPTY", "CHECK_MIN_MAX_LEN" ), 0, 255 );
		$objInputCheck->entryData( "ふりがな", "ruby", $arrVal["ruby"], array( "CHECK_EMPTY", "CHECK_MIN_MAX_LEN" ), 0, 255 );
		$objInputCheck->entryData( "生年月日", "birthday", implode( "/", $arrVal["birthday"] ), array( "CHECK_EMPTY", "CHECK_DATE" ), null, null );
		$objInputCheck->entryData( "性別", "sex", $arrVal["sex"], array( "CHECK_MIN_MAX_LEN" ), 0, 255 );
		$objInputCheck->entryData( "住所", "address", $arrVal["address"], array( "CHECK_MIN_MAX_LEN" ), 0, 255 );
		$objInputCheck->entryData( "電話番号", "tel", $arrVal["tel"], array( "CHECK_EMPTY", "CHECK_TEL" ), null, null );
		$objInputCheck->entryData( "メールアドレス", "mail", $arrVal["mail"], array( "CHECK_EMPTY", "CHECK_MIN_MAX_LEN", "CHECK_MAIL" ), 0, 255 );
		$objInputCheck->entryData( "自由項目", "comment", $arrVal["comment"], array( "CHECK_MAX_LEN" ), null, 2000 );

		// チェック実行
		$res["ng"] = $objInputCheck->execCheckAll();

		// 生年月日が空のとき
		if( empty( $res["ng"]["birthday"] ) && empty( $arrVal["birthday"]["Year"] ) && empty( $arrVal["birthday"]["Month"] ) && empty( $arrVal["birthday"]["Day"] ) ){
			$res["ng"]["birthday"] = " 生年月日は必ず入力してください。";
		}

		// 戻り値
		return $res;

	}


	//-------------------------------------------------------
	// 関数名：insert
	// 引  数：$arrVal - 登録データ（ 'カラム名' => '値' ）
	//       ：$arrSql - 登録データ（ 'カラム名' => 'SQL' ）
	// 戻り値：なし
	// 内  容：中途採用募集要項データ登録
	//-------------------------------------------------------
	function insert( $arrVal, $arrSql = null ) {

		// 登録データの作成
		$arrVal = $this->_DBconn->arrayKeyMatchFecth( $arrVal, "/^[^\_]/" );

		$arrVal["birthday"] = implode( "-", $arrVal["birthday"] );
		$arrVal["entry_date"]  = date( "Y-m-d H:i:s" );
		$arrVal["update_date"] = date( "Y-m-d H:i:s" );

		// 登録
		$res = $this->_DBconn->insert( $this->_CtrTable, $arrVal, $arrSql );

		// 戻り値
		return $res;

	}


	//-------------------------------------------------------
	// 関数名: GetArrayXml
	// 引  数: なし
	// 戻り値: XML配列データ
	// 内  容: XML配列データを取得
	//-------------------------------------------------------
	function GetArrayXml() {
		return $this->_FN_xml->GetArrayXml( null, true, null );
	}


	//-------------------------------------------------------
	// 関数名: GetAttrXml
	// 引  数: $xml - xml配列データ
	// 戻り値: XML属性データ
	// 内  容: XML属性データを取得
	//-------------------------------------------------------
	function GetAttrXml( $xml ) {
		return $this->_FN_xml->GetAttrXml( $xml );
	}


	//-------------------------------------------------------
	// 関数名: GetDataXml
	// 引  数: $xml - xml配列データ
	// 戻り値: XMLデータ
	// 内  容: XMLデータを取得
	//-------------------------------------------------------
	function GetDataXml( $xml ) {
		return $this->_FN_xml->GetDataXml( $xml );
	}

}
?>
