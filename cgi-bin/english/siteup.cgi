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

#�ݒ���̕ϐ��̏��������s���B

#��{�ݒ���B
use vars qw($script %in $base_imgdir $page_imgdir $sendmail $location $admin $kind $page_name $title $mode $error);
#�T�C�g�T�[�o�[�ݒ���B
use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
#�J�e�S���[�ݒ���B
use vars qw(@constraction $cnm0 $cnm1 $cnm2 $cnm3 $cnm4 $cnm5 $url0 $brs0 $url1 $brs1 $url2 $brs2 $url3 $brs3 $url4 $brs4 $url5 $brs5 $cat0 $cat1 $cat2 $cat3 $cat4 $cat5);
#�T�C�g���y�[�W���B
use vars qw(@page_kind $pnm00 $knm00 $pnm10 $knm10 $pnm11 $knm11 $pnm12 $knm12 $pnm13 $knm13 $pnm14 $knm14 $pnm15 $knm15 $pnm20 $knm20 $pnm21 $knm21 $pnm22 $knm22 $pnm23 $knm23 $pnm24 $knm24 $pnm25 $knm25 $pnm30 $knm30 $pnm31 $knm31 $pnm32 $knm32 $pnm33 $knm33 $pnm34 $knm34 $pnm35 $knm35 $pnm40 $knm40 $pnm41 $knm41 $pnm42 $knm42 $pnm43 $knm43 $pnm44 $knm44 $pnm45 $knm45 $pnm50 $knm50 $pnm51 $knm51 $pnm52 $knm52 $pnm53 $knm53 $pnm54 $knm54 $pnm55 $knm55);
#�y�[�W�Ή�URL���B
use vars qw(@page_url $url10 $brs10 $url11 $brs11 $url12 $brs12 $url13 $brs13 $url14 $brs14 $url15 $brs15 $url20 $brs20 $url21 $brs21 $url22 $brs22 $url23 $brs23 $url24 $brs24 $url25 $brs25 $url30 $brs30 $url31 $brs31 $url32 $brs32 $url33 $brs33 $url34 $brs34 $url35 $brs35 $url40 $brs40 $url41 $brs41 $url42 $brs42 $url43 $brs43 $url44 $brs44 $url45 $brs45 $url50 $brs50 $url51 $brs51 $url52 $brs52 $url53 $brs53 $url54 $brs54 $url55 $brs55);
#�y�[�W�ꎞ��\�����B
use vars qw(@page_stop $ps10 $ps11 $ps12 $ps13 $ps14 $ps15 $ps20 $ps21 $ps22 $ps23 $ps24 $ps25 $ps30 $ps31 $ps32 $ps33 $ps34 $ps35 $ps40 $ps41 $ps42 $ps43 $ps44 $ps45 $ps50 $ps51 $ps52 $ps53 $ps54 $ps55);
#�T�C�g�S�̃v���p�e�B�ݒ���B
use vars qw(@property $ppt1 $ppt2 $ppt3 $ppt4 $ppt5 $ppt6 $ppt7 $ppt8 $ppt9 $ppt10 $ppt11 $ppt12 $ppt13 $ppt14 $ppt15 $ppt16 $ppt17);
#�T�C�g�S�̃y�[�W���C�A�E�g�ݒ���B
use vars qw(@all $all1 $all2 $all3 $all4 $all5 $all6 $all7 $all8 $all9);
#�T�C�g�S�̃w�b�_�[�ݒ���B
use vars qw(@header $hdr1 $hdr2 $hdr3 $hdr4 $hdr5 $hdr6 $hdr7 $hdr8 $hdr9 $hdr10 $hdr11 $hdr12 $hdr13 $hdr14 $hdr15 $hdr16 $hdr17 $hdr18 $hdr19 $hdr20 $hdr21 $hdr22 $hdr23 $hdr24 $hdr25 $hdr26 $hdr27 $hdr28 $hdr29 $hdr30 $hdr31 $hdr32 $hdr33);
#�i�r�Q�[�V�������ݒ���B
use vars qw(@navigation $ngs1 $ngs2 $ngs3 $ngs4 $ngs5 $ngs6 $ngs7 $ngs8);
#���j���[�{�^���ݒ���u0�ԁv�B
use vars qw(@button0 $btn1_0 $btn2_0 $btn3_0 $btn4_0 $btn5_0 $btn6_0 $btn7_0 $btn8_0 $btn9_0 $btn10_0 $btn11_0 $btn12_0 $btn13_0 $btn14_0 $btn15_0 $btn16_0 $btn17_0 $btn18_0 $btn19_0 $btn20_0 $btn21_0 $btn22_0 $btn23_0 $btn24_0 $btn25_0 $btn26_0 $btn27_0 $btn28_0 $btn29_0 $btn30_0 $btn31_0 $btn32_0 $btn33_0 $btn34_0 $btn35_0 $btn36_0);
#���j���[�{�^���ݒ���u1�ԁv�B
use vars qw(@button1 $btn1_1 $btn2_1 $btn3_1 $btn4_1 $btn5_1 $btn6_1 $btn7_1 $btn8_1 $btn9_1 $btn10_1 $btn11_1 $btn12_1 $btn13_1 $btn14_1 $btn15_1 $btn16_1 $btn17_1 $btn18_1 $btn19_1 $btn20_1 $btn21_1 $btn22_1 $btn23_1 $btn24_1 $btn25_1 $btn26_1 $btn27_1 $btn28_1 $btn29_1 $btn30_1 $btn31_1 $btn32_1 $btn33_1 $btn34_1 $btn35_1 $btn36_1);
#���j���[�{�^���ݒ���u2�ԁv�B
use vars qw(@button2 $btn1_2 $btn2_2 $btn3_2 $btn4_2 $btn5_2 $btn6_2 $btn7_2 $btn8_2 $btn9_2 $btn10_2 $btn11_2 $btn12_2 $btn13_2 $btn14_2 $btn15_2 $btn16_2 $btn17_2 $btn18_2 $btn19_2 $btn20_2 $btn21_2 $btn22_2 $btn23_2 $btn24_2 $btn25_2 $btn26_2 $btn27_2 $btn28_2 $btn29_2 $btn30_2 $btn31_2 $btn32_2 $btn33_2 $btn34_2 $btn35_2 $btn36_2);
#���j���[�{�^���ݒ���u3�ԁv�B
use vars qw(@button3 $btn1_3 $btn2_3 $btn3_3 $btn4_3 $btn5_3 $btn6_3 $btn7_3 $btn8_3 $btn9_3 $btn10_3 $btn11_3 $btn12_3 $btn13_3 $btn14_3 $btn15_3 $btn16_3 $btn17_3 $btn18_3 $btn19_3 $btn20_3 $btn21_3 $btn22_3 $btn23_3 $btn24_3 $btn25_3 $btn26_3 $btn27_3 $btn28_3 $btn29_3 $btn30_3 $btn31_3 $btn32_3 $btn33_3 $btn34_3 $btn35_3 $btn36_3);
#���j���[�{�^���ݒ���u4�ԁv�B
use vars qw(@button4 $btn1_4 $btn2_4 $btn3_4 $btn4_4 $btn5_4 $btn6_4 $btn7_4 $btn8_4 $btn9_4 $btn10_4 $btn11_4 $btn12_4 $btn13_4 $btn14_4 $btn15_4 $btn16_4 $btn17_4 $btn18_4 $btn19_4 $btn20_4 $btn21_4 $btn22_4 $btn23_4 $btn24_4 $btn25_4 $btn26_4 $btn27_4 $btn28_4 $btn29_4 $btn30_4 $btn31_4 $btn32_4 $btn33_4 $btn34_4 $btn35_4 $btn36_4);
#���j���[�{�^���ݒ���u5�ԁv�B
use vars qw(@button5 $btn1_5 $btn2_5 $btn3_5 $btn4_5 $btn5_5 $btn6_5 $btn7_5 $btn8_5 $btn9_5 $btn10_5 $btn11_5 $btn12_5 $btn13_5 $btn14_5 $btn15_5 $btn16_5 $btn17_5 $btn18_5 $btn19_5 $btn20_5 $btn21_5 $btn22_5 $btn23_5 $btn24_5 $btn25_5 $btn26_5 $btn27_5 $btn28_5 $btn29_5 $btn30_5 $btn31_5 $btn32_5 $btn33_5 $btn34_5 $btn35_5 $btn36_5);
#���[�U�[�F�؃y�[�W���B
use vars qw(@access $acs1 $acs2 $acs3 $acs4 $acs5 $acs6 $acs7 $acs8 $acs9 $acs10 $acs11 $acs12 $acs13 $acs14 $acs15 $acs16 $acs17 $acs18 $acs19 $acs20 $acs21 $acs22 $acs23 $acs24 $acs25 $acs26 $acs27 $acs28 $acs29 $acs30);
#�V���b�s���O�J�[�g���C�A�E�g�ݒ���B
use vars qw(@cartdesign $cds1 $cds2 $cds3 $cds4 $cds5 $cds6 $cds7 $cds8 $cds9 $cds10 $cds11 $cds12 $cds13 $cds14 $cds15 $cds16 $cds17 $cds18 $cds19 $cds20 $cds21 $cds22);
#�V���b�s���O�J�[�g�ݒ���B
use vars qw(@cart $crt1 $crt2 $crt3 $crt4 $crt5 $crt6 $crt7 $crt8 $crt9 $crt10 $crt11 $crt12 $crt13 $crt14 $crt15 $crt16 $crt17 $crt18 $crt19 $crt20 $crt21 $crt22 $crt23 $crt24 $crt25 $crt26 $crt27 $crt28 $crt29 $crt30 $crt31 $crt32 $crt33 $crt34 $crt35 $crt36 $crt37 $crt38 $crt39);
#�V���b�s���O�J�[�g�ʐM�̔����B
use vars qw(@low $low1 $low2 $low3 $low4 $low5 $low6 $low7 $low8 $low9 $low10 $low11 $low12 $low13 $low14 $low15 $low16 $low17 $low18 $low19 $low20);
#�V���b�s���O�J�[�g���͍��ڐݒ���B
use vars qw(@cartinput $cri1 $cri2 $cri3 $cri4 $cri5 $cri6 $cri7 $cri8 $cri9 $cri10);
#�₢���킹�t�H�[����{�ݒ���B
use vars qw(@ask $ask1 $ask2 $ask3 $ask4 $ask5 $ask6 $ask7 $ask8 $ask9 $ask10 $ask11 $ask12 $ask13 $ask14 $ask15 $ask16 $ask17 $ask18 $ask19 $ask20 $ask21);
#�₢���킹�t�H�[���f�U�C���ݒ���B
use vars qw(@askdesign $ads1 $ads2 $ads3 $ads4 $ads5 $ads6 $ads7 $ads8 $ads9 $ads10 $ads11 $ads12 $ads13 $ads14 $ads15 $ads16 $ads17 $ads18 $ads19 $ads20 $ads21 $ads22);
#�₢���킹�t�H�[�����͍��ڐݒ���B
use vars qw(@askinput $ain1 $ain2 $ain3 $ain4 $ain5 $ain6 $ain7 $ain8 $ain9 $ain10 $ain11 $ain12 $ain13 $ain14);

