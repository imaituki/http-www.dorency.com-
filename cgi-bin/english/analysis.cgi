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

#���O�t�@�C���̕��͕\�����s���B

use strict;
use KCatch;
use CGI;

#�ݒ���̕ϐ��̏��������s���B

#�ݒ���B
use vars qw($script $bar $max_view $logdir @log_files $pswd_file $reject_file $pv $pageing $debug_flg %engn_sw @youbi $cpu_start $cpu_end);

#��{���B
use vars qw($dummy $site_folder $ftp_id $html_address $imgdir $dat_file_auth);

#���O�t�@�C�����B
use vars qw(@ymd_files @ym_files);

#�f�R�[�h���B
use vars qw($buffer %in @filedata $mode $sunfirst $action $range $select $pswd $ymd_file $week_file $month_file $ym_file $sentence1 $cond1 $sentence2 $cond2 $sentence3 $cond3 $sentence4 $cond4 $sentence5 $cond5 $sentence6 $cond6 $sentence7 $cond7 $page $referrer $search_engin $search_keyword $host_name $os $agent $execution $type $submit $no);

#���O���B
use vars qw(@tmp1 @tmp2 @lines @lists %uniq_user $ymd);

#���ԃt�H�[�}�b���B
use vars qw($date1 $date2 $date3);

#�A�N�Z�X���B
use vars qw(%dms $dmp %youbis $youbip %hours $hourp %pages $pagep %referrer_servers $referrer_serverp %engins $enginp $word %keywords $keywordp %host_names $host_namep);
use vars qw($data1 $data2 $os_name %os_names $os_namep $agent_name %agent_names $agent_namep);

#���C�u�����̓ǂݍ��݁B
require './pl/jcode.pl';
require './pl/analysisAgent.pl';
require './pl/analysisParts.pl';

#�X�N���v�g���̏������B
$script = "./analysis.cgi";

#�O���t�摜�̃f�t�H���g�̕��B
$bar = 150;

#���O�̍ő�\�����B
$max_view = 100;

#���O�t�@�C���f�B���N�g���ݒ�B
$logdir = "./site_log/";

#���O�t�@�C�����擾�B
(opendir DIR,"$logdir");
@log_files = readdir(DIR);
close(DIR);

#�p�X���[�h�t�@�C���ݒ�B
$pswd_file = "./site_analysis/pswd.dat";

#�z�X�g�����t�@�C���ݒ�B
$reject_file = "./site_analysis/reject_host.dat";

#�y�[�W�r���[�ϐ��̏������B
$pv = 0;

#�y�[�W���O�̕\�������ݒ�B
$pageing = 1000;

#�f�o�b�O�t���O�ݒ�B
$debug_flg = "off";

#�����G���W�����̔z���ݒ�B
%engn_sw = ('yahoo.co.jp'=>'p','google.co.jp'=>'q','search.msn.co.jp'=>'q','excite.co.jp'=>'search','goo.ne.jp'=>'MT','fresheye.com'=>'kw','infoseek.co.jp'=>'qt');

#�j���̔z���ݒ�B
@youbi = ('��','��','��','��','��','��','�y');

#�^�C���]�[������{���ԂցB
$ENV{'TZ'} = "JST-9";

#�X�N���v�g�J�n���ԁB
$cpu_start = (times)[0];

