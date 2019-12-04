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
##################################################
# ���O�t�@�C���̏o�͂��s���B
##################################################

use strict;
use KCatch;

##################################################
# �ݒ���̕ϐ��̏��������s���B
##################################################

#��{�ݒ���
use vars qw($error %in $page_name $user_host $makedir1 $makedir2 $makedir3 $makedir4 $remote_host $remote_addr $http_user_agent $buffer $dummy $http_referer $logfile $host_logfile $lockfile $date2 $lockdir1 $lockdir2 $retry);
use vars qw($f_log1 $f_log2 $f_log3 $f_log4 $f_log5 $f_log6);
use vars qw($s_log1 $s_log2 $s_log3 $s_log4 $s_log5 $s_log6);
use vars qw($t_log1 $t_log2 $t_log3 $t_log4 $t_log5 $t_log6);
use vars qw($no $host $flag $line $times $name $value @pairs $pair $dir_permission $file_permission);

#�T�C�g�T�[�o�[�ݒ���B
use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
#�T�C�g���y�[�W���B
use vars qw(@page_kind $pnm00 $knm00 $pnm10 $knm10 $pnm11 $knm11 $pnm12 $knm12 $pnm13 $knm13 $pnm14 $knm14 $pnm15 $knm15 $pnm20 $knm20 $pnm21 $knm21 $pnm22 $knm22 $pnm23 $knm23 $pnm24 $knm24 $pnm25 $knm25 $pnm30 $knm30 $pnm31 $knm31 $pnm32 $knm32 $pnm33 $knm33 $pnm34 $knm34 $pnm35 $knm35 $pnm40 $knm40 $pnm41 $knm41 $pnm42 $knm42 $pnm43 $knm43 $pnm44 $knm44 $pnm45 $knm45 $pnm50 $knm50 $pnm51 $knm51 $pnm52 $knm52 $pnm53 $knm53 $pnm54 $knm54 $pnm55 $knm55);

##################################################
# �T�C�g�T�[�o�[�ݒ���̓ǂݍ��݁B
##################################################

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

##################################################
# �T�C�g���y�[�W���t�@�C���ǂݍ��݁B
##################################################

open(IN,"./constraction/page.dat");
flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
my @page_kind = <IN>;
flock(IN,8);		#���b�N�����B
close(IN);

#�T�C�g���y�[�W���t�@�C�������B
my($pnm00,$knm00,$pnm10,$knm10,$pnm11,$knm11,$pnm12,$knm12,$pnm13,$knm13,$pnm14,$knm14,$pnm15,$knm15,$pnm20,$knm20,$pnm21,$knm21,$pnm22,$knm22,$pnm23,$knm23,$pnm24,$knm24,$pnm25,$knm25,$pnm30,$knm30,$pnm31,$knm31,$pnm32,$knm32,$pnm33,$knm33,$pnm34,$knm34,$pnm35,$knm35,$pnm40,$knm40,$pnm41,$knm41,$pnm42,$knm42,$pnm43,$knm43,$pnm44,$knm44,$pnm45,$knm45,$pnm50,$knm50,$pnm51,$knm51,$pnm52,$knm52,$pnm53,$knm53,$pnm54,$knm54,$pnm55,$knm55) = split(/,/,$page_kind[0]);

##################################################
# ���C�u�����̓ǂݍ��݁B
##################################################

require './pl/jcode.pl';

##################################################
# �f�R�[�h�����B
##################################################

if($ENV{'REQUEST_METHOD'} eq "POST"){		#�f�[�^���M���@��POST�̏ꍇ�B

	#�o�C�i�����[�h�œǂނ悤�ɂ���B
	binmode(STDIN);

	#POST���ꂽ�f�[�^���o�C�i���Ńo�b�t�@�ɕۑ��B
	read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});

}else{						#�f�[�^���M���@��GET�̏ꍇ�B

	#�p�����[�^�����o�b�t�@�ɕۑ��B
	$buffer = $ENV{'QUERY_STRING'};

}

#���M���e���t�@�C���ł͂Ȃ��ꍇ�B

#�o�b�t�@���u&�v�ʂŔz��ɕۑ��B
@pairs = split(/&/,$buffer);