#�y�[�W�ʐݒ���̕ϐ��̏��������s���B

#�y�[�W���C�A�E�g�ݒ���B
use vars qw(@page $pge1 $pge2 $pge3 $pge4 $pge5 $pge6 $pge7 $pge8);
#�y�[�W�C���[�W�ݒ���B
use vars qw(@image $pig1 $pig2 $pig3 $pig4 $pig5 $pig6 $pig7 $pig8 $pig9 $pig10 $pig11 $pig12 $pig13 $pig14 $pig15 $pig16 $pig17 $pig18 $pig19 $pig20 $pig21 $pig22 $pig23 $pig24 $pig25 $pig26 $pig27 $pig28 $pig29 $pig30 $pig31 $pig32 $pig33 $pig34);
#�y�[�W�R�����g�ݒ���B
use vars qw(@comment $pct1 $pct2 $pct3 $pct4 $pct5 $pct6 $pct7 $pct8 $pct9 $pct10 $pct11 $pct12 $pct13 $pct14 $pct15 $pct16 $pct17 $pct18 $pct19 $pct20 $pct21 $pct22 $pct23);
#�L���̈惌�C�A�E�g�ݒ���B
use vars qw(@story $pst1 $pst2 $pst3 $pst4 $pst5 $pst6 $pst7 $pst8 $pst9 $pst10 $pst11 $pst12 $pst13);
#�L���`���K���ݒ���B
use vars qw(@rules $rls1 $rls2 $rls3 $rls4 $rls5 $rls6 $rls7 $rls8 $rls9 $rls10 $rls11 $rls12 $rls13 $rls14 $rls15 $rls16 $rls17 $rls18 $rls19 $rls20 $rls21 $rls22 $rls23 $rls24 $rls25 $rls26 $rls27 $rls28 $rls29 $rls30 $rls31 $rls32 $rls33 $rls34 $rls35 $rls36 $rls37 $rls38 $rls39 $rls40);
#�L�����e���t�@�C���ǂݍ��݁B
use vars qw(@storycomment);

