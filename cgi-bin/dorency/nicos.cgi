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
# ���C�u�����̓ǂݍ��݁B
##################################################

use KCatch;
require './pl/jcode.pl';

##################################################
# ��{�ݒ���B
##################################################

use vars qw($qu @in $key $val @qu %in %data @errorMsg);

#########################
# 1.�����ݒ�
#########################

##################################################
# �T�u�h���C���ݒ�B�i�{��:'if',�e�X�g:'test'�j
##################################################

#my $sub_domain = "if";
my $sub_domain = "if";

##################################################
# �������ψ˗���ʌĂяo��URL�B(https://$sub_domain.digi-coin.com/MULTI/ControllerFirst.php?)
##################################################

my $next_url_data = "https://$sub_domain.digi-coin.com/MULTI/ControllerFirst.php?";

##################################################
# �Ăяo���y�[�WID�B(72)
##################################################

my $P8 = "72";

##################################################
# ���i���ID�B(11)
##################################################

my $P9 = "11";

##################################################
# �ێ��������ԁi1�`50�j�B(30)
##################################################

my $P14 = "30";

##################################################
# �J�[�h���p�t���O(13�o�C�g��������)�B(1111111111111)
##################################################

my $P30 = "1111111010000";

##################################################
# ��s���p�t���O(6�o�C�g��������)�B(111111)
##################################################

my $P31 = "111111";

##################################################
# �R���r�j���p�t���O(9�o�C�g��������)�B(111111111)
##################################################

my $P32 = "111111110";

##################################################
# �d�q�}�l�[���p�t���O(3�o�C�g��������)�B(111)
##################################################

my $P33 = "011";

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

	#�߂�l�Z�b�g
	return *in;

}

##################################################
# �e��ݒ���̎擾�B
##################################################

sub dataGet{

	my($file) = @_;

	#�ݒ���ǂݍ��݁B
	open(IN,"$file");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	my @temp = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);

	return @temp;

}

##################################################
# ���[���A�h���X�`�F�b�N�B
##################################################

sub check_email{

	my($mailadress) = @_;

	#���[���A�h���X�ɃR���}�u,�v���܂܂�Ă��Ȃ����B
	if($mailadress =~ /\,/){
		push(@errorMsg,"���̓G���[���������܂����B<br>���[���A�h���X�ɃR���}�u\,�v���܂܂�Ă��܂��B<br>");
	}

	#���[���A�h���X�ɃA�b�g�}�[�N�u@�v���܂܂�Ă��邩�B
	if($mailadress !~ /@/){
		push(@errorMsg,"���̓G���[���������܂����B<br>���[���A�h���X�ɃA�b�g�}�[�N�u@�v���܂܂�Ă��܂���B<br>");
	}

	#���[���A�h���X�ɑS�p���܂܂�Ă��Ȃ����B
	if($mailadress =~ /[^0-9a-zA-Z\.\-\_\@]/){
		push(@errorMsg,"���̓G���[���������܂����B<br>���[���A�h���X�ɑS�p���܂܂�Ă��܂��B<br>");
	}

	#���[���A�h���X�̃h���C���������s�����B
	if($mailadress !~ /\.[a-zA-Z]{2,5}$/){
		push(@errorMsg,"���̓G���[���������܂����B<br>���[���A�h���X�𐳂������͂��ĉ������B<br>");
	}

}

##################################################
# ���[���𑗐M�B
##################################################

sub sendMail{

	my($sendmail_address,$address,$mailtext,$user_url) = @_;

	$sendmail_address = "/$sendmail_address";

	$subject ="NICOS�G���[";
	
	#JIS�R�[�h�ϊ��B
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailtext,'jis');
	#���[���𑗐M�B
	open(MAIL,"|$sendmail_address -t -f '$address'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $address\n";
	print MAIL "From: NICOS CGI\n";
	print MAIL "Subject: $subject\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailtext";
	print MAIL "\n";
	print MAIL "$user_url";
	close(MAIL);

}

sub sendMailSettlement{

	my($sendmail_address,$address,$mailtext) = @_;

	$sendmail_address = "/$sendmail_address";

	$subject ="NICOS�N���W�b�g���σV�X�e�������p�̂��m�点";
	
	#JIS�R�[�h�ϊ��B
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailtext,'jis');

	#���[���𑗐M�B
	open(MAIL,"|$sendmail_address -t -f '$address'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $address\n";
	print MAIL "From: NICOS CGI\n";
	print MAIL "Subject: $subject\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailtext";
	close(MAIL);

}

#########################
# 2.ssl�ڑ����W���[���̔��ʂ��s���B
#########################

my $ssl_flg  = 0;

my $ssl_flg1 = "off";
my $ssl_flg2 = "off";
my $ssl_flg3 = "off";
my $ssl_flg4 = "off";

eval 'use Crypt::SSLeay;';
if(!$@){
	$ssl_flg1 = "on";
}

eval 'use LWP::UserAgent;';
if(!$@){
	$ssl_flg2 = "on";
}

eval 'use HTTP::Request;';
if(!$@){
	$ssl_flg3 = "on";
}

eval 'use HTTP::Request::Common qw(POST);';
if(!$@){
	$ssl_flg4 = "on";
}

if($ssl_flg1 eq "on" && $ssl_flg2 eq "on" && $ssl_flg3 eq "on" && $ssl_flg4 eq "on"){
	$ssl_flg = 1;
}

#########################
# 3.�ݒ���擾�B
#########################

##################################################
# sendmail/CGI�p�[�~�b�V�������擾�B
##################################################

