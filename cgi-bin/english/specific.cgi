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
use vars qw($script %in $base_imgdir $page_imgdir $sendmail $location $admin $kind $page_name $title $mode $error);
#サイトサーバー設定情報。
use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
#カテゴリー設定情報。
use vars qw(@constraction $cnm0 $cnm1 $cnm2 $cnm3 $cnm4 $cnm5 $url0 $brs0 $url1 $brs1 $url2 $brs2 $url3 $brs3 $url4 $brs4 $url5 $brs5 $cat0 $cat1 $cat2 $cat3 $cat4 $cat5);
#サイト内ページ情報。
use vars qw(@page_kind $pnm00 $knm00 $pnm10 $knm10 $pnm11 $knm11 $pnm12 $knm12 $pnm13 $knm13 $pnm14 $knm14 $pnm15 $knm15 $pnm20 $knm20 $pnm21 $knm21 $pnm22 $knm22 $pnm23 $knm23 $pnm24 $knm24 $pnm25 $knm25 $pnm30 $knm30 $pnm31 $knm31 $pnm32 $knm32 $pnm33 $knm33 $pnm34 $knm34 $pnm35 $knm35 $pnm40 $knm40 $pnm41 $knm41 $pnm42 $knm42 $pnm43 $knm43 $pnm44 $knm44 $pnm45 $knm45 $pnm50 $knm50 $pnm51 $knm51 $pnm52 $knm52 $pnm53 $knm53 $pnm54 $knm54 $pnm55 $knm55);
#ページ対応URL情報。
use vars qw(@page_url $url10 $brs10 $url11 $brs11 $url12 $brs12 $url13 $brs13 $url14 $brs14 $url15 $brs15 $url20 $brs20 $url21 $brs21 $url22 $brs22 $url23 $brs23 $url24 $brs24 $url25 $brs25 $url30 $brs30 $url31 $brs31 $url32 $brs32 $url33 $brs33 $url34 $brs34 $url35 $brs35 $url40 $brs40 $url41 $brs41 $url42 $brs42 $url43 $brs43 $url44 $brs44 $url45 $brs45 $url50 $brs50 $url51 $brs51 $url52 $brs52 $url53 $brs53 $url54 $brs54 $url55 $brs55);
#ページ一時非表示情報。
use vars qw(@page_stop $ps10 $ps11 $ps12 $ps13 $ps14 $ps15 $ps20 $ps21 $ps22 $ps23 $ps24 $ps25 $ps30 $ps31 $ps32 $ps33 $ps34 $ps35 $ps40 $ps41 $ps42 $ps43 $ps44 $ps45 $ps50 $ps51 $ps52 $ps53 $ps54 $ps55);
#サイト全体プロパティ設定情報。
use vars qw(@property $ppt1 $ppt2 $ppt3 $ppt4 $ppt5 $ppt6 $ppt7 $ppt8 $ppt9 $ppt10 $ppt11 $ppt12 $ppt13 $ppt14 $ppt15 $ppt16 $ppt17);
#サイト全体ページレイアウト設定情報。
use vars qw(@all $all1 $all2 $all3 $all4 $all5 $all6 $all7 $all8 $all9);
#サイト全体ヘッダー設定情報。
use vars qw(@header $hdr1 $hdr2 $hdr3 $hdr4 $hdr5 $hdr6 $hdr7 $hdr8 $hdr9 $hdr10 $hdr11 $hdr12 $hdr13 $hdr14 $hdr15 $hdr16 $hdr17 $hdr18 $hdr19 $hdr20 $hdr21 $hdr22 $hdr23 $hdr24 $hdr25 $hdr26 $hdr27 $hdr28 $hdr29 $hdr30 $hdr31 $hdr32 $hdr33);
#ナビゲーション部設定情報。
use vars qw(@navigation $ngs1 $ngs2 $ngs3 $ngs4 $ngs5 $ngs6 $ngs7 $ngs8);
#メニューボタン設定情報「0番」。
use vars qw(@button0 $btn1_0 $btn2_0 $btn3_0 $btn4_0 $btn5_0 $btn6_0 $btn7_0 $btn8_0 $btn9_0 $btn10_0 $btn11_0 $btn12_0 $btn13_0 $btn14_0 $btn15_0 $btn16_0 $btn17_0 $btn18_0 $btn19_0 $btn20_0 $btn21_0 $btn22_0 $btn23_0 $btn24_0 $btn25_0 $btn26_0 $btn27_0 $btn28_0 $btn29_0 $btn30_0 $btn31_0 $btn32_0 $btn33_0 $btn34_0 $btn35_0 $btn36_0);
#メニューボタン設定情報「1番」。
use vars qw(@button1 $btn1_1 $btn2_1 $btn3_1 $btn4_1 $btn5_1 $btn6_1 $btn7_1 $btn8_1 $btn9_1 $btn10_1 $btn11_1 $btn12_1 $btn13_1 $btn14_1 $btn15_1 $btn16_1 $btn17_1 $btn18_1 $btn19_1 $btn20_1 $btn21_1 $btn22_1 $btn23_1 $btn24_1 $btn25_1 $btn26_1 $btn27_1 $btn28_1 $btn29_1 $btn30_1 $btn31_1 $btn32_1 $btn33_1 $btn34_1 $btn35_1 $btn36_1);
#メニューボタン設定情報「2番」。
use vars qw(@button2 $btn1_2 $btn2_2 $btn3_2 $btn4_2 $btn5_2 $btn6_2 $btn7_2 $btn8_2 $btn9_2 $btn10_2 $btn11_2 $btn12_2 $btn13_2 $btn14_2 $btn15_2 $btn16_2 $btn17_2 $btn18_2 $btn19_2 $btn20_2 $btn21_2 $btn22_2 $btn23_2 $btn24_2 $btn25_2 $btn26_2 $btn27_2 $btn28_2 $btn29_2 $btn30_2 $btn31_2 $btn32_2 $btn33_2 $btn34_2 $btn35_2 $btn36_2);
#メニューボタン設定情報「3番」。
use vars qw(@button3 $btn1_3 $btn2_3 $btn3_3 $btn4_3 $btn5_3 $btn6_3 $btn7_3 $btn8_3 $btn9_3 $btn10_3 $btn11_3 $btn12_3 $btn13_3 $btn14_3 $btn15_3 $btn16_3 $btn17_3 $btn18_3 $btn19_3 $btn20_3 $btn21_3 $btn22_3 $btn23_3 $btn24_3 $btn25_3 $btn26_3 $btn27_3 $btn28_3 $btn29_3 $btn30_3 $btn31_3 $btn32_3 $btn33_3 $btn34_3 $btn35_3 $btn36_3);
#メニューボタン設定情報「4番」。
use vars qw(@button4 $btn1_4 $btn2_4 $btn3_4 $btn4_4 $btn5_4 $btn6_4 $btn7_4 $btn8_4 $btn9_4 $btn10_4 $btn11_4 $btn12_4 $btn13_4 $btn14_4 $btn15_4 $btn16_4 $btn17_4 $btn18_4 $btn19_4 $btn20_4 $btn21_4 $btn22_4 $btn23_4 $btn24_4 $btn25_4 $btn26_4 $btn27_4 $btn28_4 $btn29_4 $btn30_4 $btn31_4 $btn32_4 $btn33_4 $btn34_4 $btn35_4 $btn36_4);
#メニューボタン設定情報「5番」。
use vars qw(@button5 $btn1_5 $btn2_5 $btn3_5 $btn4_5 $btn5_5 $btn6_5 $btn7_5 $btn8_5 $btn9_5 $btn10_5 $btn11_5 $btn12_5 $btn13_5 $btn14_5 $btn15_5 $btn16_5 $btn17_5 $btn18_5 $btn19_5 $btn20_5 $btn21_5 $btn22_5 $btn23_5 $btn24_5 $btn25_5 $btn26_5 $btn27_5 $btn28_5 $btn29_5 $btn30_5 $btn31_5 $btn32_5 $btn33_5 $btn34_5 $btn35_5 $btn36_5);
#ユーザー認証ページ情報。
use vars qw(@access $acs1 $acs2 $acs3 $acs4 $acs5 $acs6 $acs7 $acs8 $acs9 $acs10 $acs11 $acs12 $acs13 $acs14 $acs15 $acs16 $acs17 $acs18 $acs19 $acs20 $acs21 $acs22 $acs23 $acs24 $acs25 $acs26 $acs27 $acs28 $acs29 $acs30);
#ショッピングカートレイアウト設定情報。
use vars qw(@cartdesign $cds1 $cds2 $cds3 $cds4 $cds5 $cds6 $cds7 $cds8 $cds9 $cds10 $cds11 $cds12 $cds13 $cds14 $cds15 $cds16 $cds17 $cds18 $cds19 $cds20 $cds21 $cds22);
#ショッピングカート設定情報。
use vars qw(@cart $crt1 $crt2 $crt3 $crt4 $crt5 $crt6 $crt7 $crt8 $crt9 $crt10 $crt11 $crt12 $crt13 $crt14 $crt15 $crt16 $crt17 $crt18 $crt19 $crt20 $crt21 $crt22 $crt23 $crt24 $crt25 $crt26 $crt27 $crt28 $crt29 $crt30 $crt31 $crt32 $crt33 $crt34 $crt35 $crt36 $crt37 $crt38 $crt39 $crt40 $crt41 $crt42 $crt43 $crt44 $crt45);
#ショッピングカート通信販売情報。
use vars qw(@low $low1 $low2 $low3 $low4 $low5 $low6 $low7 $low8 $low9 $low10 $low11 $low12 $low13 $low14 $low15 $low16 $low17 $low18 $low19 $low20);
#ショッピングカート入力項目設定情報。
use vars qw(@cartinput $cri1 $cri2 $cri3 $cri4 $cri5 $cri6 $cri7 $cri8 $cri9 $cri10);
#問い合わせフォーム基本設定情報。
use vars qw(@ask $ask1 $ask2 $ask3 $ask4 $ask5 $ask6 $ask7 $ask8 $ask9 $ask10 $ask11 $ask12 $ask13 $ask14 $ask15 $ask16 $ask17 $ask18 $ask19 $ask20 $ask21);
#問い合わせフォームデザイン設定情報。
use vars qw(@askdesign $ads1 $ads2 $ads3 $ads4 $ads5 $ads6 $ads7 $ads8 $ads9 $ads10 $ads11 $ads12 $ads13 $ads14 $ads15 $ads16 $ads17 $ads18 $ads19 $ads20 $ads21 $ads22);
#問い合わせフォーム入力項目設定情報。
use vars qw(@askinput $ain1 $ain2 $ain3 $ain4 $ain5 $ain6 $ain7 $ain8 $ain9 $ain10 $ain11 $ain12 $ain13 $ain14);