use vars qw($ask6 $ask7 $crt42 $crt43);

#�X�N���v�g���̏������B
$script = "./siteup.cgi";

#���C�u�����̓ǂݍ��݁B
require './pl/jcode.pl';
require './pl/common.pl';
require './pl/header.pl';
require './pl/navi.pl';
require './pl/layout.pl';
require './pl/file.pl';

#�ݒ���ǂݍ��݁B
&fileRead;

#�G���[��ʕ\���B
if($error eq "99"){
	&errorSystem;
	exit;
}

#�摜�̃f�B���N�g���ݒ�B
$base_imgdir = "$imgdir/base";

#sendmail�̐ݒ�B
$sendmail = "/$sendmail";

#$imgdir��http�����݂���ꍇ�B
if($imgdir =~ /^http/){

	#����^�C�v�ݒ�B
	$location = "up";
}

#�Ǘ��҃��[���A�h���X�ݒ�B
$admin = "check\@siteup-system.com";

#�C���X�g�[�����ꂽ���Ƃ��Ǘ��҂Ƀ��[���Œʒm����B
if($rootdir eq '.'){

	#�t�@�C�������݂��Ȃ��ꍇ�B
	unless (-e "./site_log/up.dat"){

		#�`�F�b�N���ʐݒ�B
		my $check = "ok";

		#�f�B���N�g���p�[�~�b�V�����ݒ�B
		my $dir_permission = sprintf("%04d",oct($cgi_dir_auth));

		#���O�ۊǃf�B���N�g���쐬�B
		my $makedir = "./site_log";

		unless (-d $makedir){

			#�f�B���N�g���쐬�B
			mkdir($makedir,$dir_permission);

			#�p�[�~�b�V�����ݒ�B
			if($cgi_dir_auth eq ""){
				chmod(0755,$makedir);
			}else{
				chmod($dir_permission,$makedir);
			}
		}

		#�`�F�b�N���ʏ������݁B
		open(OUT, "> ./site_log/up.dat");	# �ǂݏ������[�h�ŊJ��
		flock(OUT, 2);				# ���b�N�m�F�B���b�N
		seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
		print OUT $check;			# ��������
		truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
		close(OUT);				# close����Ύ����Ń��b�N����

		#�f�B���N�g���p�[�~�b�V�����ݒ�B
		my $file_permission = sprintf("%04d",oct($dat_file_auth));

		#�p�[�~�b�V�����ݒ�B
		if($dat_file_auth eq ""){
			chmod(0755,"./site_log/up.dat");
		}else{
			chmod($file_permission,"./site_log/up.dat");
		}

		my $domain_mail = "";

		if($html_address =~ /^http\:\/\/www\./){
			$domain_mail = $html_address;
			$domain_mail =~ s/http\:\/\/www\.//g;
			$domain_mail = "info\@$domain_mail";
		}

		my $description_data = "";

		if($ppt16 ne ""){
			$description_data = $ppt16;
			$description_data =~ s/<br>//g;
		}

		##################################################
		# �擾���������X�p�X���[�h�̈Í����������s���B
		# �������@�F�e1�������e�XXOR�i�r���I�_���a�̌v�Z�j����蕶����i\x0c�j�ōs���B
		##################################################
		my $info = "";

		if(-e "./info.ini"){

			#�t�@�C���̏����擾���܂��B
			open(READ,"./info.ini");
			flock(READ,1);		#�t�@�C����ǂݏo�����b�N�B
			while(<READ>){
				$info = $_;
			}
			flock(READ,8);		# ���b�N�����B
			close(READ);

			my $len      = length($info);		#�ݒ�p�X���[�h�������擾
			my $char     = "\x0c";			#�����L�[
			my $tempData = "";			#�e���|�����ϐ�

			for (my $i = 0 ; $i < $len ; $i++){

				my $temp   = substr($info, $i , 1);

				$tempData .= $temp ^ $char;

			}

			$info = $tempData;

		}

		##################################################

		#���[�������B
		my $subject = "check address";

		#���[�������B
		my $mail_body = "";
		$mail_body   .= "Please check\n";
		$mail_body   .= "\n";
		$mail_body   .= "DOMAIN_MAIL $domain_mail\n";
		$mail_body   .= "\n";
		$mail_body   .= "URL $html_address\n";
		$mail_body   .= "\n";
		$mail_body   .= "DIR $site_folder\n";
		$mail_body   .= "\n";
		$mail_body   .= "TITLE $ppt9\n";
		$mail_body   .= "\n";
		$mail_body   .= "KEYWORD_1 $ppt10\n";
		$mail_body   .= "KEYWORD_2 $ppt11\n";
		$mail_body   .= "KEYWORD_3 $ppt12\n";
		$mail_body   .= "\n";
		$mail_body   .= "DESCRIPTION $description_data\n";

		if($info ne ""){

			my $info1 = substr($info, 0, 5);
			my $info2 = substr($info, 5, 5);
			my $info3 = substr($info, 10, 5);
			my $info4 = substr($info, 15, 5);

			$mail_body .= "\n";
			$mail_body .= "INFO $info1\-$info2\-$info3\-$info4\n";

		}

		#JIS�R�[�h�ϊ��B
		&jcode'convert(*subject,'jis');
		&jcode'convert(*mail_body,'sjis');

		#�T�C�g�������[�����M�B
		my $err;
		open(MAIL,"|$sendmail -t -f '$admin'") or $err = 1;
		if($err == 0){				#�G���[�łȂ��ꍇ�͒ʏ폈���B
			print MAIL "To: $admin\n";
			print MAIL "From: check\n";
			print MAIL "Subject: $subject\n";
			print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
			print MAIL "Content-Transfer-Encoding: 7bit\n";
			print MAIL "$mail_body\n";
			close(MAIL);
		}else{					#�G���[�ł���ꍇ�́u./site_log/up.dat�v���폜�B
			unlink("./site_log/up.dat");
		}
	}
}

