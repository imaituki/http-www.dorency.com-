#!/usr/bin/perl

##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2009 SUNFIRST.INC ALL RIGHTS RESERVED.
#
# �\�t�g�E�F�A�g�p�����_��
#
# [SITEUP-SYSTEM](�ȉ�[�{�\�t�g�E�F�A]�ƋL��)�Ɋւ��钘�쌠���̒m�I���Y���́A
# �T���t�@�[�X�g�������(�ȉ�[����]�ƋL��)�ɋA�����A
# ���{�̒��쌠�@���̑��֘A���ēK�p�����@�����ɂ���ĕی삳��Ă��܂��B
#
# [�{�\�t�g�E�F�A]�͎��s�t�@�C�������łȂ��A
# ���[�U�f�[�^��w���v���܂ޑS�Ă̍\���t�@�C����\���܂��B
#
# ���q�l�́A�\�t�g�E�F�A�g�p�����_��(�ȉ�[�_��]�ƋL��)�̏����ɏ]���āA
# [�{�\�t�g�E�F�A]����{�����Ŏg�p����A��Ɛ�I�Ȍ�����[�_��]�Ɋ�Â��擾���܂��B
#
# [�_��]�ɖ����I�ɋ�������Ă���ꍇ�������āA
# [�{�\�t�g�E�F�A]�̎g�p�A�S�����͈ꕔ�𕡐��A���ϓ��͏o���܂���B
# [�_��]�ɖ����I�ɋ�������Ă���A[�{�\�t�g�E�F�A]�𕡐�����ꍇ�ɂ́A
# [�{�\�t�g�E�F�A]�ɕt����Ă��钘�쌠�\���y�сA���̑��̌����\���������ɕ���������̂Ƃ��܂��B
#
# [�{�\�t�g�E�F�A]�y�ъ֘A�����ɕt����Ă���A
# ���쌠�\���y�т��̑��̌����\�����������邱�Ƃ͏o���܂���B
#
# [�_��]���I�������Ƃ��́A������[�{�\�t�g�E�F�A]�y�т��̑S�Ă̕��������тɊ֘A������
# �j��������̂Ƃ��܂��B
#
# [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A[�_��]�ɓ��ӂ����Ă����ꍇ�ł��A
# [�{�\�t�g�E�F�A]���l���p�E�Г����p�E�c���ړI�E��c���ړI���킸�A
# �S�����͈ꕔ�𕡐��A���ϓ����s�����ꍇ�̎g�p�ɂ���Đ����������鑹�Q�ɂ��āA
# �@���Ȃ�ӔC�������܂���B
# [����]�y�сA[�{�\�t�g�E�F�A]��z�z����S�Ă̎҂́A
# ���̂悤�ȑ��Q����������\���ɂ��āA���O�ɒm�炳��Ă����ꍇ�ł����l�ł��B
#
# ���ȏ�̓C���X�g�[�������ۂɕ\�������u�\�t�g�E�F�A�g�p�����_�񏑁v�𔲐��A�ǋL�������̂ł��B
#
##################################################

##################################################
# �J�����_�[�\���B
##################################################

use strict;
use KCatch;
push(@INC, "./lib");

#���C�u�����̓ǂݍ��݁B
require './pl/jcode.pl';

##################################################
# ��{�ݒ���B
##################################################

use vars qw($qu @in $key $val @qu %in);

##################################################
# �^�C���]�[������{���ԂցB
##################################################

$ENV{'TZ'} = "JST-9";

##################################################
# ���ԕϐ��ݒ�B
##################################################

my $nowtime = time;

