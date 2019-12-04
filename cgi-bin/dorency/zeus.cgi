#!/usr/bin/perl

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

#パラメータ情報による動作条件の制御を行う。

use strict;
use KCatch;

#設定情報の変数の初期化を行う。

#基本設定情報。
use vars qw($script %in $base_imgdir $page_imgdir $sendmail $location $kind $page_name $title $mode $error);
#個別設定情報。
use vars qw($http_referer $url $param @param);
#サイトサーバー設定情報。
use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
#ショッピングカート設定情報の初期化を行う。
use vars qw(@cart $crt1 $crt2 $crt3 $crt4 $crt5 $crt6 $crt7 $crt8 $crt9 $crt10 $crt11 $crt12 $crt13 $crt14 $crt15 $crt16 $crt17 $crt18 $crt19 $crt20 $crt21 $crt22 $crt23 $crt24 $crt25 $crt26 $crt27 $crt28 $crt29 $crt30 $crt31 $crt32);

#ライブラリの読み込み。
require './pl/jcode.pl';
require './pl/common.pl';

#サイトサーバー設定情報の読み込み。
if(-e "./root.ini"){
	open(IN,"./root.ini");
	flock(IN,1);		#ファイルを読み出しロック。
	@root = <IN>;
	flock(IN,8);		# ロック解除。
	close(IN);
	($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);
}else{
	$error = 99;
}

#ショッピングカート設定情報ファイル読み込み。
open(IN,"$rootdir/page_design/story/cart/cart.dat");
flock(IN,1);		#ファイルを読み出しロック。
@cart = <IN>;
flock(IN,8);		# ロック解除。
close(IN);
($crt1,$crt2,$crt3,$crt4,$crt5,$crt6,$crt7,$crt8,$crt9,$crt10,$crt11,$crt12,$crt13,$crt14,$crt15,$crt16,$crt17,$crt18,$crt19,$crt20,$crt21,$crt22,$crt23,$crt24,$crt25,$crt26,$crt27,$crt28,$crt29,$crt30,$crt31,$crt32) = split(/,/,$cart[0]);

#エラー画面表示。
if($error eq "99"){
	&errorSystem;
	exit;
}

#デコード処理。
&decode;

#リンク元のURL取得。
$http_referer = $ENV{'HTTP_REFERER'};

#リンク元のURLを分割。
($url,$param) = split(/\?/,$http_referer);
(@param)      = split(/\&/,$param);

if($in{'settlement'} eq ""){

	if($param[0] =~ /^category/ 
	&& $param[1] =~ /^page/ 
	&& $param[2] =~ /^cart/ 
	&& $param[3] =~ /^money/ 
	&& $param[4] =~ /^usrmail/ ){

print"Content-type: text/html\n\n";
print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="refresh" content="1;url=./zeus.cgi">
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Pragma" content="no-cache">
<meta name="robots" content="noindex,nofollow">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>リダイレクト処理</title>
<script Language="JavaScript">
<!--
location.href = "./zeus.cgi?category=$in{'category'}&page=$in{'page'}&cart=$in{'cart'}&money=$in{'money'}&usrmail=$in{'usrmail'}&settlement=go";
// -->
</script>
<body>
しばらく、お待ちください。
</body>
</html>
EOM

	}else{

print"Content-type: text/html\n\n";
print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Pragma" content="no-cache">
<meta name="robots" content="noindex,nofollow">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>不正アクセス</title>
</head>
<body>
<div align="center">
不正アクセスです<br><br>
</div>
</body>
</html>
EOM

	}

}elsif($in{'settlement'} eq "go"){

	if($in{'category'} ne "" 
	&& $in{'page'}     ne "" 
	&& $in{'cart'}     ne "" 
	&& $in{'money'}    ne "" 
	&& $in{'usrmail'}  ne "" ){

print"Content-type: text/html\n\n";
print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="refresh" content="1;url=./zeus.cgi">
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Pragma" content="no-cache">
<meta name="robots" content="noindex,nofollow">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>リダイレクト処理</title>
<script language="JavaScript">
<!--

function send(){
	document.myFORM.submit();
}

var Mac = navigator.userAgent.indexOf("Mac") != -1 ? true : false;

function mdown(e){
	if(navigator.appName == "Microsoft Internet Explorer"){
		if (event.button == 2 || (Mac && (event.ctrlKey || event.keyCode == 91))){
			alert("コンテクストメニューは利用できません。");
			return(false);
		}
	}else if(navigator.appName == "Netscape"){
		if(e.which == 3 || e.modifiers == 2 || e.ctrlKey || e.which == 85){
			alert("コンテクストメニューは利用できません");
			return false;
		}
	}
}

function noright(){
	alert("コンテクストメニューは利用できません。");
	return false;
}

document.oncontextmenu = noright;

if(document.all && (Mac || ! document.getElementById)){
	document.onmousedown = mdown;
	document.onkeydown   = mdown;
}else if(document.layers){
	window.captureEvents(Event.MOUSEDOWN | Event.modifiers | Event.KEYDOWN);
	window.onmousedown = mdown;
	window.onkeydown   = mdown;
}else if(navigator.userAgent.indexOf("Netscape6")!=-1){
	document.onmouseup = mdown;
	document.onkeydown = mdown;
}

//-->
</script>
</head>
<body onload="javaScript:send()">
<div align="center">
<noscript>決済を行うためにはJavaScriptを利用\可\能\にしてください。</noscript><br>
<form action="https://linkpt.cardservice.co.jp/cgi-bin/order.cgi?orders" method="post" enctype="x-www-form-encoded" target="_top" name="myFORM" style="margin-bottom:0">
<input type="hidden" name="send" value="mall">
<input type="hidden" name="custom" value="yes">
<input type="hidden" name="clientip" value="$crt25">
<input type="hidden" name="money" value="$in{'money'}">
<input type="hidden" name="usrmail" value="$in{'usrmail'}">
</form>
</div>
</body>
</html>
EOM

	}else{

print"Content-type: text/html\n\n";
print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Pragma" content="no-cache">
<meta name="robots" content="noindex,nofollow">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>不正アクセス</title>
</head>
<body>
<div align="center">
不正アクセスです<br>正しい情報が取得できませんでした<br><br>
</div>
</body>
</html>
EOM

	}

}else{

print"Content-type: text/html\n\n";
print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Pragma" content="no-cache">
<meta name="robots" content="noindex,nofollow">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>リダイレクト処理</title>
</head>
<body>
<div align="center">
<noscript>決済を行うためにはJavaScriptを利用\可\能\にしてください。</noscript><br><br>
</div>
</body>
</html>
EOM

}

exit;