#�f�R�[�h�����B
&decode;

#�����\���B
if($in{'category'} eq ""){
	$in{'category'} = "0";
}
if($in{'page'} eq ""){
	$in{'page'} = "0";
}

#�y�[�W�ʉ摜�̃f�B���N�g���ݒ�B
$page_imgdir  = "$imgdir/$in{'category'}$in{'page'}";

#�y�[�W�ʐݒ���ǂݍ��݁B
&fileReadPage;

#�y�[�W��ނł̕ϐ��ݒ�B
if($in{'category'} eq "0" && $in{'page'} eq "0"){$kind = "�g�b�v�y�[�W"; $page_name = "�g�b�v�y�[�W"; $title = "$ppt9";}
if($in{'category'} eq "1" && $in{'page'} eq "0"){$kind = "$knm10";       $page_name = "$pnm10";       $title = "$pnm10";}
if($in{'category'} eq "1" && $in{'page'} eq "1"){$kind = "$knm11";       $page_name = "$pnm11";       $title = "$pnm11";}
if($in{'category'} eq "1" && $in{'page'} eq "2"){$kind = "$knm12";       $page_name = "$pnm12";       $title = "$pnm12";}
if($in{'category'} eq "1" && $in{'page'} eq "3"){$kind = "$knm13";       $page_name = "$pnm13";       $title = "$pnm13";}
if($in{'category'} eq "1" && $in{'page'} eq "4"){$kind = "$knm14";       $page_name = "$pnm14";       $title = "$pnm14";}
if($in{'category'} eq "1" && $in{'page'} eq "5"){$kind = "$knm15";       $page_name = "$pnm15";       $title = "$pnm15";}
if($in{'category'} eq "2" && $in{'page'} eq "0"){$kind = "$knm20";       $page_name = "$pnm20";       $title = "$pnm20";}
if($in{'category'} eq "2" && $in{'page'} eq "1"){$kind = "$knm21";       $page_name = "$pnm21";       $title = "$pnm21";}
if($in{'category'} eq "2" && $in{'page'} eq "2"){$kind = "$knm22";       $page_name = "$pnm22";       $title = "$pnm22";}
if($in{'category'} eq "2" && $in{'page'} eq "3"){$kind = "$knm23";       $page_name = "$pnm23";       $title = "$pnm23";}
if($in{'category'} eq "2" && $in{'page'} eq "4"){$kind = "$knm24";       $page_name = "$pnm24";       $title = "$pnm24";}
if($in{'category'} eq "2" && $in{'page'} eq "5"){$kind = "$knm25";       $page_name = "$pnm25";       $title = "$pnm25";}
if($in{'category'} eq "3" && $in{'page'} eq "0"){$kind = "$knm30";       $page_name = "$pnm30";       $title = "$pnm30";}
if($in{'category'} eq "3" && $in{'page'} eq "1"){$kind = "$knm31";       $page_name = "$pnm31";       $title = "$pnm31";}
if($in{'category'} eq "3" && $in{'page'} eq "2"){$kind = "$knm32";       $page_name = "$pnm32";       $title = "$pnm32";}
if($in{'category'} eq "3" && $in{'page'} eq "3"){$kind = "$knm33";       $page_name = "$pnm33";       $title = "$pnm33";}
if($in{'category'} eq "3" && $in{'page'} eq "4"){$kind = "$knm34";       $page_name = "$pnm34";       $title = "$pnm34";}
if($in{'category'} eq "3" && $in{'page'} eq "5"){$kind = "$knm35";       $page_name = "$pnm35";       $title = "$pnm35";}
if($in{'category'} eq "4" && $in{'page'} eq "0"){$kind = "$knm40";       $page_name = "$pnm40";       $title = "$pnm40";}
if($in{'category'} eq "4" && $in{'page'} eq "1"){$kind = "$knm41";       $page_name = "$pnm41";       $title = "$pnm41";}
if($in{'category'} eq "4" && $in{'page'} eq "2"){$kind = "$knm42";       $page_name = "$pnm42";       $title = "$pnm42";}
if($in{'category'} eq "4" && $in{'page'} eq "3"){$kind = "$knm43";       $page_name = "$pnm43";       $title = "$pnm43";}
if($in{'category'} eq "4" && $in{'page'} eq "4"){$kind = "$knm44";       $page_name = "$pnm44";       $title = "$pnm44";}
if($in{'category'} eq "4" && $in{'page'} eq "5"){$kind = "$knm45";       $page_name = "$pnm45";       $title = "$pnm45";}
if($in{'category'} eq "5" && $in{'page'} eq "0"){$kind = "$knm50";       $page_name = "$pnm50";       $title = "$pnm50";}
if($in{'category'} eq "5" && $in{'page'} eq "1"){$kind = "$knm51";       $page_name = "$pnm51";       $title = "$pnm51";}
if($in{'category'} eq "5" && $in{'page'} eq "2"){$kind = "$knm52";       $page_name = "$pnm52";       $title = "$pnm52";}
if($in{'category'} eq "5" && $in{'page'} eq "3"){$kind = "$knm53";       $page_name = "$pnm53";       $title = "$pnm53";}
if($in{'category'} eq "5" && $in{'page'} eq "4"){$kind = "$knm54";       $page_name = "$pnm54";       $title = "$pnm54";}
if($in{'category'} eq "5" && $in{'page'} eq "5"){$kind = "$knm55";       $page_name = "$pnm55";       $title = "$pnm55";}

