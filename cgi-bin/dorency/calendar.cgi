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

##################################################
# カレンダー表示。
##################################################

use strict;
use KCatch;
push(@INC, "./lib");

#ライブラリの読み込み。
require './pl/jcode.pl';

##################################################
# 基本設定情報。
##################################################

use vars qw($qu @in $key $val @qu %in);

##################################################
# タイムゾーンを日本時間へ。
##################################################

$ENV{'TZ'} = "JST-9";

##################################################
# 時間変数設定。
##################################################

my $nowtime = time;

##################################################
# パラメータ情報取得。
##################################################

&GetPara();

##################################################
print "Content-type: text/html; charset=Shift_JIS\n";
print "Pragma: no-cache\n";
print "Cache-Control: no-cache\n";
print "Expires: Thu, 01 Dec 1994 16:00:00 GMT\n\n";
print <<EOM;
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift_JIS">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="Thu, 01 Dec 1994 16:00:00 GMT">
<meta name="Description" content="SITEUP-SYSTEM">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>カレンダー</title>
<script type="text/javascript">
<!--
function setCalendar(year,mon,day) {

	var str = '配送希望日：' + year + '年' + mon + '月' + day + '日' + unescape("%0D%0A") + '配送希望時間帯：（）';
	self.opener.document.calendar.delivery_day.value = str;
	self.close();

}
//-->
</script>
<style type="text/css">
<!--
a:link {
	color:#000000;
}
a:visited {
	color:#000000;
}
a:hover {
	color:#000000;
}
a:active {
	color:#000000;
}
-->
</style>
</head>
<body>
EOM
	my $html = "";
	##################################################
	# 基本データ初期化
	##################################################
	my @monstr = ();
	my @yostr  = ();
	##################################################
	# 各種設定。
	##################################################
	my $ndstr               = "・";			# 日付なし欄に出す文字
	my $dwidth              = 25;			# 日付・曜日欄の幅
	my $dheight             = 25;			# 日付・曜日欄の高さ
	my $bgcolor             = "#666666";		# 全体の背景色

	my $closebgcolor        = "#FF3300";		# 閉じるの背景色

	my $yyyymmbgcolor       = "#999999";		# 年月の背景色
	my $yyyymmfncolor       = "#FFFFFF";		# 年月の文字色
	my $yyyymmfnsize        = "12pt";		# 年月の文字サイズ

	my $nichiyoubgcolor     = "#FF9966";		# 日曜の背景色
	my $nichiyoufncolor     = "#FFFFFF";		# 日曜の文字色
	my $nichiyoufnsize      = "12pt";		# 日曜の文字サイズ

	my $doyoubgcolor        = "#DDDDDD";		# 土曜の背景色
	my $doyoufncolor        = "#666666";		# 土曜の文字色
	my $doyoufnsize         = "12pt";		# 土曜の文字サイズ

	my $weekbgcolor         = "#EEEEEE";		# その他曜日の背景色
	my $weekfncolor         = "#666666";		# その他曜日の文字色
	my $weekfnsize          = "12pt";		# その他曜日の文字サイズ

	my $ndnichiyoubgcolor   = "#FFCC99";		# 日付なし欄の背景色（日曜）
	my $ndnichiyoufncolor   = "#FFCC99";		# 日付なし欄の文字色（日曜）
	my $ndnichiyoufnsize    = "12pt";		# 日付なし欄の文字サイズ（日曜）

	my $nddoyoubgcolor      = "#FFFFFF";		# 日付なし欄の背景色（土曜）
	my $nddoyoufncolor      = "#FFFFFF";		# 日付なし欄の文字色（土曜）
	my $nddoyoufnsize       = "12pt";		# 日付なし欄の文字サイズ（土曜）

	my $ndbgcolor           = "#FFFFFF";		# 日付なし欄の背景色（平日）
	my $ndfncolor           = "#FFFFFF";		# 日付なし欄の文字色（平日）
	my $ndfnsize            = "12pt";		# 日付なし欄の文字サイズ（平日）

	my $backnichiyoubgcolor = "#EFEFEF";		# 過去の背景色（日曜・休日）
	my $backnichiyoufncolor = "#666666";		# 過去の文字色（日曜・休日）
	my $backnichiyoufnsize  = "12pt";		# 過去の文字サイズ（日曜・休日）

	my $backdoyoubgcolor    = "#EFEFEF";		# 過去の背景色（土曜）
	my $backdoyoufncolor    = "#666666";		# 過去の文字色（土曜）
	my $backdoyoufnsize     = "12pt";		# 過去の文字サイズ（土曜）

	my $backbgcolor         = "#EFEFEF";		# 過去の背景色（平日）
	my $backfncolor         = "#666666";		# 過去の文字色（平日）
	my $backfnsize          = "12pt";		# 過去の文字サイズ（平日）

	my $tdbgcolor           = "#FFCC33";		# 本日の背景色
	my $tdfncolor           = "#FFFFFF";		# 本日の文字色
	my $tdfnsize            = "12pt";		# 本日の文字サイズ

	my $donichiyoubgcolor   = "#FFCC99";		# 背景色（日曜・休日）
	my $donichiyoufncolor   = "#666666";		# 文字色（日曜・休日）
	my $donichiyoufnsize    = "12pt";		# 文字サイズ（日曜・休日）

	my $dodoyoubgcolor      = "#FFFFFF";		# 背景色（土曜）
	my $dodoyoufncolor      = "#666666";		# 文字色（土曜）
	my $dodoyoufnsize       = "12pt";		# 文字サイズ（土曜）

	my $daybgcolor          = "#FFFFFF";		# 背景色（土曜）
	my $dayfncolor          = "#666666";		# 文字色（土曜）
	my $dayfnsize           = "12pt";		# 文字サイズ（土曜）
	##################################################
	# 月の表示文字
	##################################################
	$monstr[0]  = "1";			# 1月
	$monstr[1]  = "2";			# 2月
	$monstr[2]  = "3";			# 3月
	$monstr[3]  = "4";			# 4月
	$monstr[4]  = "5";			# 5月
	$monstr[5]  = "6";			# 6月
	$monstr[6]  = "7";			# 7月
	$monstr[7]  = "8";			# 8月
	$monstr[8]  = "9";			# 9月
	$monstr[9]  = "10";			# 10月
	$monstr[10] = "11";			# 11月
	$monstr[11] = "12";			# 12月
	##################################################
	# 曜日の表示文字
	##################################################
	$yostr[0] = "日";			# 日曜
	$yostr[1] = "月";			# 月曜
	$yostr[2] = "火";			# 火曜
	$yostr[3] = "水";			# 水曜
	$yostr[4] = "木";			# 木曜
	$yostr[5] = "金";			# 金曜
	$yostr[6] = "土";			# 土曜
	##################################################
	# パラメータセット
	##################################################
	my $test      = $in{'mode'};		# 1:testmode on
	my $testyear  = $in{'yyyy'};		# year for test
	my $testmonth = $in{'mm'};		# month for test
	my $testday   = '';			# day for test
	##################################################
	# 本日データ取得
	##################################################
	my($sec_data,$min_data,$hour_data,$mday_data,$mon_data,$year_data,$wday_data,$dummy,$dummy) = localtime($nowtime);
	my $nowyear  = $year_data + 1900;
	my $nowmonth = $mon_data + 1;
	my $nowtoday = $mday_data;
	##################################################
	# 最終日セット
	##################################################
	my @maxday = (31,28,31,30,31,30,31,31,30,31,30,31);
	##################################################
	# パラメータから日付セット
	##################################################
	my $year  = "";
	my $month = "";
	my $today = "";
	if ($test == 1) {
		$year  = $testyear;
		$month = $testmonth;
		$today = $testday;
	} elsif ($test == 0) {
		$year  = $nowyear;
		$month = $nowmonth;
		$today = $nowtoday;
	}
	if (($year % 4 == 0 && $year % 100 != 0) || $year % 400 == 0) {
		$maxday[1]++;			# 閏年計算
	}
	my $yo1 = &getWeekDay($year,$month,1);
	##################################################
	# 各表示データ初期化
	##################################################
	my $flag   = 0;
	my $daycnt = 1;
	my $moncnt = 0;
	my $yasumi;
	my $syuku;
	my $furi;
	##################################################
	# ページング情報形成
	##################################################
	my $lastyyyy = 0;
	my $lastmm   = 0;
	my $nextyyyy = 0;
	my $nextmm   = 0;
	if($monstr[$month-1] == '1'){
		$lastyyyy = $year - 1;
		$lastmm   = 12;
		$nextyyyy = $year;
		$nextmm   = int($monstr[$month-1]) + 1;
	}elsif($monstr[$month-1] == '12'){
		$lastyyyy = $year;
		$lastmm   = int($monstr[$month-1]) - 1;
		$nextyyyy = $year + 1;
		$nextmm   = 1;
	}else{
		$lastyyyy = $year;
		$lastmm   = int($monstr[$month-1]) - 1;
		$nextyyyy = $year;
		$nextmm   = int($monstr[$month-1]) + 1;
	}
	##################################################
	# カレンダー形成
	##################################################
	$html .= "<br>\n";
	$html .= "<table summary=\"0\" border=\"0\" bgcolor=\"$bgcolor\" cellpadding=\"1\" cellspacing=\"1\" align=\"center\">\n";
	$html .= "<tr>\n";
	$html .= "<td align=\"center\" bgcolor=\"$yyyymmbgcolor\" height=\"$dheight\"><b><a href=\"calendar.cgi?mode=1&yyyy=$lastyyyy&mm=$lastmm\" style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;text-decoration:none;\">&lt;</a></b></td>\n";
	$html .= "<td align=\"center\" bgcolor=\"$yyyymmbgcolor\" colspan=\"4\" height=\"$dheight\"><b><span style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;\">$year年$monstr[$month-1]月</span></b></td>\n";
	$html .= "<td align=\"center\" bgcolor=\"$yyyymmbgcolor\" height=\"$dheight\"><b><a href=\"calendar.cgi?mode=1&yyyy=$nextyyyy&mm=$nextmm\" style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;text-decoration:none;\">&gt;</a></b></td>\n";
	$html .= "<td align=\"center\" bgcolor=\"$closebgcolor\" width=\"$dwidth\" height=\"$dheight\"><b><span onclick=\"window.close();\" style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;cursor:pointer;\" id=\"close\">×</span></b></td>\n";
	$html .= "</tr>\n";
	##################################################
	# 曜日欄
	##################################################
	$html .= "<tr>\n";

	for (my $yo = 0; $yo < 7; $yo++) {
		if ($yo == 0) {
			$html .= "<td align=\"center\" bgcolor=\"$nichiyoubgcolor\" width=\"$dwidth\" height=\"$dheight\"><span style=\"color:$nichiyoufncolor;font-size:$nichiyoufnsize;\">$yostr[$yo]</span></td>\n";
		} elsif ($yo == 6) {
			$html .= "<td align=\"center\" bgcolor=\"$doyoubgcolor\" width=\"$dwidth\" height=\"$dheight\"><span style=\"color:$doyoufncolor;font-size:$doyoufnsize;\">$yostr[$yo]</span></td>\n";
		} else {
			$html .= "<td align=\"center\" bgcolor=\"$weekbgcolor\" width=\"$dwidth\" height=\"$dheight\"><span style=\"color:$weekfncolor;font-size:$weekfnsize;\">$yostr[$yo]</span></td>\n";
		}
	}

	$html .= "</tr>\n";
	##################################################
	# 日付欄
	##################################################
	while ($flag < 2) {

		$html .= "<tr>\n";

		for (my $yo = 0; $yo < 7; $yo++) {

			$html .= "<td width=\"$dwidth\" height=\"$dheight\" align=\"center\"";

			if ($flag == 0 && $yo1 == $yo) {
				$flag = 1;									# 1日
			}

			if ($flag == 1) {									# 日付あり

				##################################################
				# 休み・祝日フラグ初期化
				##################################################
				$yasumi = 0;
				$syuku  = 0;
				##################################################
				# 月曜に関する処理 (Happy Mondayと振替休日)
				##################################################
				if ($yo == 1) {
					if ($furi == 1) {
						$yasumi = 1;
						$furi   = 0;
					}
					if (++$moncnt == 2) {							# 第2月曜
						if ($month == 1)  { $syuku = 1; }				# 1月 成人の日
						if ($month == 10) { $syuku = 1; }				# 10月 体育の日
					}
					if ($moncnt == 3) {							# 第3月曜
						if ($year >= 2003 && $month == 7) { $syuku = 1; }		# 7月 海の日 (2003～)
						if ($year >= 2003 && $month == 9) { $syuku = 1; }		# 9月 敬老の日 (2003～)
					}
				}
				##################################################
				# Happy Monday以外の祝日に関する処理
				##################################################
				if ($month == 1 && $daycnt == 1)  { $syuku = 1; }				# 1月 1日 元日
				if ($month == 2 && $daycnt == 11) { $syuku = 1; }				# 2月11日 建国記念の日
				if ($month == 3) {
					if ($daycnt == int(20.8431+0.242194*($year-1980))-int(($year-1980)/4)) {
						$syuku = 1;							# 春分の日
					}
				}
				if ($month == 4 && $daycnt == 29) { $syuku = 1; }				# 4月29日 みどりの日
				if ($month == 5 && $daycnt == 3)  { $syuku = 1; }				# 5月 3日 憲法記念日
				if ($month == 5 && $daycnt == 4)  { $syuku = 1; }				# 5月 4日 国民の休日
				if ($month == 5 && $daycnt == 5)  { $syuku = 1; }				# 5月 5日 こどもの日
				if ($month == 9) {
					if ($daycnt == int(23.2488+0.242194*($year-1980))-int(($year-1980)/4)) {
						$syuku = 1;							# 秋分の日
					}
				}
				if ($month == 11 && $daycnt == 3)  { $syuku = 1; }				# 11月 3日 文化の日
				if ($month == 11 && $daycnt == 23) { $syuku = 1; }				# 11月23日 勤労感謝の日
				if ($month == 12 && $daycnt == 23) { $syuku = 1; }				# 12月23日 天皇誕生日
				if ($year < 2003 && $month == 7 && $daycnt == 20) { $syuku = 1; }		# 7月20日 海の日 (～2002)
				if ($year < 2003 && $month == 9 && $daycnt == 15) { $syuku = 1; }		# 9月15日 敬老の日 (～2002)
				if ($syuku == 1) { $yasumi = 1; }
				if ($yo == 0) {
					$yasumi = 1;
					if ($syuku == 1) { $furi = 1; }
				}
				##################################################
				# 比較変数初期化
				##################################################
				my $mm1 = 0;
				if($in{'mm'} < 10){
					$mm1 = "0" . $in{'mm'};
				}else{
					$mm1 = $in{'mm'};
				}
				my $mm2 = 0;
				if($nowmonth < 10){
					$mm2 = "0" . $nowmonth;
				}else{
					$mm2 = $nowmonth;
				}
				my $day1 = 0;
				if($daycnt < 10){
					$day1 = "0" . $daycnt;
				}else{
					$day1 = $daycnt;
				}
				my $day2 = 0;
				if($nowtoday < 10){
					$day2 = "0" . $nowtoday;
				}else{
					$day2 = $nowtoday;
				}
				my $yyyymmdd1 = $in{'yyyy'} . "" . $mm1 . "" . $day1;
				my $yyyymmdd2 = $nowyear . "" . $mm2 . "" . $day2;
				##################################################
				# 背景色・文字色
				##################################################
				if(($test == 0 && $daycnt < $today) || ($test == 1 && int($yyyymmdd1) < int($yyyymmdd2))){

					if ($yasumi == 1) {																	# 過去(日曜・休日)
						$html .= "bgcolor=\"$backnichiyoubgcolor\">";
						$html .= "<span style=\"color:$backnichiyoufncolor;font-size:$backnichiyoufnsize;\">$daycnt</span>";
					} else {
						if ($yo == 6) {																	# 過去(土曜)
							$html .= "bgcolor=\"$backdoyoubgcolor\">";
							$html .= "<span style=\"color:$backdoyoufncolor;font-size:$backdoyoufnsize;\">$daycnt</span>";
						} else {																	# 過去(平日)
							$html .= "bgcolor=\"$backbgcolor\">";
							$html .= "<span style=\"color:$backfncolor;font-size:$backfnsize;\">$daycnt</span>";
						}
					}

				}else{

					if ($yasumi == 1) {
						if (($test == 0 && $daycnt == $today) || ($test == 1 && $in{'yyyy'} == $nowyear && $in{'mm'} == $nowmonth && $daycnt == $nowtoday)) {		# 本日
							$html .= "bgcolor=\"$tdbgcolor\">";
							$html .= "<span style=\"color:$tdfncolor;font-size:$tdfnsize;\">$daycnt</span>";
						} else {																	# 日曜・休日
							$html .= "bgcolor=\"$donichiyoubgcolor\">";
							$html .= "<span style=\"color:$donichiyoufncolor;font-size:$donichiyoufnsize;\"><span onclick=\"setCalendar($year,$monstr[$month-1],$daycnt);\" id=\"$year年$monstr[$month-1]月$daycnt日\" style=\"cursor:pointer\">$daycnt</span></span>";
						}
					} else {
						if ($yo == 6) {
							if (($test == 0 && $daycnt == $today) || ($test == 1 && $in{'yyyy'} == $nowyear && $in{'mm'} == $nowmonth && $daycnt == $nowtoday)) {	# 本日
								$html .= "bgcolor=\"$tdbgcolor\">";
								$html .= "<span style=\"color:$tdfncolor;font-size:$tdfnsize;\">$daycnt</span>";
							} else {																# 土曜
								$html .= "bgcolor=\"$dodoyoubgcolor\">";
								$html .= "<span style=\"color:$dodoyoufncolor;font-size:$dodoyoufnsize;\"><span onclick=\"setCalendar($year,$monstr[$month-1],$daycnt);\" id=\"$year年$monstr[$month-1]月$daycnt日\" style=\"cursor:pointer\">$daycnt</span></span>";
							}
						} else {
							if (($test == 0 && $daycnt == $today) || ($test == 1 && $in{'yyyy'} == $nowyear && $in{'mm'} == $nowmonth && $daycnt == $nowtoday)) {	# 本日
								$html .= "bgcolor=\"$tdbgcolor\">";
								$html .= "<span style=\"color:$tdfncolor;font-size:$tdfnsize;\">$daycnt</span>";
							} else {
								$html .= "bgcolor=\"$daybgcolor\">";
								$html .= "<span style=\"color:$dayfncolor;font-size:$dayfnsize;\"><span onclick=\"setCalendar($year,$monstr[$month-1],$daycnt);\" id=\"$year年$monstr[$month-1]月$daycnt日\" style=\"cursor:pointer\">$daycnt</span></span>";
							}
						}
					}
				}
				if (++$daycnt > $maxday[$month - 1]) {
					$flag = 2;								# 最終日
				}
				##################################################
			} else {										# 日付なし

				if ($yo == 0) {

					$html .= "bgcolor=\"$ndnichiyoubgcolor\">";
					$html .= "<span style=\"color:$ndnichiyoufncolor;font-size:$ndnichiyoufnsize;\">$ndstr</span>";

				} elsif ($yo == 6) {

					$html .= "bgcolor=\"$nddoyoubgcolor\">";
					$html .= "<span style=\"color:$nddoyoufncolor;font-size:$nddoyoufnsize;\">$ndstr</span>";

				} else {

					$html .= "bgcolor=\"$ndbgcolor\">";
					$html .= "<span style=\"color:$ndfncolor;font-size:$ndfnsize;\">$ndstr</span>";

				}

			}
			$html .= "</td>\n";
		}
		$html .= "</tr>\n";
	}
	$html .= "</table>\n";