#ページ別設定情報の変数の初期化を行う。

#ページレイアウト設定情報。
use vars qw(@page $pge1 $pge2 $pge3 $pge4 $pge5 $pge6 $pge7 $pge8);
#ページイメージ設定情報。
use vars qw(@image $pig1 $pig2 $pig3 $pig4 $pig5 $pig6 $pig7 $pig8 $pig9 $pig10 $pig11 $pig12 $pig13 $pig14 $pig15 $pig16 $pig17 $pig18 $pig19 $pig20 $pig21 $pig22 $pig23 $pig24 $pig25 $pig26 $pig27 $pig28 $pig29 $pig30 $pig31 $pig32 $pig33 $pig34);
#ページコメント設定情報。
use vars qw(@comment $pct1 $pct2 $pct3 $pct4 $pct5 $pct6 $pct7 $pct8 $pct9 $pct10 $pct11 $pct12 $pct13 $pct14 $pct15 $pct16 $pct17 $pct18 $pct19 $pct20 $pct21 $pct22 $pct23);
#記事領域レイアウト設定情報。
use vars qw(@story $pst1 $pst2 $pst3 $pst4 $pst5 $pst6 $pst7 $pst8 $pst9 $pst10 $pst11 $pst12 $pst13);
#記事形式規則設定情報。
use vars qw(@rules $rls1 $rls2 $rls3 $rls4 $rls5 $rls6 $rls7 $rls8 $rls9 $rls10 $rls11 $rls12 $rls13 $rls14 $rls15 $rls16 $rls17 $rls18 $rls19 $rls20 $rls21 $rls22 $rls23 $rls24 $rls25 $rls26 $rls27 $rls28 $rls29 $rls30 $rls31 $rls32 $rls33 $rls34 $rls35 $rls36 $rls37 $rls38 $rls39 $rls40);
#記事内容情報ファイル読み込み。
use vars qw(@storycomment);