if($location eq "up" && $rls15 eq "on" && $rls16 ne "" && $kind eq "�t�H�[��1"){

	my @url_data = split(/\//,$imgdir);

	my $new_url_data = "";

	$new_url_data .= $rls16;

	for (my $i = 0 ; $i <= $#url_data ; $i++){

		if($i == 0 || $i == 1 || $i == 2){

		}else{

			$new_url_data .= "/$url_data[$i]";

		}

	}

	$base_imgdir = "$new_url_data\/base";

	$imgdir = $new_url_data;

	$page_imgdir = "$imgdir/$in{'category'}$in{'page'}";

}elsif($location eq "up" && $ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�1" && (($in{'ask'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "�ꗗ�ɖ߂�") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){

	my @url_data = split(/\//,$imgdir);

	my $new_url_data = "";

	$new_url_data .= $ask7;

	for (my $i = 0 ; $i <= $#url_data ; $i++){

		if($i == 0 || $i == 1 || $i == 2){

		}else{

			$new_url_data .= "/$url_data[$i]";

		}

	}

	$base_imgdir = "$new_url_data\/base";

	$imgdir = $new_url_data;

	$page_imgdir = "$imgdir/$in{'category'}$in{'page'}";

}elsif($location eq "up" && $ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�2" && (($in{'detail'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){

	my @url_data = split(/\//,$imgdir);

	my $new_url_data = "";

	$new_url_data .= $ask7;

	for (my $i = 0 ; $i <= $#url_data ; $i++){

		if($i == 0 || $i == 1 || $i == 2){

		}else{

			$new_url_data .= "/$url_data[$i]";

		}

	}

	$base_imgdir = "$new_url_data\/base";

	$imgdir = $new_url_data;

	$page_imgdir = "$imgdir/$in{'category'}$in{'page'}";

}elsif($location eq "up" && $crt42 eq "on" && $crt43 ne "" && ($in{'cart'} eq "order1" || $in{'cart'} eq "order2" || $in{'cart'} eq "order3" || $in{'cart'} eq "order4" || $in{'cart'} eq "order5" || $in{'cart'} eq "order6" || $in{'cart'} eq "add" || $in{'cart'} eq "del")){

	my @url_data = split(/\//,$imgdir);

	my $new_url_data = "";

	$new_url_data .= $crt43;

	for (my $i = 0 ; $i <= $#url_data ; $i++){

		if($i == 0 || $i == 1 || $i == 2){

		}else{

			$new_url_data .= "/$url_data[$i]";

		}

	}

	$base_imgdir = "$new_url_data\/base";

	$imgdir = $new_url_data;

	$page_imgdir = "$imgdir/$in{'category'}$in{'page'}";

}

if($in{'view'} eq "payment_nicos"){
	require './pl/cart0.pl';
}

#�y�[�W��ނł̃��W���[���̌Ăяo���B
if($kind eq "�g�b�v�y�[�W"){
	require './pl/use1.pl';
	require './pl/top.pl';
}
if($kind eq "�ėp1"){
	require './pl/use1.pl';
}
if($kind eq "�ėp2"){
	require './pl/use2.pl';
}
if($kind eq "���X�g1"){
	require './pl/list1.pl';
}
if($kind eq "���X�g2"){
	require './pl/list2.pl';
}
if($kind eq "���i�ē�1"){
	require './pl/item1.pl';
	require './pl/ask.pl';
}
if($kind eq "���i�ē�2"){
	require './pl/item2.pl';
	require './pl/ask.pl';
}
if($kind eq "�V���b�v1"){
	require './pl/shop1.pl';
	require './pl/cart0.pl';
	require './pl/cart1.pl';
	require './pl/cart2.pl';
	require './pl/cart3.pl';
	require './pl/cart4.pl';
	require './pl/cart5.pl';
	require './pl/cart6.pl';
	require './pl/cart.pl';
	require './pl/low.pl';
}
if($kind eq "�V���b�v2"){
	require './pl/shop2.pl';
	require './pl/cart0.pl';
	require './pl/cart1.pl';
	require './pl/cart2.pl';
	require './pl/cart3.pl';
	require './pl/cart4.pl';
	require './pl/cart5.pl';
	require './pl/cart6.pl';
	require './pl/cart.pl';
	require './pl/low.pl';
}
if($kind eq "��ЊT�v1"){
	require './pl/profile1.pl';
}
if($kind eq "�t�H�[��1"){
	require './pl/form1.pl';
	require './pl/form.pl';
}

#�\���T�u���[�`�������s�B
if($mode eq "html")		{&html;}
if($mode eq "low")		{&low;}
if($mode eq "access")		{&access;}
if($mode eq "access_check")	{&access_check;}
else				{&html;}

