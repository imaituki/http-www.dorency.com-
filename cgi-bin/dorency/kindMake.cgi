#!/usr/bin/perl

##################################################
#
# SITEUP-SYSTEM
#
# COPYRIGHT(C)2004 SUNFIRST.INC ALL RIGHTS RESERVED.
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
use CGI qw( :standard );

#���C�u�����̓ǂݍ��݁B
require './pl/jcode.pl';

use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
use vars qw(@page_kind $pnm00 $knm00 $pnm10 $knm10 $pnm11 $knm11 $pnm12 $knm12 $pnm13 $knm13 $pnm14 $knm14 $pnm15 $knm15 $pnm20 $knm20 $pnm21 $knm21 $pnm22 $knm22 $pnm23 $knm23 $pnm24 $knm24 $pnm25 $knm25 $pnm30 $knm30 $pnm31 $knm31 $pnm32 $knm32 $pnm33 $knm33 $pnm34 $knm34 $pnm35 $knm35 $pnm40 $knm40 $pnm41 $knm41 $pnm42 $knm42 $pnm43 $knm43 $pnm44 $knm44 $pnm45 $knm45 $pnm50 $knm50 $pnm51 $knm51 $pnm52 $knm52 $pnm53 $knm53 $pnm54 $knm54 $pnm55 $knm55);
use vars qw($mode);

&decode;

#�T�C�g�T�[�o�[�ݒ���̓ǂݍ��݁B
if(-e "./root.ini"){
	open(IN,"./root.ini");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@root = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($site_name,$site_folder,$ftp_address,$html_host,$cgi_host,$ftp_id,$ftp_pass,$html_address,$cgi_address,$perl,$sendmail,$imgdir,$page_pass,$rootdir,$html_auth,$cgi_dir_auth,$cgi_file_auth,$dat_file_auth,$csv_file_auth) = split(/,/,$root[0]);
}

#�T�C�g���y�[�W���t�@�C���ǂݍ��݁B
if(-e "$rootdir/constraction/page.dat"){
	open(IN,"$rootdir/constraction/page.dat");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	@page_kind = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);
	($pnm00,$knm00,$pnm10,$knm10,$pnm11,$knm11,$pnm12,$knm12,$pnm13,$knm13,$pnm14,$knm14,$pnm15,$knm15,$pnm20,$knm20,$pnm21,$knm21,$pnm22,$knm22,$pnm23,$knm23,$pnm24,$knm24,$pnm25,$knm25,$pnm30,$knm30,$pnm31,$knm31,$pnm32,$knm32,$pnm33,$knm33,$pnm34,$knm34,$pnm35,$knm35,$pnm40,$knm40,$pnm41,$knm41,$pnm42,$knm42,$pnm43,$knm43,$pnm44,$knm44,$pnm45,$knm45,$pnm50,$knm50,$pnm51,$knm51,$pnm52,$knm52,$pnm53,$knm53,$pnm54,$knm54,$pnm55,$knm55) = split(/,/,$page_kind[0]);
}

my $kindBase = "";

for(my $category = 1 ; $category <= 5 ; $category++){

	for(my $page = 0 ; $page <= 5 ; $page++){

		my $kind       = "";
		my $page_title = "";

		#�y�[�W��ނł̕ϐ��ݒ�B
		if($category eq "1" && $page eq "0"){$kind = "$knm10"; $page_title = "$pnm10";}
		if($category eq "1" && $page eq "1"){$kind = "$knm11"; $page_title = "$pnm11";}
		if($category eq "1" && $page eq "2"){$kind = "$knm12"; $page_title = "$pnm12";}
		if($category eq "1" && $page eq "3"){$kind = "$knm13"; $page_title = "$pnm13";}
		if($category eq "1" && $page eq "4"){$kind = "$knm14"; $page_title = "$pnm14";}
		if($category eq "1" && $page eq "5"){$kind = "$knm15"; $page_title = "$pnm15";}
		if($category eq "2" && $page eq "0"){$kind = "$knm20"; $page_title = "$pnm20";}
		if($category eq "2" && $page eq "1"){$kind = "$knm21"; $page_title = "$pnm21";}
		if($category eq "2" && $page eq "2"){$kind = "$knm22"; $page_title = "$pnm22";}
		if($category eq "2" && $page eq "3"){$kind = "$knm23"; $page_title = "$pnm23";}
		if($category eq "2" && $page eq "4"){$kind = "$knm24"; $page_title = "$pnm24";}
		if($category eq "2" && $page eq "5"){$kind = "$knm25"; $page_title = "$pnm25";}
		if($category eq "3" && $page eq "0"){$kind = "$knm30"; $page_title = "$pnm30";}
		if($category eq "3" && $page eq "1"){$kind = "$knm31"; $page_title = "$pnm31";}
		if($category eq "3" && $page eq "2"){$kind = "$knm32"; $page_title = "$pnm32";}
		if($category eq "3" && $page eq "3"){$kind = "$knm33"; $page_title = "$pnm33";}
		if($category eq "3" && $page eq "4"){$kind = "$knm34"; $page_title = "$pnm34";}
		if($category eq "3" && $page eq "5"){$kind = "$knm35"; $page_title = "$pnm35";}
		if($category eq "4" && $page eq "0"){$kind = "$knm40"; $page_title = "$pnm40";}
		if($category eq "4" && $page eq "1"){$kind = "$knm41"; $page_title = "$pnm41";}
		if($category eq "4" && $page eq "2"){$kind = "$knm42"; $page_title = "$pnm42";}
		if($category eq "4" && $page eq "3"){$kind = "$knm43"; $page_title = "$pnm43";}
		if($category eq "4" && $page eq "4"){$kind = "$knm44"; $page_title = "$pnm44";}
		if($category eq "4" && $page eq "5"){$kind = "$knm45"; $page_title = "$pnm45";}
		if($category eq "5" && $page eq "0"){$kind = "$knm50"; $page_title = "$pnm50";}
		if($category eq "5" && $page eq "1"){$kind = "$knm51"; $page_title = "$pnm51";}
		if($category eq "5" && $page eq "2"){$kind = "$knm52"; $page_title = "$pnm52";}
		if($category eq "5" && $page eq "3"){$kind = "$knm53"; $page_title = "$pnm53";}
		if($category eq "5" && $page eq "4"){$kind = "$knm54"; $page_title = "$pnm54";}
		if($category eq "5" && $page eq "5"){$kind = "$knm55"; $page_title = "$pnm55";}

		if($kind ne "" && $page_title ne ""){

			$kindBase .= "$kind,$page_title,$category,$page\n";

		}

	}

}