#ライブラリの読み込み。
require './pl/jcode.pl';
require './pl/common.pl';
require './pl/file.pl';

#設定情報読み込み。
&fileRead;

#画像のディレクトリ設定。
$base_imgdir = "$imgdir/base";

#各変数初期化。
my ($t_cds6,$t_cds2,$t_cds2,$t_cds5,$t_cds3,$t_cds3,$t_cds4,$t_cds4,$t_cds1,$t_cds11,$t_cds10,$t_cds16,$t_cds15,$t_cds9,$t_cds8,$t1_font1,$t1_font2,$t_cds14,$t_cds13,$t2_font1,$t2_font2);

print"Content-type: text/html\n\n";

print<<"EOM";
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<title>特定商取引</title>
<style type="text/css">
<!--
a:hover{color:#FF0066}
//-->
</style>
</head>
<noscript>JavaScriptは使えない状態です・・・</noscript>
<body link="#0000FF" vlink="#990000">
EOM

#[table]を形成。
if($cds6 ne ""){$t_cds6 = " bgcolor=\"$cds6\"";}
if($cds2 ne ""){$t_cds2 = " border=\"$cds2\"";}
if($cds2 eq ""){$t_cds2 = " border=\"0\"";}
if($cds5 ne ""){$t_cds5 = " bordercolor=\"$cds5\"";}
if($cds3 ne ""){$t_cds3 = " cellspacing=\"$cds3\"";}
if($cds3 eq ""){$t_cds3 = " cellspacing=\"0\"";}
if($cds4 ne ""){$t_cds4 = " cellpadding=\"$cds4\"";}
if($cds4 eq ""){$t_cds4 = " cellpadding=\"0\"";}
if($cds1 ne ""){$t_cds1 = " width=\"$cds1\"";}

#[td]を形成。
if($cds11 ne ""){$t_cds11 = " bgcolor=\"$cds11\"";}
if($cds10 ne ""){$t_cds10 = " bordercolor=\"$cds10\"";}

if($cds16 ne ""){$t_cds16 = " bgcolor=\"$cds16\"";}
if($cds15 ne ""){$t_cds15 = " bordercolor=\"$cds15\"";}

#[font]を形成。
if($cds9 ne "")               {$t_cds9   = " size=\"$cds9\"";}
if($cds8 ne "")               {$t_cds8   = " color=\"$cds8\"";}
if($cds9 ne "" || $cds8 ne ""){$t1_font1 = "<font$t_cds9$t_cds8>";}
if($cds9 ne "" || $cds8 ne ""){$t1_font2 = "</font>";}

if($cds14 ne "")                {$t_cds14  = " size=\"$cds14\"";}
if($cds13 ne "")                {$t_cds13  = " color=\"$cds13\"";}
if($cds14 ne "" || $cds13 ne ""){$t2_font1 = "<font$t_cds14$t_cds13>";}
if($cds14 ne "" || $cds13 ne ""){$t2_font2 = "</font>";}

#販売主体を表示。
if($low1 ne "" || $low2 ne "" || $low3 ne ""){

print<<"EOM";
<table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
 <tr>
  <td colspan="2" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1販売主体について$t1_font2</td>
 </tr>
EOM

	#[販売業者]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1販売業者$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low1 ne ""){
		print"  $low1\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[運営責任者]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1運営責任者$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low2 ne ""){
		print"  $low2\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[所在地・連絡先]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1所在地・連絡先$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low3 ne ""){
		print"  $low3\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
</table>
<br>
EOM

}

#販売条件を表示。
if($low4 ne "" || $low5 ne "" || $low6 ne "" || $crt24 eq "on" 
	|| $low7 ne "" || $low8 ne "" || $low9 ne "" || $low10 ne "" 
	|| $low11 ne "" || $low12 ne "" || $low13 ne "" || $low14 ne "" || $low15 ne ""){

print<<"EOM";
<table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
 <tr>
  <td colspan="2" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1販売条件について$t1_font2</td>
 </tr>
EOM

	#[申し込み方法]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1申\し込み方法 $t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low4 ne ""){
		print"  $low4\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[販売価格]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1販売価格$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low5 ne ""){
		print"  $low5\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[お支払方法]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1お支払方法 $t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low6 ne ""){
		print"  $low6\n";
	}else{
		print"  &nbsp;\n";
	}

	#カード種別を表示。
	if($crt24 eq "on"){

print<<"EOM";
  <br><br>ZEUSクレジット決済システムがご利用になれます。$t2_font2
  <table border="0" cellpadding="1" cellspacing="1">
   <tr>
    <td><a href="http://www.cardservice.co.jp" target="_blank"><img src="$imgdir/zeus.gif" border="0" alt="ZEUSクレジット決済システム"></a></td>
EOM

		if($crt26 eq "on"){print"  <td><img src=\"$imgdir/visa.gif\" border=\"0\"></td>\n";}
		if($crt27 eq "on"){print"  <td><img src=\"$imgdir/master.gif\" border=\"0\"></td>\n";}
		if($crt28 eq "on"){print"  <td><img src=\"$imgdir/amex.gif\" border=\"0\"></td>\n";}
		if($crt29 eq "on"){print"  <td><img src=\"$imgdir/jcb.gif\" border=\"0\"></td>\n";}
		if($crt30 eq "on"){print"  <td><img src=\"$imgdir/diners.gif\" border=\"0\"></td>\n";}

print<<"EOM";
   </tr>
  </table>
EOM

	}

	if($crt33 eq "on" || $crt45 eq "on"){

print<<"EOM";
  <br><br>NICOSクレジット決済システムがご利用になれます。$t2_font2
  <table border="0" cellpadding="1" cellspacing="1">
   <tr>
    <td><a href="http://www.cr.mufg.jp/" target="_blank"><img src="$imgdir/ufj_nicosl.gif" border="0" alt="NICOSクレジット決済システム"></a></td>
   </tr>
  </table>
EOM

	}

print<<"EOM";
  </td>
 </tr>
EOM

	#[お届け時期]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1お届け時期$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low7 ne ""){
		print"  $low7\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[申し込み有効期限]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1申\し込み有効期限$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low8 ne ""){
		print"  $low8\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[販売数量の制限]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1販売数量の制限$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low9 ne ""){
		print"  $low9\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[返品と交換]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1返品と交換$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low10 ne ""){
		print"  $low10\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[付帯費用]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1付帯費用$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low11 ne ""){
		print"  $low11\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[資料請求]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1資料請求$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low12 ne ""){
		print"  $low12\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[消費税の扱い]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1消費税の扱い$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low13 ne ""){
		print"  $low13\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[商品保証]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1商品保証$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low14 ne ""){
		print"  $low14\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
EOM

	#[問い合わせ窓口]を表示。

print<<"EOM";
 <tr>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1問い合わせ窓口$t2_font2</td>
  <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

	if($low15 ne ""){
		print"  $low15\n";
	}else{
		print"  &nbsp;\n";
	}

print<<"EOM";
  $t2_font2</td>
 </tr>
</table>
<br>
EOM

}

print<<"EOM";
<table border="0" cellpadding="1" cellspacing="1" width="100%">
 <tr>
  <td align="center">
   <font size="-1">$ppt17</font>
  </td>
 </tr>
</table>
</body>
</html>
EOM

exit;