##################################################
# �p�����[�^���擾�B
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
<title>�J�����_�[</title>
<script type="text/javascript">
<!--
function setCalendar(year,mon,day) {

	var str = '�z����]���F' + year + '�N' + mon + '��' + day + '��' + unescape("%0D%0A") + '�z����]���ԑсF�i�j';
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
	# ��{�f�[�^������
	##################################################
	my @monstr = ();
	my @yostr  = ();
	##################################################
	# �e��ݒ�B
	##################################################
	my $ndstr               = "�E";			# ���t�Ȃ����ɏo������
	my $dwidth              = 25;			# ���t�E�j�����̕�
	my $dheight             = 25;			# ���t�E�j�����̍���
	my $bgcolor             = "#666666";		# �S�̂̔w�i�F

	my $closebgcolor        = "#FF3300";		# ����̔w�i�F

	my $yyyymmbgcolor       = "#999999";		# �N���̔w�i�F
	my $yyyymmfncolor       = "#FFFFFF";		# �N���̕����F
	my $yyyymmfnsize        = "12pt";		# �N���̕����T�C�Y

	my $nichiyoubgcolor     = "#FF9966";		# ���j�̔w�i�F
	my $nichiyoufncolor     = "#FFFFFF";		# ���j�̕����F
	my $nichiyoufnsize      = "12pt";		# ���j�̕����T�C�Y

	my $doyoubgcolor        = "#DDDDDD";		# �y�j�̔w�i�F
	my $doyoufncolor        = "#666666";		# �y�j�̕����F
	my $doyoufnsize         = "12pt";		# �y�j�̕����T�C�Y

	my $weekbgcolor         = "#EEEEEE";		# ���̑��j���̔w�i�F
	my $weekfncolor         = "#666666";		# ���̑��j���̕����F
	my $weekfnsize          = "12pt";		# ���̑��j���̕����T�C�Y

	my $ndnichiyoubgcolor   = "#FFCC99";		# ���t�Ȃ����̔w�i�F�i���j�j
	my $ndnichiyoufncolor   = "#FFCC99";		# ���t�Ȃ����̕����F�i���j�j
	my $ndnichiyoufnsize    = "12pt";		# ���t�Ȃ����̕����T�C�Y�i���j�j

	my $nddoyoubgcolor      = "#FFFFFF";		# ���t�Ȃ����̔w�i�F�i�y�j�j
	my $nddoyoufncolor      = "#FFFFFF";		# ���t�Ȃ����̕����F�i�y�j�j
	my $nddoyoufnsize       = "12pt";		# ���t�Ȃ����̕����T�C�Y�i�y�j�j

	my $ndbgcolor           = "#FFFFFF";		# ���t�Ȃ����̔w�i�F�i�����j
	my $ndfncolor           = "#FFFFFF";		# ���t�Ȃ����̕����F�i�����j
	my $ndfnsize            = "12pt";		# ���t�Ȃ����̕����T�C�Y�i�����j

	my $backnichiyoubgcolor = "#EFEFEF";		# �ߋ��̔w�i�F�i���j�E�x���j
	my $backnichiyoufncolor = "#666666";		# �ߋ��̕����F�i���j�E�x���j
	my $backnichiyoufnsize  = "12pt";		# �ߋ��̕����T�C�Y�i���j�E�x���j

	my $backdoyoubgcolor    = "#EFEFEF";		# �ߋ��̔w�i�F�i�y�j�j
	my $backdoyoufncolor    = "#666666";		# �ߋ��̕����F�i�y�j�j
	my $backdoyoufnsize     = "12pt";		# �ߋ��̕����T�C�Y�i�y�j�j

	my $backbgcolor         = "#EFEFEF";		# �ߋ��̔w�i�F�i�����j
	my $backfncolor         = "#666666";		# �ߋ��̕����F�i�����j
	my $backfnsize          = "12pt";		# �ߋ��̕����T�C�Y�i�����j

	my $tdbgcolor           = "#FFCC33";		# �{���̔w�i�F
	my $tdfncolor           = "#FFFFFF";		# �{���̕����F
	my $tdfnsize            = "12pt";		# �{���̕����T�C�Y

	my $donichiyoubgcolor   = "#FFCC99";		# �w�i�F�i���j�E�x���j
	my $donichiyoufncolor   = "#666666";		# �����F�i���j�E�x���j
	my $donichiyoufnsize    = "12pt";		# �����T�C�Y�i���j�E�x���j

	my $dodoyoubgcolor      = "#FFFFFF";		# �w�i�F�i�y�j�j
	my $dodoyoufncolor      = "#666666";		# �����F�i�y�j�j
	my $dodoyoufnsize       = "12pt";		# �����T�C�Y�i�y�j�j

	my $daybgcolor          = "#FFFFFF";		# �w�i�F�i�y�j�j
	my $dayfncolor          = "#666666";		# �����F�i�y�j�j
	my $dayfnsize           = "12pt";		# �����T�C�Y�i�y�j�j
	##################################################
	# ���̕\������
	##################################################
	$monstr[0]  = "1";			# 1��
	$monstr[1]  = "2";			# 2��
	$monstr[2]  = "3";			# 3��
	$monstr[3]  = "4";			# 4��
	$monstr[4]  = "5";			# 5��
	$monstr[5]  = "6";			# 6��
	$monstr[6]  = "7";			# 7��
	$monstr[7]  = "8";			# 8��
	$monstr[8]  = "9";			# 9��
	$monstr[9]  = "10";			# 10��
	$monstr[10] = "11";			# 11��
	$monstr[11] = "12";			# 12��
	##################################################
	# �j���̕\������
	##################################################
	$yostr[0] = "��";			# ���j
	$yostr[1] = "��";			# ���j
	$yostr[2] = "��";			# �Ηj
	$yostr[3] = "��";			# ���j
	$yostr[4] = "��";			# �ؗj
	$yostr[5] = "��";			# ���j
	$yostr[6] = "�y";			# �y�j
	##################################################
	# �p�����[�^�Z�b�g
	##################################################
	my $test      = $in{'mode'};		# 1:testmode on
	my $testyear  = $in{'yyyy'};		# year for test
	my $testmonth = $in{'mm'};		# month for test
	my $testday   = '';			# day for test
	##################################################
	# �{���f�[�^�擾
	##################################################
	my($sec_data,$min_data,$hour_data,$mday_data,$mon_data,$year_data,$wday_data,$dummy,$dummy) = localtime($nowtime);
	my $nowyear  = $year_data + 1900;
	my $nowmonth = $mon_data + 1;
	my $nowtoday = $mday_data;
	##################################################
	# �ŏI���Z�b�g
	##################################################
	my @maxday = (31,28,31,30,31,30,31,31,30,31,30,31);
	##################################################
	# �p�����[�^������t�Z�b�g
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
		$maxday[1]++;			# �[�N�v�Z
	}
	my $yo1 = &getWeekDay($year,$month,1);
	##################################################
	# �e�\���f�[�^������
	##################################################
	my $flag   = 0;
	my $daycnt = 1;
	my $moncnt = 0;
	my $yasumi;
	my $syuku;
	my $furi;
	##################################################
	# �y�[�W���O���`��
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
	# �J�����_�[�`��
	##################################################
	$html .= "<br>\n";
	$html .= "<table summary=\"0\" border=\"0\" bgcolor=\"$bgcolor\" cellpadding=\"1\" cellspacing=\"1\" align=\"center\">\n";
	$html .= "<tr>\n";
	$html .= "<td align=\"center\" bgcolor=\"$yyyymmbgcolor\" height=\"$dheight\"><b><a href=\"calendar.cgi?mode=1&yyyy=$lastyyyy&mm=$lastmm\" style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;text-decoration:none;\">&lt;</a></b></td>\n";
	$html .= "<td align=\"center\" bgcolor=\"$yyyymmbgcolor\" colspan=\"4\" height=\"$dheight\"><b><span style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;\">$year�N$monstr[$month-1]��</span></b></td>\n";
	$html .= "<td align=\"center\" bgcolor=\"$yyyymmbgcolor\" height=\"$dheight\"><b><a href=\"calendar.cgi?mode=1&yyyy=$nextyyyy&mm=$nextmm\" style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;text-decoration:none;\">&gt;</a></b></td>\n";
	$html .= "<td align=\"center\" bgcolor=\"$closebgcolor\" width=\"$dwidth\" height=\"$dheight\"><b><span onclick=\"window.close();\" style=\"color:$yyyymmfncolor;font-size:$yyyymmfnsize;cursor:pointer;\" id=\"close\">�~</span></b></td>\n";
	$html .= "</tr>\n";
	##################################################
	# �j����
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
	# ���t��
	##################################################
	while ($flag < 2) {

		$html .= "<tr>\n";

		for (my $yo = 0; $yo < 7; $yo++) {

			$html .= "<td width=\"$dwidth\" height=\"$dheight\" align=\"center\"";

			if ($flag == 0 && $yo1 == $yo) {
				$flag = 1;									# 1��
			}

			if ($flag == 1) {									# ���t����

				##################################################
				# �x�݁E�j���t���O������
				##################################################
				$yasumi = 0;
				$syuku  = 0;
				##################################################
				# ���j�Ɋւ��鏈�� (Happy Monday�ƐU�֋x��)
				##################################################
				if ($yo == 1) {
					if ($furi == 1) {
						$yasumi = 1;
						$furi   = 0;
					}
					if (++$moncnt == 2) {							# ��2���j
						if ($month == 1)  { $syuku = 1; }				# 1�� ���l�̓�
						if ($month == 10) { $syuku = 1; }				# 10�� �̈�̓�
					}
					if ($moncnt == 3) {							# ��3���j
						if ($year >= 2003 && $month == 7) { $syuku = 1; }		# 7�� �C�̓� (2003�`)
						if ($year >= 2003 && $month == 9) { $syuku = 1; }		# 9�� �h�V�̓� (2003�`)
					}
				}
				##################################################
				# Happy Monday�ȊO�̏j���Ɋւ��鏈��
				##################################################
				if ($month == 1 && $daycnt == 1)  { $syuku = 1; }				# 1�� 1�� ����
				if ($month == 2 && $daycnt == 11) { $syuku = 1; }				# 2��11�� �����L�O�̓�
				if ($month == 3) {
					if ($daycnt == int(20.8431+0.242194*($year-1980))-int(($year-1980)/4)) {
						$syuku = 1;							# �t���̓�
					}
				}
				if ($month == 4 && $daycnt == 29) { $syuku = 1; }				# 4��29�� �݂ǂ�̓�
				if ($month == 5 && $daycnt == 3)  { $syuku = 1; }				# 5�� 3�� ���@�L�O��
				if ($month == 5 && $daycnt == 4)  { $syuku = 1; }				# 5�� 4�� �����̋x��
				if ($month == 5 && $daycnt == 5)  { $syuku = 1; }				# 5�� 5�� ���ǂ��̓�
				if ($month == 9) {
					if ($daycnt == int(23.2488+0.242194*($year-1980))-int(($year-1980)/4)) {
						$syuku = 1;							# �H���̓�
					}
				}
				if ($month == 11 && $daycnt == 3)  { $syuku = 1; }				# 11�� 3�� �����̓�
				if ($month == 11 && $daycnt == 23) { $syuku = 1; }				# 11��23�� �ΘJ���ӂ̓�
				if ($month == 12 && $daycnt == 23) { $syuku = 1; }				# 12��23�� �V�c�a����
				if ($year < 2003 && $month == 7 && $daycnt == 20) { $syuku = 1; }		# 7��20�� �C�̓� (�`2002)
				if ($year < 2003 && $month == 9 && $daycnt == 15) { $syuku = 1; }		# 9��15�� �h�V�̓� (�`2002)
				if ($syuku == 1) { $yasumi = 1; }
				if ($yo == 0) {
					$yasumi = 1;
					if ($syuku == 1) { $furi = 1; }
				}
				##################################################
				# ��r�ϐ�������
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
				# �w�i�F�E�����F
				##################################################
				if(($test == 0 && $daycnt < $today) || ($test == 1 && int($yyyymmdd1) < int($yyyymmdd2))){

					if ($yasumi == 1) {																	# �ߋ�(���j�E�x��)
						$html .= "bgcolor=\"$backnichiyoubgcolor\">";
						$html .= "<span style=\"color:$backnichiyoufncolor;font-size:$backnichiyoufnsize;\">$daycnt</span>";
					} else {
						if ($yo == 6) {																	# �ߋ�(�y�j)
							$html .= "bgcolor=\"$backdoyoubgcolor\">";
							$html .= "<span style=\"color:$backdoyoufncolor;font-size:$backdoyoufnsize;\">$daycnt</span>";
						} else {																	# �ߋ�(����)
							$html .= "bgcolor=\"$backbgcolor\">";
							$html .= "<span style=\"color:$backfncolor;font-size:$backfnsize;\">$daycnt</span>";
						}
					}

				}else{

					if ($yasumi == 1) {
						if (($test == 0 && $daycnt == $today) || ($test == 1 && $in{'yyyy'} == $nowyear && $in{'mm'} == $nowmonth && $daycnt == $nowtoday)) {		# �{��
							$html .= "bgcolor=\"$tdbgcolor\">";
							$html .= "<span style=\"color:$tdfncolor;font-size:$tdfnsize;\">$daycnt</span>";
						} else {																	# ���j�E�x��
							$html .= "bgcolor=\"$donichiyoubgcolor\">";
							$html .= "<span style=\"color:$donichiyoufncolor;font-size:$donichiyoufnsize;\"><span onclick=\"setCalendar($year,$monstr[$month-1],$daycnt);\" id=\"$year�N$monstr[$month-1]��$daycnt��\" style=\"cursor:pointer\">$daycnt</span></span>";
						}
					} else {
						if ($yo == 6) {
							if (($test == 0 && $daycnt == $today) || ($test == 1 && $in{'yyyy'} == $nowyear && $in{'mm'} == $nowmonth && $daycnt == $nowtoday)) {	# �{��
								$html .= "bgcolor=\"$tdbgcolor\">";
								$html .= "<span style=\"color:$tdfncolor;font-size:$tdfnsize;\">$daycnt</span>";
							} else {																# �y�j
								$html .= "bgcolor=\"$dodoyoubgcolor\">";
								$html .= "<span style=\"color:$dodoyoufncolor;font-size:$dodoyoufnsize;\"><span onclick=\"setCalendar($year,$monstr[$month-1],$daycnt);\" id=\"$year�N$monstr[$month-1]��$daycnt��\" style=\"cursor:pointer\">$daycnt</span></span>";
							}
						} else {
							if (($test == 0 && $daycnt == $today) || ($test == 1 && $in{'yyyy'} == $nowyear && $in{'mm'} == $nowmonth && $daycnt == $nowtoday)) {	# �{��
								$html .= "bgcolor=\"$tdbgcolor\">";
								$html .= "<span style=\"color:$tdfncolor;font-size:$tdfnsize;\">$daycnt</span>";
							} else {
								$html .= "bgcolor=\"$daybgcolor\">";
								$html .= "<span style=\"color:$dayfncolor;font-size:$dayfnsize;\"><span onclick=\"setCalendar($year,$monstr[$month-1],$daycnt);\" id=\"$year�N$monstr[$month-1]��$daycnt��\" style=\"cursor:pointer\">$daycnt</span></span>";
							}
						}
					}
				}
				if (++$daycnt > $maxday[$month - 1]) {
					$flag = 2;								# �ŏI��
				}
				##################################################
			} else {										# ���t�Ȃ�

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
# �j�����擾�B
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
		my @map = ('��', '��', '��', '��', '��', '��', '�y');
		return $map[$week];
	}else{
		return $week;
	}

}

##################################################
# �����擾
##################################################
sub GetPara{

	my($encode) = @_;

	my($method) = $ENV{'REQUEST_METHOD'};

	local($qu,@in,$key,$val);

	#���{��R�[�h�ϊ� jcode.pl �ǂݍ���
	require './pl/jcode.pl' if $encode;

	#�p�����^�擾
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