##################################################
# �T�C�g�T�[�o�[�ݒ���̓ǂݍ��݁B
##################################################
if(-e "./root.ini"){
	open(IN,"./root.ini");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	my @root = <IN>;
	flock(IN,8);		#���b�N�����B
	close(IN);
	($dummy,$site_folder,$dummy,$dummy,$dummy,$ftp_id,$dummy,$html_address,$dummy,$dummy,$dummy,$imgdir,$dummy,$dummy,$dummy,$dummy,$dummy,$dat_file_auth,$dummy) = split(/,/,$root[0]);
}else{
	#�G���[��ʕ\���B
	&error("�V�X�e����񂪂���܂���B");
	exit;
}
##################################################
# ���O�t�@�C���������B
##################################################
foreach (@log_files){

	#���O�t�@�C�����}�b�`���O�B
	if($_ =~ /^(\d\d\d\d)(\d\d)(\d\d).cgi/){

		#�N�������擾�B
		push(@ymd_files,"$1/$2/$3");

		#�N�����d�����Ȃ������t���O�B
		my $flag = 0;

		foreach (@ym_files){
			if($_ eq "$1/$2"){
				$flag = 1;
			}
		}

		if($flag == 0){
			#�N�����擾�B
			push(@ym_files,"$1/$2");
		}
	}
}
##################################################
# �f�R�[�h�����B
##################################################
&decode;
##################################################
# �w�b�_�[�\���B
##################################################
if($mode ne "download"){
	&header;
}
##################################################
# �\�����[�h���ʁB
##################################################
if($mode eq ""){
	#�����\���B
	&login;
}else{
	if($sunfirst eq ""){
		#���O�C���o�ߎ��Ԃ��Ȃ��ꍇ�B
		&login;
	}else{

		if($sunfirst ne "analysis"){

			#���O�C���o�ߎ��ԃ`�F�b�N�B
			my $check_login = &checkLogin($sunfirst);

			#���O�C�����Ԃ��啝�ɉ߂��Ă����烍�O�C����ʕ\���B
			if($check_login ne "1"){
				&login;
			}
		}
	}

	if($mode eq "login"){
		if($pswd eq ""){
			#�p�X���[�h��񂪂Ȃ��ꍇ�B
			&login;
		}elsif($pswd ne ""){

			#�p�X���[�h�`�F�b�N�B
			my $check_pswd = &checkPswd($pswd);

			if($check_pswd ne "1"){
				#�p�X���[�h���F�؂ł��Ȃ�������G���[��ʕ\���B
				&error("�p�X���[�h���F�؂ł��܂���");
			}else{
				#��̓��[�h��ʕ\���B
				&index;
			}
		}
	}

	if($mode eq "wait"){
		if($submit eq "�Ǘ���ʂ�"){
			#�Ǘ���ʕ\���B
			&admin;
		}else{
			#��̓��[�h���ʑ҂��\���B
			&putWait;
		}
	}
}
##################################################
# ���ł̃A�N�Z�X��́B
##################################################
if($range eq "day"){

	#���O�t�@�C�����}�b�`���O�B
	$ymd_file =~ /^(\d\d\d\d)\/(\d\d)\/(\d\d)/;

	#���O�t�@�C����ǂݍ��݁B
	open(IN,"<$logdir$1$2$3.cgi");
	flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
	while(<IN>){

		#�Ō��[CR/LF]�����B
		chomp($_);

		#�f�[�^�����݂��Ă����ꍇ�B
		if($_ ne ""){

			#���O���𕪊��B
			my(@log_data) = split(/,/,$_);

			#���O��񂪑S�đ��݂��Ă���ꍇ�͐������f�[�^�Ƃ��Ď�舵���B
			if($log_data[0] ne "" 
			&& $log_data[1] ne "" 
			&& $log_data[2] ne "" 
			&& $log_data[3] ne "" 
			&& $log_data[4] ne "" 
			&& $log_data[5] ne "" 
			&& $log_data[5] =~ /^\d{10}/){

				#�u���E�U���̒u���B#�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
				$log_data[4] =~ s/</&lt;/g;
				$log_data[4] =~ s/>/&gt;/g;
				$log_data[4] =~ s/\&\#44\;/\,/g;

				my $tmp_page_name       = "";
				my $tmp_referrer_server = "";
				my $tmp_engin           = "";
				my $tmp_keyword         = "";
				my $tmp_host_name       = "";
				my $tmp_os              = "";
				my $tmp_agent           = "";
				my $tmp_time            = "";
				my $line_data           = "";

				if($sentence1 eq ""
				&& $sentence2 eq ""
				&& $sentence3 eq ""
				&& $sentence4 eq ""
				&& $sentence5 eq ""
				&& $sentence6 eq ""
				&& $sentence7 eq ""){

					#�y�[�W�����擾���邱�Ƃ��ł����L���ȃ��O�����B
					$tmp_page_name = $log_data[0];

					#�����N�����擾���邱�Ƃ��ł����L���ȃ��O�����B
					if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
						$tmp_referrer_server = &getReferrerServer($log_data[4]);
					}

					#�����T�C�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
					$tmp_engin = &getSearchEngin($log_data[4]);

					#�����L�[���[�h���擾���邱�Ƃ��ł����L���ȃ��O�����B
					if($log_data[4] =~ /\?/){
						$tmp_keyword = &getSearchWord($log_data[4]);
					}

					#�z�X�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
					$tmp_host_name = $log_data[1];

					my ($tmp1,$tmp2) = &getAgentName($log_data[3]);

					#OS���擾���邱�Ƃ��ł����L���ȃ��O�����B
					$tmp_os = $tmp1;

					#�u���E�U���擾���邱�Ƃ��ł����L���ȃ��O�����B
					$tmp_agent = $tmp2;

					$tmp_time  = $log_data[5];
					$line_data = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

					push(@tmp1,$log_data[1]);
					push(@tmp2,$log_data[3]);
					push(@lines,$line_data);

				}else{

					$tmp_page_name       = $log_data[0];
					if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
						$tmp_referrer_server = &getReferrerServer($log_data[4]);
					}
					$tmp_engin           = &getSearchEngin($log_data[4]);
					if($log_data[4] =~ /\?/){
						$tmp_keyword = &getSearchWord($log_data[4]);
					}
					$tmp_host_name       = $log_data[1];
					($tmp_os,$tmp_agent) = &getAgentName($log_data[3]);
					$tmp_time            = $log_data[5];
					$line_data           = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

					my $examination = &examination($line_data);

					if($examination == 1){

						push(@tmp1,$log_data[1]);
						push(@tmp2,$log_data[3]);
						push(@lines,$line_data);

					}
				}
			}
		}
	}
	flock(IN,8);		#���b�N�����B
	close(IN);

	#���O�����\�[�g�B
	@lines = @lines[sort {$tmp1[$a] cmp $tmp1[$b] or $tmp2[$a] cmp $tmp2[$b]} 0 .. $#tmp1];

	#��r���O�t�@�C�������������B
	my @tmp_data = ();

	#���O��񐸍��t���O���������B
	my $equ = 0;

	#�A�N�Z�X�����������B
	my $count = 0;

	#���O�t�@�C���𐸍��B
	foreach (@lines){

		#���O�t�@�C�����𕪊��B
		my (@log_data) = split(/\,/,$_);

		#�z�X�g���A�u���E�U��񂪓����ꍇ�̓J�E���g���Ȃ��B
		if($log_data[4] eq "$tmp_data[0]" && "$log_data[6]" eq "$tmp_data[1]"){

			#���O��񐸍��t���O�𗧂Ă�B
			$equ = 1;

		}

		if($equ == 0){

			#�z�X�g���A�u���E�U���̎擾�B
			@tmp_data = ($log_data[4],$log_data[6]);

			#�A�N�Z�X���擾�B
			$count++;

		}else{

			#���O��񐸍��t���O���������B
			$equ = 0;

		}
	}


	#��/�����`���B
	my $md = "$2/$3";

	#���t�t���z����`���B
	$uniq_user{$md} = $count;

	#�z����������B
	undef(@tmp_data);
	undef(@tmp1);
	undef(@tmp2);

	#�z������B
	push(@lists,@lines);

	#�z����������B
	undef(@lines);

	#�\���̐ݒ�B
	$ymd = "$1�N$2��$3��";
}
##################################################
# �T�ł̃A�N�Z�X��́B
##################################################
if($range eq "week"){

	#���ʂ̉�͐��̏������B
	my $i = 0;

	#[�`1�T�ԑO]�ł̉�́B
	if($week_file eq "0") {$i = 0;}

	#[1�T�ԑO�`2�T�ԑO]�ł̉�́B

	if($week_file eq "7") {$i = 7;}
	#[2�T�ԑO�`3�T�ԑO]�ł̉�́B

	if($week_file eq "14"){$i = 14;}

	#[3�T�ԑO�`4�T�ԑO]�ł̉�́B
	if($week_file eq "21"){$i = 21;}

	#���̔z��̌`���B
	my @day = (0..6);

	#�N�������̏������B
	my @week_files = ();

	#���̔z��𐸍����N�������擾�B
	foreach (@day){

		#���Ԑ��̃J�E���g�B
		my $count = 24 * $i;

		#localtime�֐��ō������������t���擾�B�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
		my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime(time - $count * 3600);

		#�t�H�[�}�b�g�ύX�B�i20060101�j
		my $date = sprintf("%04d%02d%02d",$year + 1900,$month + 1,$mday);

		#�N������z��ɑ���B
		push(@week_files,"$date");

		#�J�E���g�A�b�v�B
		$i++;
	}

	#�擾�����N�����𐸍��B
	foreach my $y(sort @week_files){

		#�t�@�C���L�����ʁB
		unless(-e "$logdir$y.cgi"){
			next;
		}

		#���O�t�@�C����ǂݍ��݁B
		open(IN,"<$logdir$y.cgi");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		while(<IN>){

			#�Ō��[CR/LF]�����B
			chomp($_);

			#�f�[�^�����݂��Ă����ꍇ�B
			if($_ ne ""){

				#���O���𕪊��B
				my (@log_data) = split(/,/,$_);

				#���O��񂪑S�đ��݂��Ă���ꍇ�͐������f�[�^�Ƃ��Ď�舵���B
				if($log_data[0] ne "" 
				&& $log_data[1] ne "" 
				&& $log_data[2] ne "" 
				&& $log_data[3] ne "" 
				&& $log_data[4] ne "" 
				&& $log_data[5] ne "" 
				&& $log_data[5] =~ /^\d{10}/){

					#�u���E�U���̒u���B#�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
					$log_data[4] =~ s/</&lt;/g;
					$log_data[4] =~ s/>/&gt;/g;
					$log_data[4] =~ s/\&\#44\;/\,/g;

					my $tmp_page_name       = "";
					my $tmp_referrer_server = "";
					my $tmp_engin           = "";
					my $tmp_keyword         = "";
					my $tmp_host_name       = "";
					my $tmp_os              = "";
					my $tmp_agent           = "";
					my $tmp_time            = "";
					my $line_data           = "";

					if($sentence1 eq ""
					&& $sentence2 eq ""
					&& $sentence3 eq ""
					&& $sentence4 eq ""
					&& $sentence5 eq ""
					&& $sentence6 eq ""
					&& $sentence7 eq ""){

						#�y�[�W�����擾���邱�Ƃ��ł����L���ȃ��O�����B
						$tmp_page_name = $log_data[0];

						#�����N�����擾���邱�Ƃ��ł����L���ȃ��O�����B
						if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
							$tmp_referrer_server = &getReferrerServer($log_data[4]);
						}

						#�����T�C�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
						$tmp_engin = &getSearchEngin($log_data[4]);

						#�����L�[���[�h���擾���邱�Ƃ��ł����L���ȃ��O�����B
						if($log_data[4] =~ /\?/){
							$tmp_keyword = &getSearchWord($log_data[4]);
						}

						#�z�X�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
						$tmp_host_name = $log_data[1];

						my ($tmp1,$tmp2) = &getAgentName($log_data[3]);

						#OS���擾���邱�Ƃ��ł����L���ȃ��O�����B
						$tmp_os = $tmp1;

						#�u���E�U���擾���邱�Ƃ��ł����L���ȃ��O�����B
						$tmp_agent = $tmp2;

						$tmp_time  = $log_data[5];
						$line_data = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

						push(@tmp1,$log_data[1]);
						push(@tmp2,$log_data[3]);
						push(@lines,$line_data);

					}else{

						$tmp_page_name       = $log_data[0];
						if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
							$tmp_referrer_server = &getReferrerServer($log_data[4]);
						}
						$tmp_engin           = &getSearchEngin($log_data[4]);
						if($log_data[4] =~ /\?/){
							$tmp_keyword = &getSearchWord($log_data[4]);
						}
						$tmp_host_name       = $log_data[1];
						($tmp_os,$tmp_agent) = &getAgentName($log_data[3]);
						$tmp_time            = $log_data[5];
						$line_data           = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

						my $examination = &examination($line_data);

						if($examination == 1){

							push(@tmp1,$log_data[1]);
							push(@tmp2,$log_data[3]);
							push(@lines,$line_data);

						}
					}
				}
			}
		}
		flock(IN,8);		#���b�N�����B
		close(IN);

		#���O�����\�[�g�B
		@lines = @lines[sort {$tmp1[$a] cmp $tmp1[$b] or $tmp2[$a] cmp $tmp2[$b]} 0 .. $#tmp1];

		#��r���O�t�@�C�������������B
		my @tmp_data = ();

		#���O��񐸍��t���O���������B
		my $equ = 0;

		#�A�N�Z�X�����������B
		my $count = 0;

		#���O�t�@�C���𐸍��B
		foreach (@lines){

			#���O�t�@�C�����𕪊��B
			my (@log_data) = split(/\,/,$_);

			#�z�X�g���A�u���E�U��񂪓����ꍇ�̓J�E���g���Ȃ��B
			if($log_data[4] eq "$tmp_data[0]" && "$log_data[6]" eq "$tmp_data[1]"){

				#���O��񐸍��t���O�𗧂Ă�B
				$equ = 1;

			}

			if($equ == 0){

				#�z�X�g���A�u���E�U���̎擾�B
				@tmp_data = ($log_data[4],$log_data[6]);

				#�A�N�Z�X���擾�B
				$count++;

			}else{

				#���O��񐸍��t���O���������B
				$equ = 0;

			}
		}

		#���ƌ����擾�B
		my $day   = substr($y,6,2);
		my $month = substr($y,4,2);

		#��/�����`���B
		my $md = "$month/$day";

		#���t�t���z����`���B
		$uniq_user{$md} = $count;

		#�z����������B
		undef(@tmp_data);
		undef(@tmp1);
		undef(@tmp2);

		#�z������B
		push(@lists,@lines);

		#�z����������B
		undef(@lines);
	}

	#�\���̐ݒ�B
	my $year1  = substr(@week_files[0],0,4);
	my $month1 = substr(@week_files[0],4,2);
	my $day1   = substr(@week_files[0],6,2);

	my $tmp_ymd = pop @week_files;
	my $year2   = substr($tmp_ymd,0,4);
	my $month2  = substr($tmp_ymd,4,2);
	my $day2    = substr($tmp_ymd,6,2);

	$ymd = "$year2�N$month2��$day2���`$year1�N$month1��$day1��";
}
##################################################
# ���ł̃A�N�Z�X��́B
##################################################
if($range eq "month"){

	#�N�����擾�B
	my ($year,$month) = split(/\//,$ym_file);

	#���O�t�@�C���������B
	foreach (sort @log_files){

		#���O�t�@�C�����}�b�`���O�B
		if($_ =~ /^$year$month(\d\d).cgi/){

			#���O�t�@�C����ǂݍ��݁B
			open(IN,"$logdir$year$month$1".".cgi");
			flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
			foreach (<IN>){

				#�Ō��[CR/LF]�����B
				chomp($_);

				#�f�[�^�����݂��Ă����ꍇ�B
				if($_ ne ""){

					#���O���𕪊��B
					my (@log_data) = split(/,/,$_);

					#���O��񂪑S�đ��݂��Ă���ꍇ�͐������f�[�^�Ƃ��Ď�舵���B
					if($log_data[0] ne "" 
					&& $log_data[1] ne "" 
					&& $log_data[2] ne "" 
					&& $log_data[3] ne "" 
					&& $log_data[4] ne "" 
					&& $log_data[5] ne "" 
					&& $log_data[5] =~ /^\d{10}/){

						#�u���E�U���̒u���B#�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
						$log_data[4] =~ s/</&lt;/g;
						$log_data[4] =~ s/>/&gt;/g;
						$log_data[4] =~ s/\&\#44\;/\,/g;

						my $tmp_page_name       = "";
						my $tmp_referrer_server = "";
						my $tmp_engin           = "";
						my $tmp_keyword         = "";
						my $tmp_host_name       = "";
						my $tmp_os              = "";
						my $tmp_agent           = "";
						my $tmp_time            = "";
						my $line_data           = "";

						if($sentence1 eq ""
						&& $sentence2 eq ""
						&& $sentence3 eq ""
						&& $sentence4 eq ""
						&& $sentence5 eq ""
						&& $sentence6 eq ""
						&& $sentence7 eq ""){

							#�y�[�W�����擾���邱�Ƃ��ł����L���ȃ��O�����B
							$tmp_page_name = $log_data[0];

							#�����N�����擾���邱�Ƃ��ł����L���ȃ��O�����B
							if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
								$tmp_referrer_server = &getReferrerServer($log_data[4]);
							}

							#�����T�C�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
							$tmp_engin = &getSearchEngin($log_data[4]);

							#�����L�[���[�h���擾���邱�Ƃ��ł����L���ȃ��O�����B
							if($log_data[4] =~ /\?/){
								$tmp_keyword = &getSearchWord($log_data[4]);
							}

							#�z�X�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
							$tmp_host_name = $log_data[1];

							my ($tmp1,$tmp2) = &getAgentName($log_data[3]);

							#OS���擾���邱�Ƃ��ł����L���ȃ��O�����B
							$tmp_os = $tmp1;

							#�u���E�U���擾���邱�Ƃ��ł����L���ȃ��O�����B
							$tmp_agent = $tmp2;

							$tmp_time  = $log_data[5];
							$line_data = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

							push(@tmp1,$log_data[1]);
							push(@tmp2,$log_data[3]);
							push(@lines,$line_data);

						}else{

							$tmp_page_name       = $log_data[0];
							if($log_data[4] =~ /^(s?https?|ftp|file)(:\/\/)/){
								$tmp_referrer_server = &getReferrerServer($log_data[4]);
							}
							$tmp_engin           = &getSearchEngin($log_data[4]);
							if($log_data[4] =~ /\?/){
								$tmp_keyword = &getSearchWord($log_data[4]);
							}
							$tmp_host_name       = $log_data[1];
							($tmp_os,$tmp_agent) = &getAgentName($log_data[3]);
							$tmp_time            = $log_data[5];
							$line_data           = "$tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time";

							my $examination = &examination($line_data);

							if($examination == 1){

								push(@tmp1,$log_data[1]);
								push(@tmp2,$log_data[3]);
								push(@lines,$line_data);

							}
						}
					}
				}
			}
			flock(IN,8);		#���b�N�����B
			close(IN);

			#���O�����\�[�g�B
			@lines = @lines[sort {$tmp1[$a] cmp $tmp1[$b] or $tmp2[$a] cmp $tmp2[$b]} 0 .. $#tmp1];

			#��r���O�t�@�C�������������B
			my @tmp_data = ();

			#���O��񐸍��t���O���������B
			my $equ = 0;

			#�A�N�Z�X�����������B
			my $count = 0;

			#���O�t�@�C���𐸍��B
			foreach (@lines){

				#���O�t�@�C�����𕪊��B
				my (@log_data) = split(/\,/,$_);

				#�z�X�g���A�u���E�U��񂪓����ꍇ�̓J�E���g���Ȃ��B
				if($log_data[4] eq "$tmp_data[0]" && "$log_data[6]" eq "$tmp_data[1]"){

					#���O��񐸍��t���O�𗧂Ă�B
					$equ = 1;

				}

				if($equ == 0){

					#�z�X�g���A�u���E�U���̎擾�B
					@tmp_data = ($log_data[4],$log_data[6]);

					#�A�N�Z�X���擾�B
					$count++;

				}else{

					#���O��񐸍��t���O���������B
					$equ = 0;

				}
			}

			#��/�����`���B
			my $md = "$month/$1";

			#���t�t���z����`���B
			$uniq_user{$md} = $count;

			#�z����������B
			undef(@tmp_data);
			undef(@tmp1);
			undef(@tmp2);

			#�z������B
			push(@lists,@lines);

			#�z����������B
			undef(@lines);
		}
	}

	#�z����������B
	undef(@log_files);

	#�\���̐ݒ�B
	$ymd = "$year�N$month��";
}
##################################################
# �A�N�Z�X���̐����B
##################################################
if($select eq "log"){

	my @sort = ();

	foreach my $log(@lists){

		#�Ō��[CR/LF]�����B
		chomp($log);

		#�A�N�Z�X���̕����B
		my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$log);

		push(@sort,$tmp_time);

	}

	@lists = @lists[sort {$sort[$a] <=> $sort[$b]} 0 .. $#sort];

	undef(@sort);

}elsif($select ne "log"){

	foreach my $log(@lists){

		#�y�[�W���J�E���g�A�b�v�B
		$pv++;

		#�Ō��[CR/LF]�����B
		chomp($log);

		#�A�N�Z�X���̕����B
		my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$log);

		#���t�̃t�H�[�}�b�g�ύX�B
		my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime($tmp_time);

		#���̌����킹�B
		if($mday < 10){
			$mday = "0$mday";
		}

		#���́i+1�j�B
		$month = $month + 1;

		#���̌����킹�B
		if($month < 10){
			$month = "0$month";
		}

		#��/�����`���B
		my $md = "$month/$mday";

		#���ʃ��O�����B
		if($md ne ""){

			#���ʃA�N�Z�X���B
			$dms{($md)[0]}++;

			#�A�N�Z�X���B
			$dmp++;
		}

		#�j���ʃ��O�����B
		if($wday ne ""){

			#�j���ʃA�N�Z�X���B
			$youbis{($wday)[0]}++;

			#�A�N�Z�X���B
			$youbip++;
		}

		#���̌����킹�B
		if($hour < 10){
			$hour = "0$hour";
		}

		#���ԕʃ��O�����B
		if($hour ne ""){

			#���ԕʃA�N�Z�X���B
			$hours{($hour)[0]}++;

			#�A�N�Z�X���B
			$hourp++;
		}

		#�y�[�W�����擾���邱�Ƃ��ł����L���ȃ��O�����B
		if($page eq "on"){

			if($tmp_page_name ne ""){

				#�y�[�W�ʃA�N�Z�X���B
				$pages{($tmp_page_name)[0]}++;

				#�A�N�Z�X���B
				$pagep++;
			}
		}

		#�����N�����擾���邱�Ƃ��ł����L���ȃ��O�����B
		if($referrer eq "on"){

			if($tmp_referrer_server ne ""){

				#�����N���ʃA�N�Z�X���B
				$referrer_servers{($tmp_referrer_server)[0]}++;

				#�A�N�Z�X���B
				$referrer_serverp++;
			}
		}

		#�����T�C�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
		if($search_engin eq "on"){

			if($tmp_engin ne ""){

				#�����T�C�g�ʃA�N�Z�X���B
				$engins{($tmp_engin)[0]}++;

				#�A�N�Z�X���B
				$enginp++;
			}
		}

		#�����L�[���[�h���擾���邱�Ƃ��ł����L���ȃ��O�����B
		if($search_keyword eq "on"){

			if($tmp_keyword ne ""){

				#�����L�[���[�h�ʃA�N�Z�X���B
				$keywords{($tmp_keyword)[0]}++;

				#�A�N�Z�X���B
				$keywordp++;
			}
		}

		#�z�X�g���擾���邱�Ƃ��ł����L���ȃ��O�����B
		if($host_name eq "on"){

			if($tmp_host_name ne ""){

				#�z�X�g�ʃA�N�Z�X���B
				$host_names{($tmp_host_name)[0]}++;

				#�A�N�Z�X���B
				$host_namep++;
			}
		}

		#OS���擾���邱�Ƃ��ł����L���ȃ��O�����B
		if($os eq "on"){

			if($tmp_os ne ""){

				#OS�ʃA�N�Z�X���B
				$os_names{($tmp_os)[0]}++;

				#�A�N�Z�X���B
				$os_namep++;
			}
		}

		#�u���E�U���擾���邱�Ƃ��ł����L���ȃ��O�����B
		if($agent eq "on"){

			if($tmp_agent ne ""){

				#�u���E�U�ʃA�N�Z�X���B
				$agent_names{($tmp_agent)[0]}++;

				#�A�N�Z�X���B
				$agent_namep++;
			}
		}
	}
}
##################################################
# �e���ڂ̃f�[�^�������ꍇ�̏������B
##################################################
if($pagep eq "")           {$pagep            = 0;}
if($referrer_serverp eq ""){$referrer_serverp = 0;}
if($enginp eq "")          {$enginp           = 0;}
if($keywordp eq "")        {$keywordp         = 0;}
if($host_namep eq "")      {$host_namep       = 0;}
if($os_namep eq "")        {$os_namep         = 0;}
if($agent_namep eq "")     {$agent_namep      = 0;}
##################################################
# �\�����[�h���ʁB
##################################################
if($mode ne ""){

	if($mode eq "index"){
		if($type eq "page")          {&logView("page");}
		if($type eq "referrerServer"){&logView("referrerServer");}
		if($type eq "search_engin")  {&logView("search_engin");}
		if($type eq "os")            {&logView("os");}
		if($type eq "agent")         {&logView("agent");}
		if($type eq "searchWord")    {&logView("searchWord");}
		if($type eq "hostName")      {&logView("hostName");}
		if($type eq ""){
			if($select eq "graph"){
				#�A�N�Z�X�����̏W�v�\���B
				&putAnalysis;
			}elsif($select eq "log"){
				#�A�N�Z�X�����̈ꗗ�\���B
				&putLog;
			}elsif($select eq ""){
				#��̓��[�h��ʕ\���B
				&index;
			}
		}
	}
	if($mode eq "admin")         {&admin;}
	if($mode eq "set_pswd")      {&setPswd;}
	if($mode eq "set_reject")    {&setReject;}
	if($mode eq "delete_file")   {&deleteFile;}
	if($mode eq "download_file") {&downloadFile;}
	if($mode eq "download")      {&download;}
	if($mode eq "error")         {&error;}

}
##################################################
# decode
# �f�R�[�h�����B
##################################################
sub decode{

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

			#�t�@�C������z��ɑ���B
			if($name eq "file"){
				push(@filedata,$in{$name});
			}

		}

		#�擾�����e�ϐ��ɑ���B
		$mode           = $in{'mode'};
		$sunfirst       = $in{'sunfirst'};
		$action         = $in{'action'};
		$range          = $in{'range'};
		$select         = $in{'select'};
		$pswd           = $in{'pswd'};
		$ymd_file       = $in{'ymd_file'};
		$week_file      = $in{'week_file'};
		$month_file     = $in{'month_file'};
		$ym_file        = $in{'ym_file'};
		$page           = $in{'page'};
		$referrer       = $in{'referrer'};
		$search_engin   = $in{'search_engin'};
		$search_keyword = $in{'search_keyword'};
		$host_name      = $in{'host_name'};
		$os             = $in{'os'};
		$agent          = $in{'agent'};
		$execution      = $in{'execution'};
		$type           = $in{'type'};
		$submit         = $in{'submit'};
		$no             = $in{'no'};
		$sentence1      = $in{'sentence1'};
		$cond1          = $in{'cond1'};
		$sentence2      = $in{'sentence2'};
		$cond2          = $in{'cond2'};
		$sentence3      = $in{'sentence3'};
		$cond3          = $in{'cond3'};
		$sentence4      = $in{'sentence4'};
		$cond4          = $in{'cond4'};
		$sentence5      = $in{'sentence5'};
		$cond5          = $in{'cond5'};
		$sentence6      = $in{'sentence6'};
		$cond6          = $in{'cond6'};
		$sentence7      = $in{'sentence7'};
		$cond7          = $in{'cond7'};

	}
}
##################################################
# examination
# ���O�����B
##################################################
sub examination{

	my ($tmp_line_data) = @_;

	my ($tmp_page_name,$tmp_referrer_server,$tmp_engin,$tmp_keyword,$tmp_host_name,$tmp_os,$tmp_agent,$tmp_time) = split(/\,/,$tmp_line_data);

	my $sflag1      = 1;
	my $sflag2      = 1;
	my $sflag3      = 1;
	my $sflag4      = 1;
	my $sflag5      = 1;
	my $sflag6      = 1;
	my $sflag7      = 1;
	my $return_data = 0;

	if($sentence1 ne ""){

		#���͓��e�𐮗��B
		my $sword1  = $sentence1;
		$sword1     =~ s/�@/ /g;
		$sword1     =~ s/\t/ /g;
		my @spairs1 = split(/ /,$sword1);

		foreach my $spair1(@spairs1){

			$spair1 =~ s/\#38;/\&/g;

			if(index($tmp_page_name,$spair1) >=0){

				$sflag1 = 1;
				if($cond1 eq "or"){
					last;
				}
			}else{
				if($cond1 eq "and"){
					$sflag1 = 0;
					last;
				}
			}
		}
	}

	if($sentence2 ne ""){

		#���͓��e�𐮗��B
		my $sword2  = $sentence2;
		$sword2     =~ s/�@/ /g;
		$sword2     =~ s/\t/ /g;
		my @spairs2 = split(/ /,$sword2);

		foreach my $spair2(@spairs2){

			$spair2 =~ s/\#38;/\&/g;

			if(index($tmp_referrer_server,$spair2) >=0){

				$sflag2 = 1;
				if($cond2 eq "or"){
					last;
				}
			}else{
				if($cond2 eq "and"){
					$sflag2 = 0;
					last;
				}
			}
		}
	}

	if($sentence3 ne ""){

		#���͓��e�𐮗��B
		my $sword3  = $sentence3;
		$sword3     =~ s/�@/ /g;
		$sword3     =~ s/\t/ /g;
		my @spairs3 = split(/ /,$sword3);

		foreach my $spair3(@spairs3){

			$spair3 =~ s/\#38;/\&/g;

			if(index($tmp_engin,$spair3) >=0){

				$sflag3 = 1;
				if($cond3 eq "or"){
					last;
				}
			}else{
				if($cond3 eq "and"){
					$sflag3 = 0;
					last;
				}
			}
		}
	}

	if($sentence4 ne ""){

		#���͓��e�𐮗��B
		my $sword4  = $sentence4;
		$sword4     =~ s/�@/ /g;
		$sword4     =~ s/\t/ /g;
		my @spairs4 = split(/ /,$sword4);

		foreach my $spair4(@spairs4){

			$spair4 =~ s/\#38;/\&/g;

			if(index($tmp_keyword,$spair4) >=0){

				$sflag4 = 1;
				if($cond4 eq "or"){
					last;
				}
			}else{
				if($cond4 eq "and"){
					$sflag4 = 0;
					last;
				}
			}
		}
	}

	if($sentence5 ne ""){

		#���͓��e�𐮗��B
		my $sword5  = $sentence5;
		$sword5     =~ s/�@/ /g;
		$sword5     =~ s/\t/ /g;
		my @spairs5 = split(/ /,$sword5);

		foreach my $spair5(@spairs5){

			$spair5 =~ s/\#38;/\&/g;

			if(index($tmp_host_name,$spair5) >=0){

				$sflag5 = 1;
				if($cond5 eq "or"){
					last;
				}
			}else{
				if($cond5 eq "and"){
					$sflag5 = 0;
					last;
				}
			}
		}
	}

	if($sentence6 ne ""){

		#���͓��e�𐮗��B
		my $sword6  = $sentence6;
		$sword6     =~ s/�@/ /g;
		$sword6     =~ s/\t/ /g;
		my @spairs6 = split(/ /,$sword6);

		foreach my $spair6(@spairs6){

			$spair6 =~ s/\#38;/\&/g;

			if(index($tmp_os,$spair6) >=0){

				$sflag6 = 1;
				if($cond6 eq "or"){
					last;
				}
			}else{
				if($cond6 eq "and"){
					$sflag6 = 0;
					last;
				}
			}
		}
	}

	if($sentence7 ne ""){

		#���͓��e�𐮗��B
		my $sword7  = $sentence7;
		$sword7     =~ s/�@/ /g;
		$sword7     =~ s/\t/ /g;
		my @spairs7 = split(/ /,$sword7);

		foreach my $spair7(@spairs7){

			$spair7 =~ s/\#38;/\&/g;

			if(index($tmp_agent,$spair7) >=0){

				$sflag7 = 1;
				if($cond7 eq "or"){
					last;
				}
			}else{
				if($cond7 eq "and"){
					$sflag7 = 0;
					last;
				}
			}
		}
	}

	if($sflag1 == 1 
	&& $sflag2 == 1 
	&& $sflag3 == 1 
	&& $sflag4 == 1 
	&& $sflag5 == 1 
	&& $sflag6 == 1 
	&& $sflag7 == 1 ){
		$return_data = 1;
	}

	return $return_data;
}
##################################################
# getReferrerServer
# �����N���T�[�o�擾�B
##################################################
sub getReferrerServer{

	my $return_data = "";

	my ($http_referrer_data) = @_;

	if($http_referrer_data =~ /^(s?https?|ftp|file)(:\/\/)([a-zA-Z0-9|\.|\-|\_]*)\.([a-zA-Z0-9]*)/i){

		$return_data = "$1$2$3\.$4";
		$return_data =~ tr/A-Z/a-z/;
	}

	return $return_data;
}
##################################################
# getSearchEngin
# �����G���W�����擾�B
##################################################
sub getSearchEngin{

	my $return_data = "";

	my ($http_referrer_data) = @_;

	if($http_referrer_data    =~ /^http\:\/\/search\.msn\.co.jp/i)   {$return_data = "msn";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.google\.co\.jp/i)  {$return_data = "google";}
	elsif($http_referrer_data =~ /^http\:\/\/search\.yahoo\.co\.jp/i){$return_data = "yahoo";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.excite\.co\.jp/i)  {$return_data = "excite";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.goo\.ne.\jp/i)     {$return_data = "goo";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.fresheye\.com/i)   {$return_data = "fresheye";}
	elsif($http_referrer_data =~ /^http\:\/\/www\.infoseek\.co\.jp/i){$return_data = "infoseek";}

	return $return_data;
}
##################################################
# getSearchWord
# �����L�[���[�h�擾�B
##################################################
sub getSearchWord{

	my (%sw) = ();

	my ($http_referrer_data) = @_;

	my (%word) = "";

	#�A�N�Z�X���O��URI��[?]�ŕ�������B
	my ($dummy,$qstr) = split(/\?/,$http_referrer_data);

	#���������A�N�Z�X���O��URI���A�����[&]�ŕ�������B
	my (@ques) = split(/\&/,$qstr);

	#������������ϐ����A�f�[�^�Ƃ��ăZ�b�g����B
	foreach my $que(@ques){
		my ($name,$value) = split(/=/,$que);
		$sw{$name}        = $value;
	}

	#�����L�[���[�h�̏������B
	$word = "";

	#�����L�[���[�h�̐����B
	foreach (keys(%engn_sw)){

		#�����L�[���[�h�̎擾�B
		if($dummy =~ /$_/){
			$word = $sw{($engn_sw{$_})};
		}
	}

	#�������[�h���f�R�[�h�B
	$word =~ tr/+/ /;

	#�������[�h��unicode���`�F�b�N�B
	if($word =~ m/%[eE][0-9a-fA-F]{1}%[0-9a-fA-F]{2}%[0-9a-fA-F]{2}%[eE][0-9a-fA-F]{1}%[0-9a-fA-F]{2}%[0-9a-fA-F]{2}/){

		#�������[�h��sjis�ɃR���o�[�g�B
		require "./pl/simaguni.pl";

		if(&simaguni'loadbook8()){
			&simaguni'decode8(*word,'sjis');
			&simaguni'unloadbook8();
		}

	}else{

		#�������[�h���f�R�[�h�B
		$word =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C",hex($1))/eg;

		#�������[�h��sjis�ɃR���o�[�g�B
		&jcode'convert(*word,'sjis');

	}

	#�A�N�Z�X���O��URI�����������B
	undef(%sw);

	#�������[�h�̃J���}�u���B
	$word =~ s/\,/&#44;/g;

	#�������[�h�̑S�p�X�y�[�X�u���B
	$word =~ s/�@/ /g;

	return $word;
}
##################################################
# checkLogin
# ���O�C���o�ߎ��ԃ`�F�b�N�B
##################################################
sub checkLogin{

	#�`�F�b�N������t���擾�B
	my ($input) = @_;

	#�`�F�b�N�t���O���������B
	my $admin = 0;

	#���ݓ����擾�B
	my $nowtime = time - $input;

	if($nowtime < 86400){
		$admin = 1;
	}

	return $admin;

}
##################################################
# checkPswd
# �p�X���[�h�`�F�b�N�B
##################################################
sub checkPswd{

	#�p�X���[�h�t�@�C�������݂��Ă����ꍇ�B
	if(-e $pswd_file){

		#�`�F�b�N����p�X���[�h���擾�B
		my ($input) = @_;

		#�`�F�b�N�t���O���������B
		my $admin = 0;

		#�p�X���[�h�t�@�C���̓ǂݍ��݁B
		open(IN,$pswd_file) || &error("�Ǘ��҃p�X���[�h�t�@�C�����J���܂���B");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		my $master = <IN>;
		flock(IN,8);		#���b�N�����B
		close(IN);

		#�p�X���[�h��񂩂���s���폜�B
		$master =~ s/\n//;

		#�p�X���[�h�̃^�C�v���������B
		my $salt = 0;

		#�p�X���[�h�̃^�C�v�𔻕ʁB
		if($master =~ /^\$1\$/){$salt = 3;}

		#�ݒ�p�X���[�h�Ɠ��̓p�X���[�h�̃`�F�b�N�B
		if($master eq "" || $input eq "")                      {;}
		elsif(crypt($input,substr($master,$salt,2)) eq $master){$admin = 1;}

		return $admin;

	}else{

		#�`�F�b�N����p�X���[�h���擾�B
		my ($input) = @_;

		#�`�F�b�N�t���O���������B
		my $admin = 0;

		#�p�X���[�h���uftp_id�v�ɐݒ�B
		my $master = $ftp_id;

		#�p�X���[�h�iftp_id�j�Ɠ��̓p�X���[�h�̃`�F�b�N�B
		if($master eq "" || $input eq ""){;}
		elsif($input eq "$master")       {$admin = 1;}

		return $admin;

	}
}
##################################################
# makePswd
# �p�X���[�h�̈Í����B
##################################################
sub makePswd{

	#�Í�������p�X���[�h���擾�B
	my ($plain) = @_;

	#�Í���������̌����쐬�B
	my @saltset = ('a'..'z','A'..'Z','0'..'9','.','/');

	#���t���擾�B
	my $now = time;

	#�����_���֐��������B�i���݂܂ł̕b��|�v���Z�X�ԍ��j
	srand(time|$$);

	#�����_���֐��ŋ[���I��2�o�C�g�̏����쐬�B
	my $f = splice(@saltset,rand(@saltset),1) . splice(@saltset,rand(@saltset),1);

	#2�o�C�g�̏�񂩂�A10�i���̃L�����N�^�R�[�h���쐬�B
	my ($pert1,$pert2) = unpack("C2",$f);

	#���t / (60 * 60 * 24 * 7) + ���� + ���� - �Í�������p�X���[�h�̕������B
	my $week = $now / (60 * 60 * 24 * 7) + $pert1 + $pert2 - length($plain);

	#�Í����́u��v���쐬�B
	my $nsalt = $saltset[$week % 64] . $saltset[$now % 64];

	#�p�X���[�h�̈Í����B
	my $result = crypt($plain,$nsalt);

	#�p�X���[�h�̃^�C�v���������B
	my $salt = 0;

	#�p�X���[�h�̃^�C�v�𔻕ʁB
	if($result =~ /^\$1\$/){$salt = 3;}

	#�p�X���[�h�����`�F�b�N�B
	if(crypt($plain,substr($result,$salt,2)) ne $result || $result eq ""){
		&error("�p�X���[�h�̈Í����Ɏ��s���܂����B�ēx���s(�X�V��ēǂݍ��ݥ�����[�h)���Ă�������");
	}

	return $result;
}
##################################################
# download
# �t�@�C���_�E�����[�h�B
##################################################
sub download{

	if($execution eq "�_�E�����[�h" || $execution eq ""){

		if($#filedata > 0){

			#�t�@�C�����e�ϐ��̏������B
			my @tmpData;

			foreach (@filedata){

				#���O�t�@�C�������݂��Ă����ꍇ�B
				if(-e "$logdir$_"){

					#���O���ǂݍ��݁B
					open(IN,"$logdir$_");
					flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
					my @rd = <IN>;
					flock(IN,8);		#���b�N�����B
					close(IN);
					push(@tmpData,@rd);

				}
			}

			#�_�E�����[�h�_�C�A���O�\���B
			print"Content-disposition: attachment; filename=\"download.cgi\"\n";
			print"Content-type: text/download\n\n";
			print @tmpData;
			exit;

		}elsif($#filedata == 0){

			#���O�t�@�C�������݂��Ă����ꍇ�B
			if(-e "$logdir$filedata[0]"){

				#���O���ǂݍ��݁B
				open(IN,"$logdir$filedata[0]");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				my @tmpData = <IN>;
				flock(IN,8);		#���b�N�����B
				close(IN);

				#�_�E�����[�h�_�C�A���O�\���B
				print"Content-disposition: attachment; filename=\"$filedata[0]\"\n";
				print"Content-type: text/download\n\n";
				print @tmpData;
				exit;

			}

		}elsif($#filedata < 0){

			&header;
			&error("�t�@�C����I�����Ă��������B");
			exit;

		}

	}elsif($execution eq "���ׂă_�E�����[�h"){

		#�t�@�C�����e�ϐ��̏������B
		my @tmpData;

		#���O�t�@�C�����̐����B
		foreach (@log_files){

			#���O�t�@�C�������݂��Ă����ꍇ�B
			if(-e "$logdir$_.cgi"){

				#���O���ǂݍ��݁B
				open(IN,"$logdir$_");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				my @rd = <IN>;
				flock(IN,8);		#���b�N�����B
				close(IN);
				push(@tmpData,@rd);

			}
		}

		#�_�E�����[�h�_�C�A���O�\���B
		print"Content-disposition: attachment; filename=\"download.cgi\"\n";
		print"Content-type: text/download\n\n";
		print @tmpData;
		exit;

	}elsif($execution eq "�폜"){

		if($#filedata >= 0){

			#�폜����t�@�C�����ϐ��̏������B
			my @delete = ();

			#���O�t�@�C�����̐����B
			foreach (@filedata){
				push(@delete,"$logdir$_")
			}

			#�t�@�C�����폜����B
			unlink @delete;

			print"Location: $script?mode=download_file&sunfirst=$sunfirst&ym_file=$ym_file\n\n";
			exit;

		}elsif($#filedata < 0){

			&header;
			&error("�t�@�C����I�����Ă��������B");
			exit;

		}
	}
}
##################################################
# uploadFile
# �t�@�C���A�b�v���[�h�B
##################################################
sub uploadFile{

	#���[�J���ϐ��̏������B
	my (%ctype,$tmp_mode,$tmp_sunfirst,$tmpData,%writeData);

	#�o�b�t�@�f�[�^�𕪊��B
	my (@form_data) = split(/\r?\n?--(.*)\r\n/,$buffer);

	#�o�b�t�@�f�[�^�𐸍��B
	foreach my $part(@form_data){

		#�t�@�C���f�[�^��`�B
		my $data = $part;
		$data =~ s/^Content-(.*)\r\n//mg;
		$data =~ s/^\r\n//m;

		#�t�@�C�����������B
		my $mname = "";

		#�o�b�t�@�f�[�^������ɕ����B
		my (@part) = split(/\r\n/,$part);

		#�o�b�t�@�f�[�^������ɐ����B
		while(($_ = shift(@part)) ne ""){

			#�f�[�^�擾�J�n�B
			if(/^Content-Disposition: /i){

				my (@disposition) = split(/; /);

				foreach (@disposition){

					if(/^name=(\S*)/){

						$mname = $1;
						$mname =~ s/^"(.*)"$/$1/;

					}
				}

			}elsif(/^Content-Type: (\S*)/i){

				$ctype{$mname} = $1;

			}

			#�p�����[�^���ݒ�B
			if($mname eq "mode"){

				$tmp_mode = join("",@part);

			}elsif($mname eq "sunfirst"){

				$tmp_sunfirst = join("",@part);

			}elsif($mname eq "upFile"){

				$tmpData = $data;
			}

		}
	}

	if($tmpData eq ""){

		&header;
		&error("�t�@�C����0�o�C�g�ł��B");
		exit;

	}

	#�t�@�C�����e�����B
	if($ctype{'upFile'} eq "application\/octet-stream"){

		my @readData = split(/\n/,$tmpData);
		my @ymdData = ();
		foreach (@readData){

			my ($dummy,$dummy,$dummy,$dummy,$dummy,$times) = split(/,/,$_);

			#���t�̃t�H�[�}�b�g�ύX�B
			my ($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime($times);

			#�t�H�[�}�b�g�ύX�B�i20060101�j
			my $date = sprintf("%04d%02d%02d",$year + 1900,$month + 1,$mday);

			$writeData{$date} .= $_;
			$writeData{$date} .= "\n";

		}

		foreach (keys(%writeData)){

			#���O�t�@�C�����������݁B
			open(OUT, "> $logdir$_\.cgi");		# �ǂݏ������[�h�ŊJ��
			flock(OUT, 2);				# ���b�N�m�F�B���b�N
			seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
			print OUT $writeData{$_};		# ��������
			truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
			close(OUT);				# close����Ύ����Ń��b�N����

		}

	}

	print"Location: $script?mode=admin&sunfirst=$tmp_sunfirst\n\n";
	exit;
}