if($mode eq "asp"){

#����ۑ��B
open(OUT, "> ./kindMake.dat");		# �������݃��[�h�ŊJ���B
flock(OUT, 2);				# ���b�N�m�F�B
seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g�B
print OUT $kindBase;			# �������ށB
truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���B
close(OUT);

}else{

#sendmail�̐ݒ�B
$sendmail = "/$sendmail";

#���[���A�h���X�B
my $mail_address = "research\@siteup-system.com";

#���[�������B
my $mail_subject = "check kind";

#���[���{���B
my $mail_body    = "";
$mail_body      .= "Please check URL $html_address\n";
$mail_body      .= "Please check DIR $site_folder\n";
$mail_body      .= $kindBase;

#JIS�R�[�h�ϊ��B
&jcode'convert(*mail_subject,'jis');
&jcode'convert(*mail_body,'sjis');

#���[���𑗐M�B
open(MAIL,"|$sendmail -t -f '$mail_address'") || &error("���[�����M�Ɏ��s���܂���");
print MAIL "Message-Id:\n";
print MAIL "To: $mail_address\n";
print MAIL "From: check\n";
print MAIL "Subject: $mail_subject\n";
print MAIL "MIME-Version: 1.0\n";
print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
print MAIL "Content-Transfer-Encoding: 7bit\n";
print MAIL "$mail_body";
close(MAIL);

undef($kindBase);

}

print "Content-type: text/html;\n\n";

##################################################
# decode
# �f�R�[�h�����B
##################################################
sub decode{

	my $buffer = "";
	my %in = ();

	if($ENV{'REQUEST_METHOD'} eq "POST"){

		#�f�[�^���M���@��POST�̏ꍇ�B

		#�o�C�i�����[�h�œǂނ悤�ɂ���B
		binmode(STDIN);

		#POST���ꂽ�f�[�^���o�C�i���Ńo�b�t�@�ɕۑ��B
		read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});

	}else{

		#�f�[�^���M���@��GET�̏ꍇ�B

		#�p�����[�^�����o�b�t�@�ɕۑ��B
		$buffer = $ENV{'QUERY_STRING'};

	}

	#���M���e���t�@�C���̏ꍇ�B
	if($ENV{'CONTENT_TYPE'} =~ /multipart\/form-data; boundary=(.*)/){

		#���M���e���t�@�C���̏ꍇ�B
		&uploadFile($buffer);

	}else{

		#���M���e���t�@�C���ł͂Ȃ��ꍇ�B

		#�o�b�t�@���u&�v�ʂŔz��ɕۑ��B
		my(@pairs) = split(/&/,$buffer);

		#�o�b�t�@�f�[�^�����B
		foreach my $pair(@pairs){

			#�o�b�t�@�f�[�^���p�����[�^���A�f�[�^�ɕ�����B
			my($name,$value) = split(/=/,$pair);

			#�p�����[�^���擾�̏����B
			$value =~ tr/+/ /;
			$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

			#�����R�[�h�ϊ��B
			&jcode'h2z_sjis(*value);
			&jcode'convert(*value,'sjis');

			#�^�O�����B(�N���X�T�C�g�X�N���v�e�B���O�Ή�)
			$value     =~ s/\"/&quot;/g;
			$value     =~ s/</&lt;/g;
			$value     =~ s/>/&gt;/g;
			$value     =~ s/\r\n/<br>/g;
			$value     =~ s/\r/<br>/g;
			$value     =~ s/\n/<br>/g;
			$value     =~ s/\r//g;
			$value     =~ s/\n//g;
			$value     =~ s/\,/\&\#44\;/g;
			$value     =~ s/\&/\#38;/g;
			$in{$name} = $value;

		}

		#�擾�����e�ϐ��ɑ���B
		$mode           = $in{'mode'};

	}
}

exit;