#�o�b�t�@�f�[�^�����B
foreach $pair(@pairs){

	#�o�b�t�@�f�[�^���p�����[�^���A�f�[�^�ɕ�����B
	local($name,$value) = split(/=/,$pair);

	#�p�����[�^���擾�̏����B
	$value =~ tr/+/ /;
	$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

	#�f�[�^�擾�̏����B
	$name =~ tr/+/ /;
	$name =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

	#�����R�[�h�ϊ��B
	&jcode'h2z_sjis(*value);
	&jcode'convert(*value,'sjis');
	&jcode'convert(*name,'sjis');

	#�^�O�����B(�N���X�T�C�g�X�N���v�e�B���O�Ή�)
	$value =~ s/\"/&quot;/g;
	$value =~ s/</&lt;/g;
	$value =~ s/>/&gt;/g;

	#���s�����B
	$value =~ s/\r\n/<br>/g;
	$value =~ s/\r/<br>/g;
	$value =~ s/\n/<br>/g;

	#�f�[�^���������đ���B
	$in{$name} .= $value;

}
##################################################
# ���Ԃ̎擾�B
##################################################

#�^�C���]�[������{���ԂցB
$ENV{'TZ'} = "JST-9";

#���ԕϐ��ݒ�B
$times = time;

#�i�b�A���A���A���A���A�N�A�j���A�_�~�[�A�_�~�[�j
my($sec,$min,$hour,$mday,$mon,$year,$wday,$dummy,$dummy) = localtime($times);

#�����̃t�H�[�}�b�g�B[��F2000/01/01]
$date2 = sprintf("%04d\%02d\%02d",$year + 1900,$mon + 1,$mday);

##################################################
# �y�[�W��ނł̕ϐ��ݒ�B
##################################################

if($in{'page_name'} eq "")     {$page_name = "�g�b�v�y�[�W";}
elsif($in{'page_name'} eq "00"){$page_name = "�g�b�v�y�[�W";}
elsif($in{'page_name'} eq "10"){$page_name = "$pnm10";}
elsif($in{'page_name'} eq "11"){$page_name = "$pnm11";}
elsif($in{'page_name'} eq "12"){$page_name = "$pnm12";}
elsif($in{'page_name'} eq "13"){$page_name = "$pnm13";}
elsif($in{'page_name'} eq "14"){$page_name = "$pnm14";}
elsif($in{'page_name'} eq "15"){$page_name = "$pnm15";}
elsif($in{'page_name'} eq "20"){$page_name = "$pnm20";}
elsif($in{'page_name'} eq "21"){$page_name = "$pnm21";}
elsif($in{'page_name'} eq "22"){$page_name = "$pnm22";}
elsif($in{'page_name'} eq "23"){$page_name = "$pnm23";}
elsif($in{'page_name'} eq "24"){$page_name = "$pnm24";}
elsif($in{'page_name'} eq "25"){$page_name = "$pnm25";}
elsif($in{'page_name'} eq "30"){$page_name = "$pnm30";}
elsif($in{'page_name'} eq "31"){$page_name = "$pnm31";}
elsif($in{'page_name'} eq "32"){$page_name = "$pnm32";}
elsif($in{'page_name'} eq "33"){$page_name = "$pnm33";}
elsif($in{'page_name'} eq "34"){$page_name = "$pnm34";}
elsif($in{'page_name'} eq "35"){$page_name = "$pnm35";}
elsif($in{'page_name'} eq "40"){$page_name = "$pnm40";}
elsif($in{'page_name'} eq "41"){$page_name = "$pnm41";}
elsif($in{'page_name'} eq "42"){$page_name = "$pnm42";}
elsif($in{'page_name'} eq "43"){$page_name = "$pnm43";}
elsif($in{'page_name'} eq "44"){$page_name = "$pnm44";}
elsif($in{'page_name'} eq "45"){$page_name = "$pnm45";}
elsif($in{'page_name'} eq "50"){$page_name = "$pnm50";}
elsif($in{'page_name'} eq "51"){$page_name = "$pnm51";}
elsif($in{'page_name'} eq "52"){$page_name = "$pnm52";}
elsif($in{'page_name'} eq "53"){$page_name = "$pnm53";}
elsif($in{'page_name'} eq "54"){$page_name = "$pnm54";}
elsif($in{'page_name'} eq "55"){$page_name = "$pnm55";}

##################################################
# �z�X�g���擾�B
##################################################

$user_host = $ENV{'HTTP_HOST'};

##################################################
# ���O�L�^�B
##################################################

#���O�t�@�C�����B
$logfile = "./site_log/$date2.cgi";

#�z�X�g���O�t�@�C�����B
$host_logfile = "./site_analysis/reject_host.dat";