my @root = &dataGet("./root.ini");

my ($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);

undef(@root);

##################################################
# NOCOS�ݒ���擾�B
##################################################

my @cartData = &dataGet("./page_design/story/cart/cart.dat");
my @cart     = split(/,/,$cartData[0]);

my $mailSettlement = $cart[0];		#���Ϗ�񑗐M�惁�[���A�h���X
my $cart_flg       = $cart[32];		#NICOS���p�t���O "on" or ""
my $P1             = $cart[33];		#�����XID
my $P2             = $cart[34];		#�����X�p�X���[�h
my $P11            = "$cart[39]�̏��i";	#�N���W�b�g�w����ʂ̕\����Ж�
my $numbering      = $cart[36];		#�����X�����o�[ID�̔ԋ敪
my $mail_adress    = $cart[40];		#�G���[�ʒm��A�h���X

undef(@cartData);
undef(@cart);

my @low     = &dataGet("./page_design/story/cart/low.dat");

my @lowData = split(/,/,$low[0]);

my $lowData0 = $lowData[0];
my $lowData1 = $lowData[1];
my $lowData2 = $lowData[2];

$lowData0    =~ s/&#44;/,/g;
$lowData1    =~ s/&#44;/,/g;
$lowData2    =~ s/&#44;/,/g;

$lowData0    =~ s/<br>/\n/g;
$lowData1    =~ s/<br>/\n/g;
$lowData2    =~ s/<br>/\n/g;

##################################################
# �擾���������X�p�X���[�h�̈Í����������s���B
# �������@�F�e1�������e�XXOR�i�r���I�_���a�̌v�Z�j����蕶����i\x0c�j�ōs���B
##################################################

my $len      = length($P2);		#�ݒ�p�X���[�h�������擾
my $char     = "\x0c";			#�����L�[
my $tempData = "";			#�e���|�����ϐ�

for (my $i = 0 ; $i < $len ; $i++){

	my $temp   = substr($P2, $i , 1);

	$tempData .= $temp ^ $char;

}

$P2 = $tempData;

#########################
# 4.�������ʁB
#########################

#�p�����[�^���擾�B
*data = GetPara();