print <<EOM;
$html
</body>
</html>
EOM
exit;

##################################################
# 曜日を取得。
##################################################
sub getWeekDay{

	my($year, $mon, $day, $flag) = @_;

	if($year == 1582){

		if($mon < 10){
			return -1;
		}elsif($mon == 10){
			if($day < 15){
				return -1;
			}
		}

	}elsif($year < 1582){
		return -1;
	}

	if($mon == 1 || $mon == 2){
		$year--;
		$mon += 12;
	}

	my $week = ($year + int($year/4) - int($year/100) + int($year/400) + int((13*$mon+8)/5) + $day) % 7;

	if($flag){
		my @map = ('日', '月', '火', '水', '木', '金', '土');
		return $map[$week];
	}else{
		return $week;
	}

}

##################################################
# 引数取得
##################################################
sub GetPara{

	my($encode) = @_;

	my($method) = $ENV{'REQUEST_METHOD'};

	local($qu,@in,$key,$val);

	#日本語コード変換 jcode.pl 読み込み
	require './pl/jcode.pl' if $encode;

	#パラメタ取得
	if($method eq 'GET'){
		$qu = $ENV{'QUERY_STRING'};
	}elsif($method eq 'POST'){
		read(STDIN, $qu, $ENV{'CONTENT_LENGTH'});
	}

	local(@qu) = split(/&/,$qu);

	foreach(@qu){

		tr/+/ /;

		($key,$val) = split(/=/);

		$key =~ s/%([A-Fa-f0-9][A-Fa-f0-9])/pack('c', hex($1))/ge;

		$val =~ s/%([A-Fa-f0-9][A-Fa-f0-9])/pack('c', hex($1))/ge;

		$val =~ s/\r\n/\n/g;

		jcode'convert(*key, $encode) if ($encode);

		jcode'convert(*val, $encode) if ($encode);

		$in{$key} = $val;

	}

}
