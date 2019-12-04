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

#�p�����[�^���ɂ�铮������̐�����s���B

use strict;
use KCatch;

#�ݒ���̕ϐ��̏��������s���B

#��{�ݒ���B
use vars qw($script %in $base_imgdir $page_imgdir $sendmail $location $kind $page_name $title $mode $error);
#�ʐݒ���B
use vars qw($http_referer $url $param @param);
#�T�C�g�T�[�o�[�ݒ���B
use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
#�V���b�s���O�J�[�g�ݒ���̏��������s���B
use vars qw(@cart $crt1 $crt2 $crt3 $crt4 $crt5 $crt6 $crt7 $crt8 $crt9 $crt10 $crt11 $crt12 $crt13 $crt14 $crt15 $crt16 $crt17 $crt18 $crt19 $crt20 $crt21 $crt22 $crt23 $crt24 $crt25 $crt26 $crt27 $crt28 $crt29 $crt30 $crt31 $crt32);

#���C�u�����̓ǂݍ��݁B
require './pl/jcode.pl';
require './pl/common.pl';

#�T�C�g�T�[�o�[�ݒ���̓ǂݍ��݁B
if(-e "./root.ini"){
	open(IN,"./root.ini");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@root = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);
}else{
	$error = 99;
}

#�V���b�s���O�J�[�g�ݒ���t�@�C���ǂݍ��݁B
open(IN,"$rootdir/page_design/story/cart/cart.dat");
flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
@cart = <IN>;
flock(IN,8);		# ���b�N�����B
close(IN);
($crt1,$crt2,$crt3,$crt4,$crt5,$crt6,$crt7,$crt8,$crt9,$crt10,$crt11,$crt12,$crt13,$crt14,$crt15,$crt16,$crt17,$crt18,$crt19,$crt20,$crt21,$crt22,$crt23,$crt24,$crt25,$crt26,$crt27,$crt28,$crt29,$crt30,$crt31,$crt32) = split(/,/,$cart[0]);

#�G���[��ʕ\���B
if($error eq "99"){
	&errorSystem;
	exit;
}

#�f�R�[�h�����B
&decode;

#�����N����URL�擾�B
$http_referer = $ENV{'HTTP_REFERER'};

#�����N����URL�𕪊��B
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
<title>���_�C���N�g����</title>
<script Language="JavaScript">
<!--
location.href = "./zeus.cgi?category=$in{'category'}&page=$in{'page'}&cart=$in{'cart'}&money=$in{'money'}&usrmail=$in{'usrmail'}&settlement=go";
// -->
</script>
<body>
���΂炭�A���҂����������B
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
<title>�s���A�N�Z�X</title>
</head>
<body>
<div align="center">
�s���A�N�Z�X�ł�<br><br>
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
<title>���_�C���N�g����</title>
<script language="JavaScript">
<!--

function send(){
	document.myFORM.submit();
}

var Mac = navigator.userAgent.indexOf("Mac") != -1 ? true : false;

function mdown(e){
	if(navigator.appName == "Microsoft Internet Explorer"){
		if (event.button == 2 || (Mac && (event.ctrlKey || event.keyCode == 91))){
			alert("�R���e�N�X�g���j���[�͗��p�ł��܂���B");
			return(false);
		}
	}else if(navigator.appName == "Netscape"){
		if(e.which == 3 || e.modifiers == 2 || e.ctrlKey || e.which == 85){
			alert("�R���e�N�X�g���j���[�͗��p�ł��܂���");
			return false;
		}
	}
}

function noright(){
	alert("�R���e�N�X�g���j���[�͗��p�ł��܂���B");
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
<noscript>���ς��s�����߂ɂ�JavaScript�𗘗p\��\�\\�ɂ��Ă��������B</noscript><br>
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
<title>�s���A�N�Z�X</title>
</head>
<body>
<div align="center">
�s���A�N�Z�X�ł�<br>��������񂪎擾�ł��܂���ł���<br><br>
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
<title>���_�C���N�g����</title>
</head>
<body>
<div align="center">
<noscript>���ς��s�����߂ɂ�JavaScript�𗘗p\��\�\\�ɂ��Ă��������B</noscript><br><br>
</div>
</body>
</html>
EOM

}

exit;
