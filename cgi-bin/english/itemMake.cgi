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

use vars qw(@root $site_name $site_folder $ftp_address $html_host $cgi_host $ftp_id $ftp_pass $html_address $cgi_address $perl $sendmail $imgdir $page_pass $rootdir $html_auth $cgi_dir_auth $cgi_file_auth $dat_file_auth $csv_file_auth);
use vars qw(@page_kind $pnm00 $knm00 $pnm10 $knm10 $pnm11 $knm11 $pnm12 $knm12 $pnm13 $knm13 $pnm14 $knm14 $pnm15 $knm15 $pnm20 $knm20 $pnm21 $knm21 $pnm22 $knm22 $pnm23 $knm23 $pnm24 $knm24 $pnm25 $knm25 $pnm30 $knm30 $pnm31 $knm31 $pnm32 $knm32 $pnm33 $knm33 $pnm34 $knm34 $pnm35 $knm35 $pnm40 $knm40 $pnm41 $knm41 $pnm42 $knm42 $pnm43 $knm43 $pnm44 $knm44 $pnm45 $knm45 $pnm50 $knm50 $pnm51 $knm51 $pnm52 $knm52 $pnm53 $knm53 $pnm54 $knm54 $pnm55 $knm55);

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

my @itemStockBase = ();

for(my $category = 1 ; $category <= 5 ; $category++){

	for(my $page = 0 ; $page <= 5 ; $page++){

		my $kind = "";

		#�y�[�W��ނł̕ϐ��ݒ�B
		if($category eq "1" && $page eq "0"){$kind = "$knm10";}
		if($category eq "1" && $page eq "1"){$kind = "$knm11";}
		if($category eq "1" && $page eq "2"){$kind = "$knm12";}
		if($category eq "1" && $page eq "3"){$kind = "$knm13";}
		if($category eq "1" && $page eq "4"){$kind = "$knm14";}
		if($category eq "1" && $page eq "5"){$kind = "$knm15";}
		if($category eq "2" && $page eq "0"){$kind = "$knm20";}
		if($category eq "2" && $page eq "1"){$kind = "$knm21";}
		if($category eq "2" && $page eq "2"){$kind = "$knm22";}
		if($category eq "2" && $page eq "3"){$kind = "$knm23";}
		if($category eq "2" && $page eq "4"){$kind = "$knm24";}
		if($category eq "2" && $page eq "5"){$kind = "$knm25";}
		if($category eq "3" && $page eq "0"){$kind = "$knm30";}
		if($category eq "3" && $page eq "1"){$kind = "$knm31";}
		if($category eq "3" && $page eq "2"){$kind = "$knm32";}
		if($category eq "3" && $page eq "3"){$kind = "$knm33";}
		if($category eq "3" && $page eq "4"){$kind = "$knm34";}
		if($category eq "3" && $page eq "5"){$kind = "$knm35";}
		if($category eq "4" && $page eq "0"){$kind = "$knm40";}
		if($category eq "4" && $page eq "1"){$kind = "$knm41";}
		if($category eq "4" && $page eq "2"){$kind = "$knm42";}
		if($category eq "4" && $page eq "3"){$kind = "$knm43";}
		if($category eq "4" && $page eq "4"){$kind = "$knm44";}
		if($category eq "4" && $page eq "5"){$kind = "$knm45";}
		if($category eq "5" && $page eq "0"){$kind = "$knm50";}
		if($category eq "5" && $page eq "1"){$kind = "$knm51";}
		if($category eq "5" && $page eq "2"){$kind = "$knm52";}
		if($category eq "5" && $page eq "3"){$kind = "$knm53";}
		if($category eq "5" && $page eq "4"){$kind = "$knm54";}
		if($category eq "5" && $page eq "5"){$kind = "$knm55";}

		if($kind eq "�V���b�v1" || $kind eq "�V���b�v2"){

			#�L�����e���t�@�C���ǂݍ��݁B
			if(-e "$rootdir/page_design/story/comment/$category$page.dat" && -e "$rootdir/page_design/story/rules/$category$page.dat"){

				open(IN,"$rootdir/page_design/story/comment/$category$page.dat");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				my @storycomment = <IN>;
				flock(IN,8);		# ���b�N�����B
				close(IN);

				open(IN,"$rootdir/page_design/story/rules/$category$page.dat");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				my @rules = <IN>;
				flock(IN,8);		# ���b�N�����B
				close(IN);

				my ($rls1,$rls2,$rls3,$rls4,$rls5,$rls6,$rls7,$rls8,$rls9,$rls10,$rls11,$rls12,$rls13,$rls14,$rls15,$rls16,$rls17,$rls18,$rls19,$rls20,$rls21,$rls22,$rls23,$rls24,$rls25,$rls26,$rls27,$rls28,$rls29,$rls30,$rls31,$rls32,$rls33,$rls34,$rls35,$rls36,$rls37,$rls38,$rls39,$rls40) = split(/,/,$rules[0]);

				# 11,1,�T���v���L��1,1000,���1,���1,���1,,

				if($rls5 ne "" && $rls6 ne ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);
						my @storycomment21 = split(/<br>/,$storycomment_data[21]);
						my @storycomment22 = split(/<br>/,$storycomment_data[22]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /�F/){

									($unit_price,$type) = split(/�F/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								if($#storycomment21 != -1 && $#storycomment22 != -1){

									foreach my $storycomment21(@storycomment21){

										foreach my $storycomment22(@storycomment22){

											push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,$storycomment21,$storycomment22,,\n");

										}

									}

								}elsif($#storycomment21 != -1 && $#storycomment22 == -1){

									foreach my $storycomment21(@storycomment21){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,$storycomment21,,,\n");

									}

								}elsif($#storycomment21 == -1 && $#storycomment22 != -1){

									foreach my $storycomment22(@storycomment22){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,$storycomment22,,\n");

									}

								}elsif($#storycomment21 == -1 && $#storycomment22 == -1){

									push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

								}

							}

						}

					}

				}elsif($rls5 ne "" && $rls6 eq ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);
						my @storycomment21 = split(/<br>/,$storycomment_data[21]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /�F/){

									($unit_price,$type) = split(/�F/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								if($#storycomment21 != -1){

									foreach my $storycomment21(@storycomment21){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,$storycomment21,,,\n");

									}

								}elsif($#storycomment21 == -1){

									push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

								}

							}

						}

					}

				}elsif($rls5 eq "" && $rls6 ne ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);
						my @storycomment22 = split(/<br>/,$storycomment_data[22]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /�F/){

									($unit_price,$type) = split(/�F/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								if($#storycomment22 != -1){

									foreach my $storycomment22(@storycomment22){

										push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,$storycomment22,,\n");

									}

								}elsif($#storycomment22 == -1){

									push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

								}

							}

						}

					}

				}elsif($rls5 eq "" && $rls6 eq ""){

					foreach my $storycomment(@storycomment){

						my(@storycomment_data) = split(/\,/,$storycomment);

						my @storycomment20 = split(/<br>/,$storycomment_data[20]);

						if($#storycomment20 != -1){

							foreach my $storycomment20(@storycomment20){

								my $unit_price = "";
								my $type       = "";

								if($storycomment20 =~ /�F/){

									($unit_price,$type) = split(/�F/,$storycomment20);

								}elsif($storycomment20 =~ /:/){

									($unit_price,$type) = split(/:/,$storycomment20);

								}else{

									$unit_price = $storycomment20;

								}

								push(@itemStockBase,"$category$page,$storycomment_data[0],$storycomment_data[2],$unit_price,$type,,,,\n");

							}

						}

					}

				}

				undef(@storycomment);

			}

		}

	}

}

# 11,1,�T���v���L��1,1000,���1,���1,���1,,

my %count;
@itemStockBase = grep {!$count{$_}++} @itemStockBase;

#�t�@�C���������o���B
open(OUT, "> ./itemStockBase.dat");	# �ǂݏ������[�h�ŊJ��
flock(OUT, 2);				# ���b�N�m�F�B���b�N
seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
print OUT @itemStockBase;			# ��������
truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
close(OUT);				# close����Ύ����Ń��b�N����

undef(@itemStockBase);

print "Content-type: text/html;\n\n";
exit;