#########################
# 5.���[�h��psf�����ϑO��ʕ\���B
#########################
if($data{'mode'} eq "psf"){

	my $error_msg = "";

	##################################################
	# �p�����[�^���擾�B
	##################################################
	my $dataP4  = $data{'P4'};
	my $dataP5  = $data{'P5'};
	my $dataP6  = $data{'P6'};
	my $dataP7  = $data{'P7'};
	my $dataP12 = $data{'P12'};
	##################################################
	# �p�����[�^��URL�f�R�[�h�B
	##################################################
	$dataP4  =~ tr/+/ /;
	$dataP4  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP5  =~ tr/+/ /;
	$dataP5  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP6  =~ tr/+/ /;
	$dataP6  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP7  =~ tr/+/ /;
	$dataP7  =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;

	$dataP12 =~ tr/+/ /;
	$dataP12 =~ s/%([0-9A-Fa-f][0-9A-Fa-f])/pack('H2', $1)/eg;
	##################################################

	if($cart_flg eq "on"){

		##################################################
		# ���������`�F�b�N�B
		##################################################
		my $str_P4     = $dataP4;			#���[���A�h���X
		my $str_P5     = $dataP5;			#����
		my $str_P6     = $dataP6;			#�t���K�i
		my $str_P7     = split(/-/,$dataP7);		#�d�b�ԍ�
		my $str_len_P4 = length($str_P4);		#���[���A�h���X
		my $str_len_P5 = length($str_P5);		#����
		my $str_len_P6 = length($str_P6);		#�t���K�i
		my $str_len_P7 = length($str_P7);		#�d�b�ԍ�

		#���[���A�h���X�`�F�b�N�B
		if($str_len_P4 > 64){
			$error_msg .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�����[���A�h���X�͔��p64�����ȓ��œ��͂��Ă��������B<br><br>\n";
			$error_msg .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
		}else{

			&check_email($str_P4);

			if($#errorMsg != -1){

				foreach my $errorMsg(@errorMsg){

					$error_msg .= $errorMsg;
					$error_msg .= "\n";

				}

			}

		}

		#�����`�F�b�N�B
		if($str_P5 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P5 > 40 || $str_P5 =~ / /){
			$error_msg .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�������O���͑S�p�����������͂��������B<br>�������O���͑S�p20�����ȓ��œ��͂��Ă��������B<br><br>\n";
			$error_msg .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
		}

		#�t���K�i�`�F�b�N�B
		if($str_P6 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P6 > 30 || $str_P6 =~ / /){
			$error_msg .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���t���K�i���͑S�p�J�^�J�i�������͂��������B<br>���t���K�i���͑S�p15�����ȓ��œ��͂��Ă��������B<br><br>\n";
			$error_msg .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
		}

		#�d�b�ԍ��`�F�b�N�B
		if($str_P7 =~ /[^0-9]/ || $str_len_P7 > 11 || $str_P7 =~ / /){
			$error_msg .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���d�b�ԍ��͔��p11�����ȓ��œ��͂��Ă��������B<br><br>\n";
			$error_msg .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
		}
		##################################################

	}else{

		$error_msg = "NICOS���ς͌��݂����p�ł��܂���B<br>\n";

	}

	if($error_msg eq ""){

		##################################################
		# ���ϑO��ʕ\���B
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
<meta name="Description" content="�������ψ˗��L�[�擾">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>�������ψ˗��L�[�擾</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">�������ψ˗��L�[�擾</span></td>
 </tr>
 <tr>
  <td height="20">�@</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
   <table width="400" border="0" cellspacing="1" cellpadding="3" bgcolor="#EFEFEF">
    <tr>
     <td>
      <br>
      <div align="center"><b>���������I�����C���������ς��s���܂��B</b></div>
      <br>
      <form action="nicos.cgi" method="post">
      <input type="hidden" name="mode" value="psa">
      <input type="hidden" name="P4" value="$dataP4">
      <input type="hidden" name="P5" value="$dataP5">
      <input type="hidden" name="P6" value="$dataP6">
      <input type="hidden" name="P7" value="$dataP7">
      <input type="hidden" name="P12" value="$dataP12">
      <div align="center">
      <input type="submit" value="�I�����C���������ω�ʂ��J��">
      </form>
      <br>
      <br>
     </td>
    </tr>
   </table>
  </td>
  </td>
 </tr>
 <tr> 
  <td height="20">�@</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr>
  <td height="40">�@</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">�@</td>
 </tr>
</table>
</body>
</html>
EOM
exit;

		##################################################

	}else{

		##################################################
		# �G���[��ʕ\���B
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
<meta name="Description" content="�������ψ˗��L�[�擾�G���[">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>�I�����C���������σG���[</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">�G���[</span></td>
 </tr>
 <tr>
  <td height="20">�@</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
  <span class="msg">
EOM

		my @msg = split(/\n/,$error_msg);

		foreach my $msg(@msg){

print <<EOM;
$msg<br>
EOM

		}

print <<EOM;
  </span>
  </td>
 </tr>
 <tr> 
  <td height="20">�@</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td>�@</td>
 </tr>
 <tr> 
   <td align="center"><input type="button" value="����" onClick="window.close()" style="width:100"></td>
 </tr>
 <tr>
  <td height="40">�@</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">�@</td>
 </tr>
</table>
</body>
</html>
EOM
exit;
		##################################################

	}

#########################
# 5.���[�h��psa�����σL�[�擾�B
#########################
}elsif($data{'mode'} eq "psa"){

	#�f�B���N�g�����B
	my $lockdir    = "nicos";
	my $lockdir2   = "nicos_temp";

	#���g���C�񐔁B
	my $retry      = 10;

	my $html       = "";
	my $error_view = "";
	my $error_mail = "";

	my $date_data       = "";
	my $member_id       = "";
	my $member_name     = "";
	my $member_furigana = "";
	my $member_tel      = "";
	my $member_mail     = "";
	my $member_item     = "";
	my $member_price    = "";
	my $agency_id       = "";
	my $agency_url      = "";

	if($cart_flg eq "on"){

		if($ssl_flg == 1){

			##################################################
			# �r������J�n�B
			##################################################

			while(!mkdir($lockdir, 0755)){						# �쐬�B�o���Ȃ���Α҂�

				if(--$retry <= 0){						# ���g���C�񐔂Ń_���Ȃ�

					if(mkdir($lockdir2, 0755)){				# ���b�N���������߂̔r��

						if((-M $lockdir) * 86400 > 600){		# �쐬���Ԃ�10���ȏ�O�Ȃ�

							rename($lockdir2, $lockdir);		# ���b�N����ւ�
							last;					# ��A�̏�����

						}else{

							rmdir($lockdir2);			# �������b�N�폜

						}

					}

					#�T�[�o�[Busy�ł� ���΂炭�����Ă��������x���������������B
					$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";

				}

				sleep(1);							# 1�b�҂�

			}

			##################################################
			# ���t�擾�B
			# �����擾�B
			##################################################

			#�^�C���]�[������{���ԂցB
			$ENV{'TZ'} = "JST-9";

			my $date = time;

			my $rand = int(rand(1000000));

			##################################################
			# �����X�����o�[ID���`���B�i�����X�����o�[ID�̔ԋ敪+���t�j
			##################################################

			my $P3 = "$numbering$date$rand";

			##################################################
			# ���iID���`���B�i�����X�����o�[ID�̔ԋ敪+���t�j
			##################################################

			my $P10 = "$numbering$date$rand";

			##################################################
			# �����X���ID���`���B�i�����X�����o�[ID�̔ԋ敪+���t�j
			##################################################

			my $P13 = "$numbering$date$rand";

			##################################################
			# �Ăяo���p�����[�^�ݒ�B(post�Ŏ擾)
			##################################################

			my $param;

			#�����̌����i�O�����Ƃ��Ĉ����̌`���`�F�b�N���s�����Ƃ𐄏��v���܂��j
			$param .= 'P1='.$P1;
			$param .= '&P2='.$P2;
			$param .= '&P3='.$P3;
			$param .= '&P4='.$data{'P4'};
			$param .= '&P5='.$data{'P5'};
			$param .= '&P6='.$data{'P6'};
			$param .= '&P7='.$data{'P7'};
			$param .= '&P8='.$P8;
			$param .= '&P9='.$P9;
			$param .= '&P10='.$P10;
			$param .= '&P11='.$P11;
			$param .= '&P12='.$data{'P12'};
			$param .= '&P13='.$P13;
			$param .= '&P14='.$P14;
			$param .= '&P30='.$P30;
			$param .= '&P31='.$P31;
			$param .= '&P32='.$P32;
			$param .= '&P33='.$P33;

			my ($sec, $min, $hour, $mday, $mon, $year, $wday, $dummy1, $dummy2) = localtime($date);

			$year = sprintf("%04d", $year + 1900);
			$mon  = sprintf("%02d", $mon + 1);
			$mday = sprintf("%02d", $mday);
			$hour = sprintf("%02d", $hour);
			$min  = sprintf("%02d", $min);
			$sec  = sprintf("%02d", $sec);

			my @youbi = ('��', '��', '��', '��', '��', '��', '�y');

			$date_data       = "$year/$mon/$mday($youbi[$wday]) $hour:$min:$sec";
			$member_id       = "$numbering$date$rand";
			$member_name     = $data{'P5'};
			$member_furigana = $data{'P6'};
			$member_tel      = $data{'P7'};
			$member_mail     = $data{'P4'};
			$member_price    = $data{'P12'};
			$agency_id       = $P1;
			$agency_url      = $html_address;

			##################################################
			# ���������`�F�b�N�B
			##################################################

			my $str_P4     = $data{'P4'};			#���[���A�h���X
			my $str_P5     = $data{'P5'};			#����
			my $str_P6     = $data{'P6'};			#�t���K�i
			my $str_P7     = split(/-/,$data{'P7'});	#�d�b�ԍ�
			my $str_len_P4 = length($str_P4);		#���[���A�h���X
			my $str_len_P5 = length($str_P5);		#����
			my $str_len_P6 = length($str_P6);		#�t���K�i
			my $str_len_P7 = length($str_P7);		#�d�b�ԍ�

			#���[���A�h���X�`�F�b�N�B
			if($str_len_P4 > 64){
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�����[���A�h���X�͔��p64�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
			}else{

				&check_email($str_P4);

				if($#errorMsg != -1){

					foreach my $errorMsg(@errorMsg){

						$error_view .= $errorMsg;
						$error_view .= "\n";

					}

				}

			}

			#�����`�F�b�N�B
			if($str_P5 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P5 > 40 || $str_P5 =~ / /){
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�������O���͑S�p�����������͂��������B<br>�������O���͑S�p20�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
			}

			#�t���K�i�`�F�b�N�B
			if($str_P6 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P6 > 30 || $str_P6 =~ / /){
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���t���K�i���͑S�p�J�^�J�i�������͂��������B<br>���t���K�i���͑S�p15�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
			}

			#�d�b�ԍ��`�F�b�N�B
			if($str_P7 =~ /[^0-9]/ || $str_len_P7 > 11 || $str_P7 =~ / /){
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���d�b�ԍ��͔��p11�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
			}

			##################################################

			if($error_view eq ""){

				##################################################
				# �������ψ˗��L�[�擾CGI�v���O��������ݒ�B(https://$sub_domain.digi-coin.com/MULTI/CGI_opnt_get_oneway_umenukey.php?)
				##################################################

				my $prg_name = "https://$sub_domain.digi-coin.com/MULTI/CGI_opnt_get_oneway_umenukey.php?";

				##################################################
				# ���N�G�X�g�̍쐬�B
				##################################################

				#URL�G���R�[�h
				$param  =~ s/([\x00-\x20"#%;<>?{}|\\\\^~`\[\]\x7F-\xFF])/sprintf('%%%x',ord ($1))/eg;

				my $url      = "$prg_name$param";
				my $ua       = LWP::UserAgent->new;
				my $response = $ua->get( $url );

				##################################################
				# ���N�G�X�g�̎��s�����X�|���X�̎擾�B
				##################################################
				if ($response->code == 200) {

					$html = $response->content;

					if($response->is_success){
					    $html = $response->content;
					}else{
					    $html = $response->status_line;
					}

				}else{
					$html = "";
				}
				##################################################

			}

			##################################################
			# �r������I���B
			##################################################
			rmdir($lockdir);
			##################################################

		}else{

			##################################################
			# SSL���W���[���idigireq�j�����݂��Ă��邩�`�F�b�N�B
			##################################################

			if(-e "./digireq"){

				##################################################
				# SSL���W���[���idigireq�j�p�[�~�b�V�����擾�B
				##################################################

				my @file_info = stat './digireq';
				my $file_per  = substr((sprintf "%03o", $file_info[2]), -3);

				##################################################
				# SSL���W���[���idigireq�j�̃p�[�~�b�V������CGI�p�[�~�b�V�������������`�F�b�N�B
				##################################################

				if($file_per eq $cgi_file_auth){

					##################################################
					# �r������J�n�B
					##################################################

					while(!mkdir($lockdir, 0755)){						# �쐬�B�o���Ȃ���Α҂�

						if(--$retry <= 0){						# ���g���C�񐔂Ń_���Ȃ�

							if(mkdir($lockdir2, 0755)){				# ���b�N���������߂̔r��

								if((-M $lockdir) * 86400 > 600){		# �쐬���Ԃ�10���ȏ�O�Ȃ�

									rename($lockdir2, $lockdir);		# ���b�N����ւ�
									last;					# ��A�̏�����

								}else{

									rmdir($lockdir2);			# �������b�N�폜

								}

							}

							#�T�[�o�[Busy�ł� ���΂炭�����Ă��������x���������������B
							$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";

						}

						sleep(1);							# 1�b�҂�

					}

					##################################################
					# ���t�擾�B
					# �����擾�B
					##################################################

					#�^�C���]�[������{���ԂցB
					$ENV{'TZ'} = "JST-9";

					my $date = time;

					my $rand = int(rand(1000000));

					##################################################
					# �����X�����o�[ID���`���B�i�����X�����o�[ID�̔ԋ敪+���t�j
					##################################################

					my $P3 = "$numbering$date$rand";

					##################################################
					# ���iID���`���B�i�����X�����o�[ID�̔ԋ敪+���t�j
					##################################################

					my $P10 = "$numbering$date$rand";

					##################################################
					# �����X���ID���`���B�i�����X�����o�[ID�̔ԋ敪+���t�j
					##################################################

					my $P13 = "$numbering$date$rand";

					##################################################
					# �Ăяo���p�����[�^�ݒ�B(post�Ŏ擾)
					##################################################

					my $param;

					#�����̌����i�O�����Ƃ��Ĉ����̌`���`�F�b�N���s�����Ƃ𐄏��v���܂��j
					$param .= '\'';
					$param .= 'P1='.$P1;
					$param .= '&P2='.$P2;
					$param .= '&P3='.$P3;
					$param .= '&P4='.$data{'P4'};
					$param .= '&P5='.$data{'P5'};
					$param .= '&P6='.$data{'P6'};
					$param .= '&P7='.$data{'P7'};
					$param .= '&P8='.$P8;
					$param .= '&P9='.$P9;
					$param .= '&P10='.$P10;
					$param .= '&P11='.$P11;
					$param .= '&P12='.$data{'P12'};
					$param .= '&P13='.$P13;
					$param .= '&P14='.$P14;
					$param .= '&P30='.$P30;
					$param .= '&P31='.$P31;
					$param .= '&P32='.$P32;
					$param .= '&P33='.$P33;
					$param .= '\'';

					my ($sec, $min, $hour, $mday, $mon, $year, $wday, $dummy1, $dummy2) = localtime($date);

					$year = sprintf("%04d", $year + 1900);
					$mon  = sprintf("%02d", $mon + 1);
					$mday = sprintf("%02d", $mday);
					$hour = sprintf("%02d", $hour);
					$min  = sprintf("%02d", $min);
					$sec  = sprintf("%02d", $sec);

					my @youbi = ('��', '��', '��', '��', '��', '��', '�y');

					$date_data       = "$year/$mon/$mday($youbi[$wday]) $hour:$min:$sec";
					$member_id       = "$numbering$date$rand";
					$member_name     = $data{'P5'};
					$member_furigana = $data{'P6'};
					$member_tel      = $data{'P7'};
					$member_mail     = $data{'P4'};
					$member_price    = $data{'P12'};
					$agency_id       = $P1;
					$agency_url      = $html_address;

					##################################################
					# ���������`�F�b�N�B
					##################################################

					my $str_P4     = $data{'P4'};			#���[���A�h���X
					my $str_P5     = $data{'P5'};			#����
					my $str_P6     = $data{'P6'};			#�t���K�i
					my $str_P7     = split(/-/,$data{'P7'});	#�d�b�ԍ�
					my $str_len_P4 = length($str_P4);		#���[���A�h���X
					my $str_len_P5 = length($str_P5);		#����
					my $str_len_P6 = length($str_P6);		#�t���K�i
					my $str_len_P7 = length($str_P7);		#�d�b�ԍ�

					#���[���A�h���X�`�F�b�N�B
					if($str_len_P4 > 64){
						$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�����[���A�h���X�͔��p64�����ȓ��œ��͂��Ă��������B<br><br>\n";
						$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
					}else{

						&check_email($str_P4);

						if($#errorMsg != -1){

							foreach my $errorMsg(@errorMsg){

								$error_view .= $errorMsg;
								$error_view .= "\n";

							}

						}

					}

					#�����`�F�b�N�B
					if($str_P5 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P5 > 40 || $str_P5 =~ / /){
						$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�������O���͑S�p�����������͂��������B<br>�������O���͑S�p20�����ȓ��œ��͂��Ă��������B<br><br>\n";
						$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
					}

					#�t���K�i�`�F�b�N�B
					if($str_P6 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P6 > 30 || $str_P6 =~ / /){
						$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���t���K�i���͑S�p�J�^�J�i�������͂��������B<br>���t���K�i���͑S�p15�����ȓ��œ��͂��Ă��������B<br><br>\n";
						$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
					}

					#�d�b�ԍ��`�F�b�N�B
					if($str_P7 =~ /[^0-9]/ || $str_len_P7 > 11 || $str_P7 =~ / /){
						$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���d�b�ԍ��͔��p11�����ȓ��œ��͂��Ă��������B<br><br>\n";
						$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";
					}

					##################################################

					if($error_view eq ""){

						##################################################
						# �������ψ˗��L�[�擾CGI�v���O��������ݒ�B(/MULTI/CGI_opnt_get_oneway_umenukey.php)
						##################################################

						my $prg_name = "/MULTI/CGI_opnt_get_oneway_umenukey.php";

						##################################################
						# ���N�G�X�g�̍쐬�B
						##################################################

						#(���s�R�}���h�@�T�u�h���C���@�Ăяo��CGI�@CGI����)
						my $command = "./digireq ".$sub_domain." ".$prg_name." ".$param;

						##################################################
						# ���N�G�X�g�̎��s�����X�|���X�̎擾�B
						##################################################

						#���N�G�X�g�̎��s���ʂ̕W���o�͂��p�C�v���g�p���Ď擾
						open CMD_A ,"$command | ";

						while(<CMD_A>){

							#�o�͌��ʂ��擾
							$html .= $_;

						}

						close CMD_A;

						##################################################

					}

					##################################################
					# �r������I���B
					##################################################
					rmdir($lockdir);
					##################################################

				}else{

					$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";
					$error_mail .= "�A�b�v���[�h�����s���Ă���\\��������܂��B\n";
					$error_mail .= "�T�[�o�[�����m�F��A�ēx�A�b�v���[�h�����Ă��������B\n";
					$error_mail .= "(SSL���W���[���Ɏ��s�������^�����Ă��܂���B)\n";

				}

				##################################################

			}else{

				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";
				$error_mail .= "�A�b�v���[�h�����s���Ă���\\��������܂��B\n";
				$error_mail .= "�T�[�o�[�����m�F��A�ēx�A�b�v���[�h�����Ă��������B\n";
				$error_mail .= "(SSL���W���[�������݂��܂���B)\n";

			}

			##################################################

		}

	}else{

		$error_view = "NICOS���ς͌��݂����p�ł��܂���B<br>\n";

	}

	#########################
	# 6.�J�ڐ攻�ʁB
	#########################

	my $error_data = "";

	if($error_view eq ""){

		my $dummy     = "";
		my $error_flg = 0;
		my $key       = "";

		my(@return_data) = split(/,/,$html);

		if($return_data[0] =~ /^status=/){

			($dummy,$error_flg) = split(/=/,$return_data[0]);

		}else{

			$error_flg = 403;

		}

		if($return_data[1] =~ /^key=/){

			($dummy,$key) = split(/=/,$return_data[1]);

		}

		if($error_flg eq "0"){

			##################################################
			# ���Ϗ��𑗐M�B
			##################################################

			my $settlement = "";

			$member_price =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;


			$settlement .= "\n";
			$settlement .= "WEB�Ǘ��җl\n";
			$settlement .= "\n";
			$settlement .= "���̃��[���́A�x�������@�F�j�R�X�N���W�b�g���ςŏ��i�w�����ꂽ\n";
			$settlement .= "�ꍇ�ɁA�������s�����w���q�l�ԍ��x�����m�点���郁�[���ł��B\n";
			$settlement .= "�w�����ڍׂɂ��ẮA�ʓr��������[��������m�F���������B\n";
			$settlement .= "\n";
			$settlement .= "�N���W�b�g���Ϗ��͈ȉ��̒ʂ�ł��B\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "�y���������z�@" . $date_data . "\n";
			$settlement .= "�y���q�l���z�@" . $member_name . "\n";
			$settlement .= "�y���q�l�ԍ��z�@" . $member_id . "\n";
			$settlement .= "�y�����z�@" . $member_price . "�~�i�ō��݁j\n";
			$settlement .= "\n";
			$settlement .= " �����ϊ������ȂǂɕK�v�ƂȂ�ԍ��ł��̂ŁA�K�����T�����������B\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";
			$settlement .= "���q�l���͈ȉ��̒ʂ�ł��B\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "�y���q�l���z�@" . $member_name . "\n";
			$settlement .= "�y�t���K�i�z�@" . $member_furigana . "\n";
			$settlement .= "�y�d�b�ԍ��z�@" . $member_tel . "\n";
			$settlement .= "�y���[���A�h���X�z�@" . $member_mail . "\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";
			$settlement .= "�Ǘ��ғo�^���͈ȉ��̒ʂ�ł��B\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "�y�����XID�z�@" . $agency_id . "\n";
			$settlement .= "�yURL�z�@" . $agency_url . "\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";
			$settlement .= "�����̃��[���́ANICOS�N���W�b�g���σV�X�e���������p�����Ă���\n";
			$settlement .= "�@�Ǘ��҂̕��̓o�^���[���A�h���X�ɂ����肵�Ă���܂��B\n";
			$settlement .= "�@�����{���[��������ē͂����ۂ́A���萔���������v���܂���\n";
			$settlement .= "�@���̎|�𕶖��́u�A����v�փ��[���ɂĂ��A�������܂��Ƌ��ɁA\n";
			$settlement .= "�@�{���[�����폜���Ă��������܂��悤���肢�\\���グ�܂��B\n";
			$settlement .= "\n";
			$settlement .= "�����̃��[���A�h���X�͔z�M��p�ł��̂ŁA���b�Z�[�W��ԐM����\n";
			$settlement .= "�@�܂��ʂ悤���肢�v���܂��B\n";
			$settlement .= "\n";
			$settlement .= "-----------���菤����Ɋ�Â��\\��---------------------\n";
			$settlement .= "�y�̔��Ǝҁz\n";
			$settlement .= $lowData0 . "\n";
			$settlement .= "�y�^�c�ӔC�ҁz\n";
			$settlement .= $lowData1 . "\n";
			$settlement .= "�y���ݒn�z\n";
			$settlement .= $lowData2 . "\n";
			$settlement .= "-------------------------------------------------------\n";
			$settlement .= "\n";

			&sendMailSettlement($sendmail,$mailSettlement,$settlement);

			##################################################

			##################################################
			# �������ψ˗���ʌĂяo��URL�փW�����v�ilocation�j����B
			##################################################
			print "location:$next_url_data$key\n\n";
			exit;
			##################################################

		}elsif($error_flg ne "0"){

			$error_data = $error_flg;

			##################################################
			# �G���[��ʂ�\������B
			##################################################

			if($error_flg eq ""){

				#�X�e�[�^�X������܂���B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "���͏�񂪂���܂���B\n";
				$error_mail .= "�T�[�o�[���E�V���b�v�����m�F��A�ēx�A�b�v���[�h�����Ă��������B\n";

			}elsif($error_flg eq "257" || $error_flg eq "258" || $error_flg eq "261" || $error_flg eq "262"){

				#�����X�h�c���ُ�ł��B
				#�����X�h�c���o�^����܂���B
				#�����X�h�c�����~���ł��B
				#�����X�h�c�������~���ł��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "�����XID���������ݒ肳��Ă��܂���B\n";
				$error_mail .= "�����������XID����͂��āA�ēx�A�b�v���[�h�����Ă��������B\n";
				$error_mail .= "(�O�HUFJ�j�R�X������ЂɊm�F����K�v������܂�)\n";

			}elsif($error_flg eq "403"){

				#�������ψ˗��L�[���擾�ł��Ȃ����ɂȂ��Ă��܂��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "�T�[�o�[�����񂪎擾�ł��܂���ł����B\n";
				$error_mail .= "�����p�����悭���m�F�����A�ēx�A�b�v���[�h�����Ă��������B\n";

			}elsif($error_flg eq "513" || $error_flg eq "516"){

				#�����X�p�X���[�h���ُ�ł��B
				#�����X�p�X���[�h���s��v�ł��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "�����X�p�X���[�h���������ݒ肳��Ă��܂���B\n";
				$error_mail .= "�����������X�p�X���[�h����͂��āA�ēx�A�b�v���[�h�����Ă��������B\n";
				$error_mail .= "(�O�HUFJ�j�R�X������ЂɊm�F����K�v������܂�)\n";

			}elsif($error_flg eq "769" || $error_flg eq "770" || $error_flg eq "773"){

				#�����o�[�h�c���ُ�ł��B
				#�����o�[�h�c���o�^����܂���B
				#�����o�[�h�c�����~���ł��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "�����o�[ID�̔ԋ敪���������ݒ肳��Ă��܂���B\n";
				$error_mail .= "�����������o�[ID�̔ԋ敪����͂��āA�ēx�A�b�v���[�h�����Ă��������B\n";
				$error_mail .= "(�T�C�g�Ԃŏd�����Ă���\\��������܂�)\n";

			}elsif($error_flg eq "776"){

				#�����o�[����������܂���B

			}elsif($error_flg eq "1025"){

				#�����o�[���[���A�h���X���ُ�ł��B
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�����[���A�h���X�͔��p64�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";

			}elsif($error_flg eq "1281"){

				#�����o�[�������ُ�ł��B
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>�������O���͑S�p�����������͂��������B<br>�������O���͑S�p20�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";

			}elsif($error_flg eq "1537"){

				#�����o�[�t���K�i���ُ�ł��B
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���t���K�i���͑S�p�J�^�J�i�������͂��������B<br>���t���K�i���͑S�p15�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";

			}elsif($error_flg eq "1793"){

				#�����o�[�d�b�ԍ����ُ�ł��B
				$error_view .= "���̓G���[���������܂����B<br>�ȉ��̂��Ƃ����m�F�����A�ēx���葱�������肢�������܂��B<br>���d�b�ԍ��͔��p11�����ȓ��œ��͂��Ă��������B<br><br>\n";
				$error_view .= "��L���e�����m�F��������A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A<br>��ϐ\\���󂠂�܂��񂪁A�^�c�ӔC�҂ւ��A�����������B<br>\n";

			}elsif($error_flg eq "2049" || $error_flg eq "2050"){

				#�Ăяo���y�[�W�h�c���ُ�ł��B
				#�Ăяo���y�[�W�h�c���o�^����܂���B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "�A�b�v���[�h�����s���Ă���\\��������܂��B\n";
				$error_mail .= "�T�[�o�[�����m�F��A�ēx�A�b�v���[�h�����Ă��������B\n";

			}elsif($error_flg eq "2305" || $error_flg eq "2306"){

				#���i��ʂh�c���ُ�ł��B
				#���i��ʂh�c���o�^����܂���B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "���i���ID���������ݒ肳��Ă��܂���B\n";
				$error_mail .= "���������i���ID����͂��āA�ēx�A�b�v���[�h�����Ă��������B\n";

			}elsif($error_flg eq "2561"){

				#���i�R�[�h���ُ�ł��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "�����o�[ID�̔ԋ敪���������ݒ肳��Ă��܂���B\n";
				$error_mail .= "�����������o�[ID�̔ԋ敪����͂��āA�ēx�A�b�v���[�h�����Ă��������B\n";
				$error_mail .= "(�T�C�g�Ԃŏd�����Ă���\\��������܂�)\n";

			}elsif($error_flg eq "2817"){

				#���i�����ُ�ł��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "�N���W�b�g�w����ʂ̕\����Ж����������ݒ肳��Ă��܂���B\n";
				$error_mail .= "�������N���W�b�g�w����ʂ̕\����Ж�����͂��āA�ēx�A�b�v���[�h�����Ă��������B\n";

			}elsif($error_flg eq "3073"){

				#���i���z���ُ�ł��B
				$error_view = "���i���z��������x�z�𒴂��Ă��܂��B<br>�߂��ď��i��I�����Ȃ����Ă��������B<br>\n";

			}elsif($error_flg eq "3329" || $error_flg eq "3331"){

				#�����X����h�c���ُ�ł� ���΂炭�����Ă��������x���������������B
				#�����X����h�c���d�����Ă��܂� ���΂炭�����Ă��������x���������������B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";
				$error_mail .= "�����o�[ID�̔ԋ敪���������ݒ肳��Ă��܂���B\n";
				$error_mail .= "�����������o�[ID�̔ԋ敪����͂��āA�ēx�A�b�v���[�h�����Ă��������B\n";
				$error_mail .= "(�T�C�g�Ԃŏd�����Ă���\\��������܂�)\n";

			}elsif($error_flg eq "3585" || $error_flg eq "7681" || $error_flg eq "7937" || $error_flg eq "8193" || $error_flg eq "8449"){

				#�ێ����Ԃ��ُ�ł��B
				#�J�[�h���p�t���O���ُ�ł��B
				#��s���p�t���O���ُ�ł��B
				#�R���r�j���p�t���O���ُ�ł��B
				#�d�q�}�l�[���p�t���O���ُ�ł��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";
				$error_mail .= "�A�b�v���[�h�����s���Ă���\\��������܂��B\n";
				$error_mail .= "�T�[�o�[�����m�F��A�ēx�A�b�v���[�h�����Ă��������B\n";

			}elsif($error_flg eq "10241"){

				#�����o�[���O�C�����p�t���O���ُ�ł��B

			}elsif($error_flg eq "10497"){

				#�����c�����p�t���O���ُ�ł��B

			}elsif($error_flg eq "10753"){

				#�M�t�g�h�c���p�t���O���ُ�ł��B

			}elsif($error_flg eq "11009"){

				#�f�W�R�C�����p�t���O���ُ�ł��B

			}elsif($error_flg eq "12801"){

				#�|�C���g�z�z�Ώۋ��z�p�^�[�����ُ�ł��B

			}elsif($error_flg eq "13057"){

				#�|�C���g�z�z�Ώۗ\����z���ُ�ł��B

			}elsif($error_flg eq "13313"){

				#�|�C���g�z�z�����p�^�[���t���O���ُ�ł��B

			}elsif($error_flg eq "13569"){

				#�ǉ��z�z�|�C���g���ُ�ł��B

			}elsif($error_flg eq "13825"){

				#�|�C���g�z�z�����ُ�ł��B

			}elsif($error_flg eq "14081"){

				#�|�C���g�L���������ُ�ł��B

			}elsif($error_flg eq "15361"){

				#���ϊ����^�C�~���O�w�肪�ُ�ł��B

			}elsif($error_flg eq "15617"){

				#����m��ۗ����Ԑݒ肪�ُ�ł��B

			}elsif($error_flg eq "65535"){

				#�V�X�e�������e�i���X���ł��B
				$error_view = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";
				$error_mail = "����NICOS���σV�X�e���̃����e�i���X���ł��B\n";

			}elsif($error_flg eq "99999"){

				#�T�[�o�[Busy�ł� ���΂炭�����Ă��������x���������������B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>���΂炭�����Ă��������x���������������B<br>\n";

			}else{

				#���������G���[�ł��B
				$error_view  = "�����A�V�X�e�������e�i���X���ł��B<br>��ϐ\\���󂠂�܂��񂪁A�N���W�b�g���ςɂĂ��w�������Ȃ��ꍇ�́A�^�c�ӔC�҂ւ��A�����������B<br>\n";
				$error_mail .= "NICOS���σV�X�e���̓����G���[���������܂����B\n";
				$error_mail .= "NICOS�ɂ��⍇�����������B\n";
				$error_mail .= "�G���[�F$error_flg\n";

			}

		}

	}

	if($sendmail ne "" && $error_mail ne ""){

		&sendMail($sendmail,$mail_adress,$error_mail,$html_address);

	}

	##################################################
	# �G���[��ʕ\���B
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
<meta name="Description" content="�������ψ˗��L�[�擾�G���[">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>�I�����C���������σG���[</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">$error_data �G���[</span></td>
 </tr>
 <tr>
  <td height="20">�@</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
  <span class="msg">
  $error_view
  </span>
  </td>
 </tr>
 <tr> 
  <td height="20">�@</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td>�@</td>
 </tr>
 <tr> 
   <td align="center"><input type="button" value="����" onClick="window.close()" style="width:100"></td>
 </tr>
 <tr>
  <td height="40">�@</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">�@</td>
 </tr>
</table>
</body>
</html>
EOM
exit;
	##################################################

##################################################
# 5.���[�h��pse�����ϏI����ʕ\���B
##################################################
}elsif($data{'mode'} eq "pse"){

	##################################################
	# ���ϏI����ʕ\���B
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
<meta name="Description" content="�I�����C���������ϊ���">
<meta name="robots" content="INDEX,NOFOLLOW">
<meta name="generator" content="SITEUP SYSTEM ver1.83.00">
<link rel="INDEX" href="./index.html">
<link rev="MADE" href="mailto:dummy\@dummy.com">
<title>�I�����C���������ϊ���</title>
<style type="text/css">
<!--
body{
	font-size:12px;
	font-family:"MS UI Gothic";
}
td{
	font-size:12px;
}
.title{
	font-size:14px;
	font-weight:bold;
}
.msg{
	font-weight:bold;
}
-->
</style>
</head>
<body bgcolor="#ffffff" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<br>
<table width="560" border="0" cellspacing="0" cellpadding="2" align="center">
 <tr>
  <td align="center" bgcolor="#dddddd"><span class="title">�I�����C���������ϊ���</span></td>
 </tr>
 <tr>
  <td height="20">�@</td>
 </tr>
</table>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td align="center">
  <span class="msg">
  �����p���肪�Ƃ��������܂����B
  </span>
  </td>
 </tr>
 <tr> 
  <td height="20">�@</td>
 </tr>
</table>
<br>
<br>
<table width="560" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr> 
  <td>�@</td>
 </tr>
 <tr> 
   <td align="center"><input type="button" value="����" onClick="window.close()" style="width:100"></td>
 </tr>
 <tr>
  <td height="40">�@</td>
 </tr>
 <tr>
  <td height="20" bgcolor="#dddddd">�@</td>
 </tr>
</table>
</body>
</html>
EOM
exit;
	##################################################

}