#���b�N�t�@�C�����B
$lockfile = "./site_log/lock.cgi";

#���b�N�f�B���N�g����1�B
$lockdir1 = "./lock";

#���b�N�f�B���N�g����2�B
$lockdir2 = "./lock2";

#���g���C�񐔃Z�b�g�B
$retry = 5;

if($user_host ne "localhost:11213" || $error eq ""){

	#�f�B���N�g���p�[�~�b�V�����ݒ�B
	$dir_permission = sprintf("%04d",oct($cgi_dir_auth));

	#���O�ۊǃf�B���N�g���쐬�B
	$makedir1 = "./site_log";
	unless (-d $makedir1){
		mkdir($makedir1,$dir_permission);
	}
	$makedir2 = "./site_analysis";
	unless (-d $makedir2){
		mkdir($makedir2,$dir_permission);
	}
	$makedir3 = "./site_log/form";
	unless (-d $makedir3){
		mkdir($makedir3,$dir_permission);
	}
	$makedir4 = "./site_log/cart";
	unless (-d $makedir4){
		mkdir($makedir4,$dir_permission);
	}

	if($cgi_dir_auth eq ""){
		chmod(0755,$makedir1);
		chmod(0755,$makedir2);
		chmod(0755,$makedir3);
		chmod(0755,$makedir4);
	}else{
		chmod($dir_permission,$makedir1);
		chmod($dir_permission,$makedir2);
		chmod($dir_permission,$makedir3);
		chmod($dir_permission,$makedir4);
	}

	#�T�[�o/�u���E�U���擾�B
	$remote_host     = $ENV{'REMOTE_HOST'};
	$remote_addr     = $ENV{'REMOTE_ADDR'};
	$http_user_agent = $ENV{'HTTP_USER_AGENT'};
	$http_user_agent =~ s/HTML,/HTML/g;

	#���M���ꂽ�f�[�^�𕪊��B
	if($buffer =~ /&&|&amp;&amp;/){
		($dummy,$http_referer) = split(/&&/,$ENV{'QUERY_STRING'});
	}
	if($http_referer eq ""){
		$http_referer = $ENV{'HTTP_REFERER'};
	}

	#�u,�v���u&#44;�v�ɒu���B
 	$http_referer    =~ s/\,/\&\#44\;/g;
 	$http_user_agent =~ s/\,/\&\#44\;/g;

	#�����[�g�z�X�g������A�������̓����[�g�z�X�g����IP�A�h���X�̏ꍇ�ɂ́AIP�A�h���X���烊���[�g�z�X�g���擾�B
	if($remote_host eq "" || $remote_host eq "$remote_addr"){
		$remote_host = gethostbyaddr(pack('C4',split(/\./,$remote_addr)),2);
	}

	#�����[�g�z�X�g������̏ꍇ�ɂ̓����[�g�z�X�g����IP�A�h���X�ɂ���B
	if($remote_host eq ""){
		$remote_host = $remote_addr;
	}

	#���b�N�̊J�n�B
	open(LOCK,"> $lockfile") or die "Can't open lockfile: $!";
	eval { flock(OUT,2); };

#	if($@){

#		#�f�B���N�g���쐬�B�o���Ȃ���Α҂B
#		while(!mkdir($lockdir1,$dir_permission)){

#			#5��_���̏ꍇ�B
#			if(--$retry <= 0){

#				#���b�N���������߂̔r���B
#				if(mkdir($lockdir2,$dir_permission)){

#					#�쐬���Ԃ�10���ȏ�O�̏ꍇ�B
#					if((-M $lockdir1) * 86400 > 600){

#						#���b�N����ւ��B
#						rename($lockdir2, $lockdir1) or exit; 

#						#��A�̏����ցB
#						last;

#					}else{

#						#�������b�N�폜�B
#						rmdir($lockdir2);

#					}
#				}

#				#������߂�B
#				exit;

#			}

#			#1�b�҂B
#			sleep(1);

#		}

#		#���O�t�@�C����ǂݍ��݁B
#		open(IN,"$logfile");
#		my @temp = <IN>;
#		close(IN);

#		#���O���̕����B
#		($f_log1,$f_log2,$f_log3,$f_log4,$f_log5,$f_log6) = split(/,/,$temp[0]);
#		($s_log1,$s_log2,$s_log3,$s_log4,$s_log5,$s_log6) = split(/,/,$temp[1]);
#		($t_log1,$t_log2,$t_log3,$t_log4,$t_log5,$t_log6) = split(/,/,$temp[2]);

#		if($page_name eq "$f_log1" && $remote_host eq "$f_log2"){exit;}
#		if($page_name eq "$s_log1" && $remote_host eq "$s_log2"){exit;}
#		if($page_name eq "$t_log1" && $remote_host eq "$t_log2"){exit;}

#		#�z�X�g���O�t�@�C����ǂݍ��݁B
#		open(IN,"$host_logfile");
#		my @reject = <IN>;
#		close(IN);

#		#�z�X�g���O���̐����B
#		foreach (@reject){

#			#�z�X�g���O���̕����B
#			($no,$host) = split(/,/,$_);

#			#�����}�b�`���O�t���O�������B
#			$flag = 0;

#			#�Ō��[CR/LF]�����B
#			chomp $host;

#			#�������s�B
#			if(index($host,$remote_host) >= 0){
#				$flag = 1;
#				exit;
#			}
#		}

#		if($remote_host     ne "" 
#		&& $remote_addr     ne "" 
#		&& $http_user_agent ne "" 
#		&& $http_referer    ne "" ){

#			#���O���`���B
#			$line = "$page_name,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

#			#�`���������O�t�@�C����V�����擪�ɒǋL�B
#			unshift(@temp,$line);

#			#���O�t�@�C�����������݁B
#			open(OUT,"> $logfile");			# �ǂݏ������[�h�ŊJ��
#			print OUT @temp;			# ��������
#			close(OUT);				# close

#			#�f�B���N�g���폜�B
#			rmdir($lockdir1);

#		}

#	}else{

		#���O�t�@�C����ǂݍ��݁B
		open(IN,"$logfile");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		my @temp = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		#���O���̕����B
		($f_log1,$f_log2,$f_log3,$f_log4,$f_log5,$f_log6) = split(/,/,$temp[0]);
		($s_log1,$s_log2,$s_log3,$s_log4,$s_log5,$s_log6) = split(/,/,$temp[1]);
		($t_log1,$t_log2,$t_log3,$t_log4,$t_log5,$t_log6) = split(/,/,$temp[2]);

		if($page_name eq "$f_log1" && $remote_host eq "$f_log2"){exit;}
		if($page_name eq "$s_log1" && $remote_host eq "$s_log2"){exit;}
		if($page_name eq "$t_log1" && $remote_host eq "$t_log2"){exit;}

		#�z�X�g���O�t�@�C����ǂݍ��݁B
		open(IN,"$host_logfile");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		my @reject = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		#�z�X�g���O���̐����B
		foreach (@reject){

			#�z�X�g���O���̕����B
			($no,$host) = split(/,/,$_);

			#�����}�b�`���O�t���O�������B
			$flag = 0;

			#�Ō��[CR/LF]�����B
			chomp $host;

			#�������s�B
			if(index($host,$remote_host) >= 0){
				$flag = 1;
				exit;
			}
		}

		if($remote_host     ne "" 
		&& $remote_addr     ne "" 
		&& $http_user_agent ne "" 
		&& $http_referer    ne "" ){

			#���O���`���B
			$line = "$page_name,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

			#�`���������O�t�@�C����V�����擪�ɒǋL�B
			unshift(@temp,$line);

			#���O�t�@�C�����������݁B
			open(OUT,"> $logfile")  or die "Can't open    : $!";		# �������݃��[�h�ŊJ��
			flock(OUT,2)            or die "Can't flock   : $!";		# ���b�N�m�F�B���b�N
			seek(OUT,0,0)           or die "Can't seek    : $!";		# �t�@�C���|�C���^��擪�ɃZ�b�g
			print OUT @temp         or die "Can't print   : $!";		# ��������
			truncate(OUT, tell(OUT))or die "Can't truncate: $!";		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
			close(OUT);							# close����Ύ����Ń��b�N����

			#�t�@�C���p�[�~�b�V�����ݒ�B
			$file_permission = sprintf("%04d",oct($cgi_file_auth));

			if($cgi_file_auth eq ""){
				chmod(0755,$logfile);
			}else{
				chmod($file_permission,$logfile);
			}
		}
#	}

	#���b�N�̏I���B
	close(LOCK); 

	#�t�@�C���p�[�~�b�V�����ݒ�B
	$file_permission = sprintf("%04d",oct($cgi_file_auth));

	if($cgi_dir_auth eq ""){
		chmod(0755,$lockfile);
	}else{
		chmod($file_permission,$lockfile);
	}

}

exit;
