##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2009 SUNFIRST.INC ALL RIGHTS RESERVED.
#
# ソフトウェア使用許諾契約
#
# [SITEUP-SYSTEM](以下[本ソフトウェア]と記載)に関する著作権等の知的財産権は、
# サンファースト株式会社(以下[弊社]と記載)に帰属し、
# 日本の著作権法その他関連して適用される法律等によって保護されています。
#
# [本ソフトウェア]は実行ファイルだけでなく、
# ユーザデータやヘルプも含む全ての構成ファイルを表します。
#
# お客様は、ソフトウェア使用許諾契約(以下[契約]と記載)の条項に従って、
# [本ソフトウェア]を日本国内で使用する、非独占的な権利を[契約]に基づき取得します。
#
# [契約]に明示的に許諾されている場合を除いて、
# [本ソフトウェア]の使用、全部又は一部を複製、改変等は出来ません。
# [契約]に明示的に許諾されている、[本ソフトウェア]を複製する場合には、
# [本ソフトウェア]に付されている著作権表示及び、その他の権利表示も同時に複製するものとします。
#
# [本ソフトウェア]及び関連資料に付されている、
# 著作権表示及びその他の権利表示を除去することは出来ません。
#
# [契約]が終了したときは、直ちに[本ソフトウェア]及びその全ての複製物並びに関連資料を
# 破棄するものとします。
#
# [弊社]及び、[本ソフトウェア]を配布する全ての者は、[契約]に同意をしていた場合でも、
# [本ソフトウェア]を個人利用・社内利用・営利目的・非営利目的を問わず、
# 全部又は一部を複製、改変等を行った場合の使用によって生じたあらゆる損害について、
# 如何なる責任も負いません。
# [弊社]及び、[本ソフトウェア]を配布する全ての者は、
# そのような損害が発生する可能性について、事前に知らされていた場合でも同様です。
#
# ※以上はインストールした際に表示される「ソフトウェア使用許諾契約書」を抜粋、追記したものです。
#
##################################################
##################################################
# header
# HTMLヘッダー出力。
##################################################
sub header{

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード１」
	if($ppt10 ne ""){push(@keyword,$ppt10);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード２」
	if($ppt11 ne ""){push(@keyword,$ppt11);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード３」
	if($ppt12 ne ""){push(@keyword,$ppt12);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード４」
	if($ppt13 ne ""){push(@keyword,$ppt13);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード５」
	if($ppt14 ne ""){push(@keyword,$ppt14);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード６」
	if($ppt15 ne ""){push(@keyword,$ppt15);}

	#ロボット検索対応（metaタグ）
	if ($#keyword > 0){
		$metaKeyword .= "<meta name=\"keywords\" content=\"";
		for($i = 0 ; $i <= $#keyword ; $i++){
			if($#keyword == $i){
				$metaKeyword .= $keyword[$i];
			}else{
				$metaKeyword .= $keyword[$i];
				$metaKeyword .= ",";
			}
		}
		$metaKeyword .= "\">";
	}

	#改行「<br>」を削除（サイト全体プロパティ設定情報「property.dat：ページプロパティ部:詳細」）
	if($ppt16 ne ""){
		$ppt16 =~ s/<br>//g;
		$metaDescription = "<meta name=\"description\" content=\"$ppt16\">";
	}

# 変数名説明。
#
# $metaKeyword
# サイトキーワード
# サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード１～６」
#
# $ppt16
# サイト説明文
# サイト全体プロパティ設定情報「property.dat：ページプロパティ部:詳細」
#
# $title
# タイトル
# トップページ → サイト全体プロパティ設定情報「property.dat：ページプロパティ部:タイトル」
# 各ページ → サイト内ページ情報「page.dat：カテゴリー(1～5)ページ(1～6)ページ名」

print"Content-type: text/html\n";

	if($in{'view'} eq "payment_nicos"){
		print"Set-Cookie: NAME=COMMODITY; expires=Thu, 01-Jan-1970 00:00:00 GMT;\n";
	}

print"\n";

print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta name="generator" content="SITEUP SYSTEM ver1.83.10">
EOM

	if($metaKeyword ne ""){
		print"$metaKeyword\n";
	}

	if($metaDescription ne ""){
		print"$metaDescription\n";
	}

print<<"EOM";
<title>$title</title>
EOM

	if($location eq "up"){

		my $new_html_address = "";

		if($rls15 eq "on" && $rls16 ne "" && $kind eq "フォーム1"){

			$new_html_address = $rls16;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "商品案内1" && (($in{'ask'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "一覧に戻る") || ($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "商品案内2" && (($in{'detail'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($crt42 eq "on" && $crt43 ne "" && ($in{'cart'} eq "order1" || $in{'cart'} eq "order2" || $in{'cart'} eq "order3" || $in{'cart'} eq "order4" || $in{'cart'} eq "order5" || $in{'cart'} eq "order6" || $in{'cart'} eq "add" || $in{'cart'} eq "del")){

			$new_html_address = $crt43;

		}else{

			$new_html_address = $html_address;

		}

print<<"EOM";
<link rel="stylesheet" type="text/css" href="$new_html_address/common.css" media="all">
<script language="javascript" type="text/javascript" src="$new_html_address/common.js"></script>
EOM

	}else{

print<<"EOM";
<STYLE TYPE="text/css">
<!--
a:hover{color:$ppt8}
-->
</STYLE>
<script language="javascript" type="text/javascript" src="http://localhost:11213/$site_folder/up/common.js"></script>
EOM

	}

print<<"EOM";
</head>
<noscript>JavaScriptは使えない状態です・・・</noscript>
EOM

}
##################################################
# header_shop
# HTMLヘッダー(ショップ)出力。
##################################################
sub header_shop{

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード１」
	if($ppt10 ne ""){push(@keyword,$ppt10);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード２」
	if($ppt11 ne ""){push(@keyword,$ppt11);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード３」
	if($ppt12 ne ""){push(@keyword,$ppt12);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード４」
	if($ppt13 ne ""){push(@keyword,$ppt13);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード５」
	if($ppt14 ne ""){push(@keyword,$ppt14);}

	#サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード６」
	if($ppt15 ne ""){push(@keyword,$ppt15);}

	#ロボット検索対応（metaタグ）
	if ($#keyword > 0){
		$metaKeyword .= "<meta name=\"keywords\" content=\"";
		for($i = 0 ; $i <= $#keyword ; $i++){
			if($#keyword == $i){
				$metaKeyword .= $keyword[$i];
			}else{
				$metaKeyword .= $keyword[$i];
				$metaKeyword .= ",";
			}
		}
		$metaKeyword .= "\">";
	}

	#改行「<br>」を削除（サイト全体プロパティ設定情報「property.dat：ページプロパティ部:詳細」）
	if($ppt16 ne ""){
		$ppt16 =~ s/<br>//g;
		$metaDescription = "<meta name=\"description\" content=\"$ppt16\">";
	}

# 変数名説明。
#
# $metaKeyword
# サイトキーワード
# サイト全体プロパティ設定情報「property.dat：ページプロパティ部:キーワード１～６」
#
# $ppt16
# サイト説明文
# サイト全体プロパティ設定情報「property.dat：ページプロパティ部:詳細」
#
# $title
# トップページ → サイト全体プロパティ設定情報「property.dat：ページプロパティ部:タイトル」
# 各ページ → サイト内ページ情報「page.dat：カテゴリー(1～5)ページ(1～6)ページ名」

print"Content-type: text/html\n";
##########
	if($in{'cart'} eq "" && $kind eq "ショップ1"){
		&item_cookie_get;
	}elsif($in{'cart'} eq "detail" && $kind eq "ショップ1"){
	}elsif($in{'cart'} eq "search" && $kind eq "ショップ1"){
		&item_cookie_get;
##########
##########
	}elsif($in{'cart'} eq "" && $kind eq "ショップ2"){
		&item_cookie_get;
	}elsif($in{'cart'} eq "detail" && $kind eq "ショップ2"){
		&item_cookie_get;
	}elsif($in{'cart'} eq "search" && $kind eq "ショップ2"){
		&item_cookie_get;
##########
##########
	}elsif($in{'cart'} eq "payment"){
	}elsif($in{'cart'} eq "view"){
		&item_get;
	}elsif($in{'cart'} eq "select" && $kind eq "ショップ1"){
		if($in{'submit'} eq "入力画面に戻る"){
			&item_get;
		}else{
			&item_set;
		}
	}elsif($in{'cart'} eq "select" && $kind eq "ショップ2"){
		if($in{'submit'} eq "商品一覧に戻る"){
			&item_get;
		}elsif($in{'submit'} eq "入力画面に戻る"){
			&item_get;
		}else{
			&item_set;
		}
##########
##########
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "変更"){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq ""){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "削除"){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "一括削除"){
		&item_edit;
	}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq ""){
		&item_get;
	}elsif($in{'cart'} eq "order1" && $in{'submit'} eq "注文者入力画面に進む"){
		if($crt42 eq "on" && $crt43 ne ""){
			&item_get_ssl;
			&cart_user_cookie_get;
		}else{
			&item_get;
			&cart_user_cookie_get;
		}
	}elsif($in{'cart'} eq "order2" && $in{'back'} eq "選択商品一覧画面に戻る"){
		&item_get;
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "入力画面に戻る"){
		&item_get;
		&cart_user_cookie_get;
##########
####################
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_set;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文者入力画面に戻る" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文情報確認画面に進む" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
####################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "変更する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_cookie_get;
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "更新する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_set;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "user_edit"){
		&item_get;
		&cart_user_cookie_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "変更する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "更新する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "変更する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "更新する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "delivery_day_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "変更する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "更新する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "same" && $in{'type'} eq "message_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
####################
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "商品配送確認画面に戻る" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "上記内容で送信する" && $in{'address'} eq "same"){
		&item_get;
		&cart_user_get;
		
		#エラーじゃなければ商品情報削除
		if($#errorMsg == -1){
		&item_delete;
		}
		
####################
####################
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "配送先入力画面に進む" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_set;
		&delivery_cookie_get;
	}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "注文者入力画面に戻る" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
	}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "商品配送設定画面に進む" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "add" && $in{'submit'} eq "配送先を登録する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_set;
	}elsif($in{'cart'} eq "add" && $in{'submit'} eq "注文者を配送先に追加する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_set;
	}elsif($in{'cart'} eq "add" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_cookie_get;
	}elsif($in{'cart'} eq "del" && $in{'submit'} eq "削除" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_edit;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "配送先入力画面に戻る" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_cookie_get;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "商品配送確認画面に進む" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "商品配送設定画面に戻る" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "注文情報確認画面に進む" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
####################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "商品配送情報を変更する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "更新する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "変更する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_cookie_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "更新する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_set;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "user_edit"){
		&item_get;
		&cart_user_cookie_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "変更する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "更新する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "payment_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "変更する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "更新する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "delivery_day_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
##############################
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "変更する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "更新する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "入力画面に戻る" && $in{'address'} eq "other" && $in{'type'} eq "message_edit"){
		&item_get;
		&cart_user_get;
		&delivery_get;
##############################
####################
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "商品配送確認画面に戻る" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
	}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "上記内容で送信する" && $in{'address'} eq "other"){
		&item_get;
		&cart_user_get;
		&delivery_get;
		
		#エラーじゃなければ商品情報削除
		if($#errorMsg == -1){
		&item_delete;
		}
	}
####################
print"\n";

print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta name="generator" content="SITEUP SYSTEM ver1.83.10">
EOM

	if($metaKeyword ne ""){
		print"$metaKeyword\n";
	}

	if($metaDescription ne ""){
		print"$metaDescription\n";
	}

print<<"EOM";
<title>$title</title>
EOM

	if($location eq "up"){

		my $new_html_address = "";

		if($rls15 eq "on" && $rls16 ne "" && $kind eq "フォーム1"){

			$new_html_address = $rls16;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "商品案内1" && (($in{'ask'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "一覧に戻る") || ($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "商品案内2" && (($in{'detail'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "入力内容の確認") || ($in{'ask'} eq "mail"))){

			$new_html_address = $ask7;

		}elsif($crt42 eq "on" && $crt43 ne "" && ($in{'cart'} eq "order1" || $in{'cart'} eq "order2" || $in{'cart'} eq "order3" || $in{'cart'} eq "order4" || $in{'cart'} eq "order5" || $in{'cart'} eq "order6" || $in{'cart'} eq "add" || $in{'cart'} eq "del")){

			$new_html_address = $crt43;

		}else{

			$new_html_address = $html_address;

		}

print<<"EOM";
<link rel="stylesheet" type="text/css" href="$new_html_address/common.css" media="all">
<script language="javascript" type="text/javascript" src="$new_html_address/common.js"></script>
EOM

	}else{

print<<"EOM";
<STYLE TYPE="text/css">
<!--
a:hover{color:$ppt8}
-->
</STYLE>
<script language="javascript" type="text/javascript" src="http://localhost:11213/$site_folder/up/common.js"></script>
EOM

	}

print<<"EOM";
</head>
<noscript>JavaScriptは使えない状態です・・・</noscript>
EOM

}

1;
