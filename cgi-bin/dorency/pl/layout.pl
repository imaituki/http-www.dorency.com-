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
# html
# �S�̃��C�A�E�g���`�����ĕ\�����s���B
##################################################
sub html{

	#�N�b�L�[�ɂ��郆�[�U�[�����擾����B
	&user_get;

	#�w�b�_�[HTML�̕\�����^�C�v�ʂɍs���B
	#�y�[�W��ނ��V���b�v1�������̓V���b�v2�̏ꍇ�B
	if($kind eq "�V���b�v1" || $kind eq "�V���b�v2"){
		&header_shop;
	}else{
		&header;
	}

	#[body]���`���B
	if($ppt4 ne ""){$t_ppt4 = " background=\"$base_imgdir/$ppt4\"";}
	if($ppt3 ne ""){$t_ppt3 = " bgcolor=\"$ppt3\"";}
	if($ppt5 ne ""){$t_ppt5 = " text=\"$ppt5\"";}
	if($ppt6 ne ""){$t_ppt6 = " link=\"$ppt6\"";}
	if($ppt7 ne ""){$t_ppt7 = " vlink=\"$ppt7\"";}
	if($ppt1 ne ""){$t_ppt1 = " leftmargin=\"$ppt1\"";}
	if($ppt2 ne ""){$t_ppt2 = " topmargin=\"$ppt2\"";}

	#[body]��\���B
	if(($kind eq "�V���b�v1" || $kind eq "�V���b�v2") && ($in{'cart'} eq "payment")){
		print"<body$t_ppt4$t_ppt3$t_ppt5$t_ppt6$t_ppt7$t_ppt1$t_ppt2 onload=\"viewButton()\">\n";
	}else{
		print"<body$t_ppt4$t_ppt3$t_ppt5$t_ppt6$t_ppt7$t_ppt1$t_ppt2>\n";
	}

	#[table]���`���B
	if($all9 ne ""){$t_all9 = " background=\"$base_imgdir/$all9\"";}
	if($all8 ne ""){$t_all8 = " bgcolor=\"$all8\"";}
	if($all4 ne ""){$t_all4 = " border=\"$all4\"";}
	if($all4 eq ""){$t_all4 = " border=\"0\"";}
	if($all5 ne ""){$t_all5 = " bordercolor=\"$all5\"";}
	if($all6 ne ""){$t_all6 = " cellspacing=\"$all6\"";}
	if($all6 eq ""){$t_all6 = " cellspacing=\"0\"";}
	if($all7 ne ""){$t_all7 = " cellpadding=\"$all7\"";}
	if($all7 eq ""){$t_all7 = " cellpadding=\"0\"";}
	if($all1 ne ""){$t_all1 = " width=\"$all1\"";}
	if($all2 ne ""){$t_all2 = " height=\"$all2\"";}
	if($all3 ne ""){$t_all3 = " align=\"$all3\"";}

	#[table]��\���B

print<<"EOM";
<table$t_all9$t_all8$t_all4$t_all5$t_all6$t_all7$t_all1$t_all2$t_all3>
EOM

	if($hdr12 ne "" || $hdr20 ne ""){

		#[table]���`���B
		if($hdr19 ne ""){$t_hdr19 = " background=\"$base_imgdir/$hdr19\"";}
		if($hdr18 ne ""){$t_hdr18 = " bgcolor=\"$hdr18\"";}
		if($hdr11 ne ""){$t_hdr11 = " border=\"$hdr11\"";}
		if($hdr11 eq ""){$t_hdr11 = " border=\"0\"";}
		if($hdr15 ne ""){$t_hdr15 = " bordercolor=\"$hdr15\"";}
		if($hdr9  ne ""){$t_hdr9  = " width=\"$hdr9\"";}
		if($hdr9  eq ""){$t_hdr9  = " width=\"100%\"";}
		if($hdr10 ne ""){$t_hdr10 = " height=\"$hdr10\"";}
		if($hdr17 ne ""){$t_hdr17 = " cellpadding=\"$hdr17\"";}
		if($hdr16 ne ""){$t_hdr16 = " cellspacing=\"$hdr16\"";}

		#[table]��\���B

print<<"EOM";
 <tr>
  <td colspan="2" valign="top">
   <table$t_hdr19$t_hdr18$t_hdr11$t_hdr15$t_hdr9$t_hdr10$t_hdr17$t_hdr16>
EOM

		if($hdr12 ne ""){

			#[td]���`���B
			if($hdr6 ne ""){$t_hdr6 = " background=\"$base_imgdir/$hdr6\"";}
			if($hdr5 ne ""){$t_hdr5 = " bgcolor=\"$hdr5\"";}
			if($hdr4 ne ""){$t_hdr4 = " bordercolor=\"$hdr4\"";}
			if($hdr1 ne ""){$t_hdr1 = " height=\"$hdr1\"";}
			if($hdr2 ne ""){$t_hdr2 = " align=\"$hdr2\"";}
			if($hdr3 ne ""){$t_hdr3 = " valign=\"$hdr3\"";}
			if($hdr3 eq ""){$t_hdr3 = " valign=\"top\"";}

			#[alt]���`���B
			if($hdr13 ne ""){$t_hdr13 = " alt=\"$hdr13\"";}

			if(($in{'category'} eq "0" && $in{'page'} eq "0") || ($in{'category'} eq "" && $in{'page'} eq "")){

				if($location eq "up"){

					#�����N��ݒ�B
					if($hdr7 =~ /^http/){

						#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
						$hdr7 = "$hdr7";

					}else{

						if($hdr7 ne ""){

							#���΃A�h���X�̏ꍇ�͒u���������s���B
							$hdr7 =~ s/^.//;
							$hdr7 = "$cgi_address/$site_folder$hdr7";

						}
					}
				}
			}

			if($hdr7 ne ""){

				if($hdr8 ne ""){$t_hdr8 = " target=\"_blank\"";}

				#[H1]�^�O�̑}���L���̔��ʁB
				if($hdr14 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><h1><a href="$hdr7"$t_hdr8><img src="$base_imgdir/$hdr12"$t_hdr13 border="0"></a></h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><a href="$hdr7"$t_hdr8><img src="$base_imgdir/$hdr12"$t_hdr13 border="0"></a></td>
    </tr>
EOM

				}

			}else{

				#[H1]�^�O�̑}���L���̔��ʁB
				if($hdr14 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><h1><img src="$base_imgdir/$hdr12"$t_hdr13></h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr6$t_hdr5$t_hdr4$t_hdr1$t_hdr2$t_hdr3><img src="$base_imgdir/$hdr12"$t_hdr13></td>
    </tr>
EOM

				}
			}
		}

		if($hdr20 ne ""){

			#[td]���`���B
			if($hdr30 ne ""){$t_hdr30 = " background=\"$base_imgdir/$hdr30\"";}
			if($hdr29 ne ""){$t_hdr29 = " bgcolor=\"$hdr29\"";}
			if($hdr28 ne ""){$t_hdr28 = " bordercolor=\"$hdr28\"";}
			if($hdr21 ne ""){$t_hdr21 = " height=\"$hdr21\"";}
			if($hdr22 ne ""){$t_hdr22 = " align=\"$hdr22\"";}
			if($hdr23 ne ""){$t_hdr23 = " valign=\"$hdr23\"";}
			if($hdr23 eq ""){$t_hdr23 = " valign=\"top\"";}

			#[font]���`���B
			if($hdr25 ne "")                {$t_hdr25  = " size=\"$hdr25\"";}
			if($hdr24 ne "")                {$t_hdr24  = " color=\"$hdr24\"";}
			if($hdr25 ne "" || $hdr24 ne ""){$t1_font1 = "<font$t_hdr25$t_hdr24>";}
			if($hdr25 ne "" || $hdr24 ne ""){$t1_font2 = "</font>";}

			#�\�����ڂ��`���B
			if($hdr26 ne "" && $hdr27 ne ""){
				$t_hdr20 = "<strong><i>$t1_font1$hdr20$t1_font2</i></strong>";
			}

			if($hdr26 ne "" && $hdr27 eq ""){
				$t_hdr20 = "<strong>$t1_font1$hdr20$t1_font2</strong>";
			}

			if($hdr26 eq "" && $hdr27 ne ""){
				$t_hdr20 = "<i>$t1_font1$hdr20$t1_font2</i>";
			}

			if($hdr26 eq "" && $hdr27 eq ""){
				$t_hdr20 = "$t1_font1$hdr20$t1_font2";
			}

			if(($in{'category'} eq "0" && $in{'page'} eq "0") || ($in{'category'} eq "" && $in{'page'} eq "")){

				if($location eq "up"){

					#�����N��ݒ�B
					if($hdr32 =~ /^http/){

						#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
						$hdr32 = "$hdr32";

					}else{

						if($hdr32 ne ""){

							#���΃A�h���X�̏ꍇ�͒u���������s���B
							$hdr32 =~ s/^.//;
							$hdr32 = "$cgi_address/$site_folder$hdr32";

						}
					}
				}
			}

			if($hdr32 ne ""){

				if($hdr33 ne ""){$t_hdr33 = " target=\"_blank\"";}

				#[H1]�^�O�̑}���L���̔��ʁB
				if($hdr31 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23><h1><a href="$hdr32"$t_hdr33>$t_hdr20</a></h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23><a href="$hdr32"$t_hdr33>$t_hdr20</a></td>
    </tr>
EOM

				}

			}else{

				#[H1]�^�O�̑}���L���̔��ʁB
				if($hdr31 ne ""){

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23><h1>$t_hdr20</h1></td>
    </tr>
EOM

				}else{

print<<"EOM";
    <tr>
     <td colspan="2"$t_hdr30$t_hdr29$t_hdr28$t_hdr21$t_hdr22$t_hdr23>$t_hdr20</td>
    </tr>
EOM

				}
			}
		}

		#[table]��\���B

print<<"EOM";
   </table>
  </td>
 </tr>
EOM

	}

	#[td]���`���B
	if($ngs5 ne ""){$t_ngs5 = " background=\"$base_imgdir/$ngs5\"";}
	if($ngs4 ne ""){$t_ngs4 = " bgcolor=\"$ngs4\"";}
	if($ngs3 ne ""){$t_ngs3 = " bordercolor=\"$ngs3\"";}
	if($ngs1 ne ""){$t_ngs1 = " width=\"$ngs1\"";}
	if($ngs8 ne ""){$t_ngs8 = " height=\"$ngs8\"";}
	if($ngs2 ne ""){$t_ngs2 = " align=\"$ngs2\"";}

	#�i�r�Q�[�V������\���B

print<<"EOM";
 <tr>
  <td$t_ngs5$t_ngs4$t_ngs3$t_ngs1$t_ngs8$t_ngs2 valign="top">
EOM

	#�i�r�Q�[�V�����̕\���J�n�ʒu�]����\���B
	if($ngs6 eq "���s"){
		print"  <br>\n";
	}
	if($ngs6 eq "���l" && $ngs7 ne "0"){
		if($ngs7 ne ""){$t_ngs7 = " height=\"$ngs7\"";}
		print"   <img src=\"$imgdir/spacer.gif\"$t_ngs7><br>\n";
	}

	#�i�r�Q�[�V����0��\���B
	if($cnm0 ne ""){
		&naviTop;
	}

	#�i�r�Q�[�V����1��\���B
	if($cnm1 ne ""){
		&naviOther(1);
	}

	#�i�r�Q�[�V����2��\���B
	if($cnm2 ne ""){
		&naviOther(2);
	}

	#�i�r�Q�[�V����3��\���B
	if($cnm3 ne ""){
		&naviOther(3);
	}

	#�i�r�Q�[�V����4��\���B
	if($cnm4 ne ""){
		&naviOther(4);
	}

	#�i�r�Q�[�V����5��\���B
	if($cnm5 ne ""){
		&naviOther(5);
	}

print<<"EOM";
  </td>
EOM

	#���݂��Ȃ��y�[�W�̃G���[�����B
	if($noData ne ""){

		$width = $all1 - $ngs1;
		if($width ne "" && $width > 0){
			$t_width = " width=\"$width\"";
		}

print<<"EOM";
  <td$t_width align="center" valign="top">
EOM

		#�G���[��ʂ̕\���B
		&errorPage;

		#���쌠��\���B
		if($ppt17 ne ""){

print<<"EOM";
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td><font size="-1">$ppt17</font></td>
    </tr>
   </table>
EOM

		}

print<<"EOM";
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}else{

		#[td]���`���B
		if($pge5 ne ""){$t_pge5 = " background=\"$page_imgdir/$pge5\"";}
		if($pge4 ne ""){$t_pge4 = " bgcolor=\"$pge4\"";}
		if($pge3 ne ""){$t_pge3 = " bordercolor=\"$pge3\"";}
		if($pge1 ne ""){$t_pge1 = " width=\"$pge1\"";}
		if($pge8 ne ""){$t_pge8 = " height=\"$pge8\"";}
		if($pge2 ne ""){$t_pge2 = " align=\"$pge2\"";}

print<<"EOM";
  <td$t_pge5$t_pge4$t_pge3$t_pge1$t_pge8$t_pge2 valign="top">
EOM

		#�y�[�W�̕\���J�n�ʒu�]�����`���B
		if($pge6 eq "���s"){
			print"   <br>\n";
		}
		if($pge6 eq "���l" && $pge7 ne "0"){
			if($pge7 ne ""){$t_pge7 = " height=\"$pge7\"";}
			print"   <img src=\"$imgdir/spacer.gif\"$t_pge7><br>\n";
		}

		#�摜���`���B
		if($pig17 ne "" || $pig24 ne ""){

			if($pig21 ne ""){$t_pig21 = " width=\"$pig21\"";}
			if($pig22 ne ""){$t_pig22 = " height=\"$pig22\"";}
			if($pig20 ne ""){$t_pig20 = " alt=\"$pig20\"";}

			#�摜���t���b�V���t�@�C���̏ꍇ�i�g���q��swf�̏ꍇ�j���`���B
			if($pig17 =~ /.swf/){
				$t_pig17  = "";
				$t_pig17 .= "     <script type=\"text/javascript\">\n";
				$t_pig17 .= "     <!--\n";
				$t_pig17 .= "     checkPlugin(6,'$page_imgdir/$pig17','$pig21','$pig22');\n";
				$t_pig17 .= "     //-->\n";
				$t_pig17 .= "     </script>";
			}else{
				$t_pig17 = "     <img src=\"$page_imgdir/$pig17\"$t_pig21$t_pig22$t_pig20>";
			}

			#[table]���`���B
			if($pig11 ne ""){$t_pig11 = " background=\"$page_imgdir/$pig11\"";}
			if($pig10 ne ""){$t_pig10 = " bgcolor=\"$pig10\"";}
			if($pig5 ne "") {$t_pig5  = " border=\"$pig5\"";}
			if($pig5 eq "") {$t_pig5  = " border=\"0\"";}

			if($pig6 ne "") {$t_pig6  = " bordercolor=\"$pig6\"";}
			if($pig8 ne "") {$t_pig8  = " cellspacing=\"$pig8\"";}
			if($pig8 eq "") {$t_pig8  = " cellspacing=\"0\"";}
			if($pig9 ne "") {$t_pig9  = " cellpadding=\"$pig9\"";}
			if($pig9 eq "") {$t_pig9  = " cellpadding=\"0\"";}
			if($pig1 ne "") {$t_pig1  = " width=\"$pig1\"";}
			if($pig2 ne "") {$t_pig2  = " height=\"$pig2\"";}

			#[td]���`���B
			if($pig19 ne ""){$t_pig19 = " background=\"$page_imgdir/$pig19\"";}
			if($pig18 ne ""){$t_pig18 = " bgcolor=\"$pig18\"";}
			if($pig7 ne "") {$t_pig7  = " bordercolor=\"$pig7\"";}
			if($pig3 ne "") {$t_pig3  = " align=\"$pig3\"";}
			if($pig4 ne "") {$t_pig4  = " valign=\"$pig4\"";}
			if($pig4 eq "") {$t_pig4  = " valign=\"top\"";}
			if($pig23 ne ""){$t_pig23 = " height=\"$pig23\"";}

			if($pig34 ne ""){$t_pig34 = " background=\"$page_imgdir/$pig34\"";}
			if($pig33 ne ""){$t_pig33 = " bgcolor=\"$pig33\"";}
			if($pig32 ne ""){$t_pig32 = " bordercolor=\"$pig32\"";}
			if($pig26 ne ""){$t_pig26 = " align=\"$pig26\"";}
			if($pig27 ne ""){$t_pig27 = " valign=\"$pig27\"";}
			if($pig27 eq ""){$t_pig27 = " valign=\"top\"";}
			if($pig25 ne ""){$t_pig25 = " height=\"$pig25\"";}

			#[font]���`���B
			if($pig29 ne "")                {$t_pig29  = " size=\"$pig29\"";}
			if($pig28 ne "")                {$t_pig28  = " color=\"$pig28\"";}
			if($pig29 ne "" || $pig28 ne ""){$t2_font1 = "<font$t_pig29$t_pig28>";}
			if($pig29 ne "" || $pig28 ne ""){$t2_font2 = "</font>";}

			#�\�����ڂ��`���B
			if($pig30 ne "" && $pig31 ne ""){
				$t_pig24 = "<strong><i>$t2_font1$pig24$t2_font2</i></strong>";
			}

			if($pig30 ne "" && $pig31 eq ""){
				$t_pig24 = "<strong>$t2_font1$pig24$t2_font2</strong>";
			}

			if($pig30 eq "" && $pig31 ne ""){
				$t_pig24 = "<i>$t2_font1$pig24$t2_font2</i>";
			}

			if($pig30 eq "" && $pig31 eq ""){
				$t_pig24 = "$t2_font1$pig24$t2_font2";
			}

print<<"EOM";
   <table$t_pig11$t_pig10$t_pig5$t_pig6$t_pig8$t_pig9$t_pig1$t_pig2>
EOM

			#�y�[�W�摜��\���B
			if($pig17 ne ""){

print<<"EOM";
    <tr>
     <td$t_pig19$t_pig18$t_pig7$t_pig3$t_pig4$t_pig23>$t_pig17</td>
    </tr>
EOM

			}

			#�y�[�W�^�C�g����\���B
			if($pig24 ne ""){

print<<"EOM";
    <tr>
     <td$t_pig34$t_pig33$t_pig32$t_pig26$t_pig27$t_pig25>$t_pig24</td>
    </tr>
EOM

			}

print<<"EOM";
   </table>
EOM

			#��؂���`���B
			if($pig15 ne ""){$t_pig15 = " size=\"$pig15\"";}
			if($pig14 ne ""){$t_pig14 = " width=\"$pig14\"";}
			if($pig16 ne ""){$t_pig16 = " color=\"$pig16\"";}
			if($pig13 ne ""){$t_pig13 = " height=\"$pig13\"";}

			#��؂��\���B
			if($pig12 eq "��؂��"){
				print"   <hr$t_pig15$t_pig14$t_pig16>\n";
			}elsif($pig12 eq "���s"){
				print"   <br>\n";
			}elsif($pig12 eq "���l" && $pig13 ne "0"){
				print"   <img src=\"$imgdir/spacer.gif\"$t_pig13><br>\n";
			}else{
				print"";
			}
		}

		#�R�����g���`���B
		if($pct17 ne ""){

			#[table]���`���B
			if($pct11 ne ""){$t_pct11 = " background=\"$page_imgdir/$pct11\"";}
			if($pct10 ne ""){$t_pct10 = " bgcolor=\"$pct10\"";}
			if($pct5 ne "") {$t_pct5  = " border=\"$pct5\"";}
			if($pct5 eq "") {$t_pct5  = " border=\"0\"";}
			if($pct6 ne "") {$t_pct6  = " bordercolor=\"$pct6\"";}
			if($pct8 ne "") {$t_pct8  = " cellspacing=\"$pct8\"";}
			if($pct8 eq "") {$t_pct8  = " cellspacing=\"0\"";}
			if($pct9 ne "") {$t_pct9  = " cellpadding=\"$pct9\"";}
			if($pct9 eq "") {$t_pct9  = " cellpadding=\"0\"";}
			if($pct1 ne "") {$t_pct1  = " width=\"$pct1\"";}
			if($pct2 ne "") {$t_pct2  = " height=\"$pct2\"";}

			#[td]���`���B
			if($pct23 ne ""){$t_pct23 = " background=\"$page_imgdir/$pct23\"";}
			if($pct22 ne ""){$t_pct22 = " bgcolor=\"$pct22\"";}
			if($pct7 ne "") {$t_pct7  = " bordercolor=\"$pct7\"";}
			if($pct3 ne "") {$t_pct3  = " align=\"$pct3\"";}
			if($pct4 ne "") {$t_pct4  = " valign=\"$pct4\"";}
			if($pct4 eq "") {$t_pct4  = " valign=\"top\"";}

			#[font]���`���B
			if($pct19 ne "")                {$t_pct19  = " size=\"$pct19\"";}
			if($pct18 ne "")                {$t_pct18  = " color=\"$pct18\"";}
			if($pct19 ne "" || $pct18 ne ""){$t3_font1 = "<font$t_pct19$t_pct18>";}
			if($pct19 ne "" || $pct18 ne ""){$t3_font2 = "</font>";}

			if($pct24 ne "on"){

				$pct17 =~ s/([^=^\"]|^)(http\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
				$pct17 =~ s/([^=^\"]|^)(https\:[\w\.\~\-\/\?\&\=\@\;\#\:\%]+)/$1<a href=\"$2\" target=\"_blank\">$2<\/a>/g;
				$pct17 =~ s/\b([-\w.]+@[-\w.]+\.[-\w.]+)\b/<a href=\"mailto:$1\">$1<\/a>/g;

			}elsif($pct24 eq "on"){
				$pct17 =~ s/&lt;br&gt;/\n/g;
				$pct17 =~ s/&#44;/,/g;
			}

			#�R�����g���`���B
			if($pct20 ne "" && $pct21 ne ""){$pct17 = "<strong><i>$pct17</i></strong>";}
			if($pct20 ne "" && $pct21 eq ""){$pct17 = "<strong>$pct17</strong>";}
			if($pct20 eq "" && $pct21 ne ""){$pct17 = "<i>$pct17</i>";}

			#�R�����g��\���B

print<<"EOM";
   <table$t_pct11$t_pct10$t_pct5$t_pct6$t_pct8$t_pct9$t_pct1$t_pct2>
    <tr>
     <td$t_pct23$t_pct22$t_pct7$t_pct3$t_pct4>$t3_font1$pct17$t3_font2</td>
    </tr>
   </table>
EOM

			#��؂���`���B
			if($pct15 ne ""){$t_pct15 = " size=\"$pct15\"";}
			if($pct14 ne ""){$t_pct14 = " width=\"$pct14\"";}
			if($pct16 ne ""){$t_pct16 = " color=\"$pct16\"";}
			if($pct13 ne ""){$t_pct13 = " height=\"$pct13\"";}

			#��؂��\���B
			if($pct12 eq "��؂��"){
				print"   <hr$t_pct15$t_pct14$t_pct16>\n";
			}elsif($pct12 eq "���s"){
				print"   <br>\n";
			}elsif($pct12 eq "���l" && $pct13 ne "0"){
				print"   <img src=\"$imgdir/spacer.gif\"$t_pct13><br>\n";
			}else{
				print"";
			}
		}

		#[table]���`���B
		if($pst11 ne ""){$t_pst11 = " background=\"$page_imgdir/$pst11\"";}
		if($pst10 ne ""){$t_pst10 = " bgcolor=\"$pst10\"";}
		if($pst5 ne "") {$t_pst5  = " border=\"$pst5\"";}
		if($pst5 eq "") {$t_pst5  = " border=\"0\"";}
		if($pst6 ne "") {$t_pst6  = " bordercolor=\"$pst6\"";}
		if($pst8 ne "") {$t_pst8  = " cellspacing=\"$pst8\"";}
		if($pst8 eq "") {$t_pst8  = " cellspacing=\"0\"";}
		if($pst9 ne "") {$t_pst9  = " cellpadding=\"$pst9\"";}
		if($pst9 eq "") {$t_pst9  = " cellpadding=\"0\"";}
		if($pst1 ne "") {$t_pst1  = " width=\"$pst1\"";}
		if($pst2 ne "") {$t_pst2  = " height=\"$pst2\"";}

		#[td]���`���B
		if($pst13 ne ""){$t_pst13 = " background=\"$page_imgdir/$pst13\"";}
		if($pst12 ne ""){$t_pst12 = " bgcolor=\"$pst12\"";}
		if($pst7 ne "") {$t_pst7  = " bordercolor=\"$pst7\"";}
		if($pst3 ne "") {$t_pst3  = " align=\"$pst3\"";}
		if($pst4 ne "") {$t_pst4  = " valign=\"$pst4\"";}
		if($pst4 eq "") {$t_pst4  = " valign=\"top\"";}

		if($cds20 eq "on"){

##########
				if($in{'cart'} eq "order1" && $in{'submit'} eq "�����ғ��͉�ʂɐi��"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM

				}elsif($in{'cart'} eq "order1" && $in{'submit_data'} eq "�����ғ��͉�ʂɐi��"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���͉�ʂɖ߂�"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
##########
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "same"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�����ғ��͉�ʂɖ߂�" && $in{'address'} eq "same"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�������m�F��ʂɐi��" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM

####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�ύX����" && $in{'address'} eq "same"){
#					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�X�V����" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "user_edit"){
#					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�ύX����" && $in{'address'} eq "same"){
#					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�X�V����" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�ύX����" && $in{'address'} eq "same"){
#					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�X�V����" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "delivery_day_edit"){
#					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�ύX����" && $in{'address'} eq "same"){
#					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�X�V����" && $in{'address'} eq "same"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sb2_03.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_03.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "message_edit"){
#					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���i�z���m�F��ʂɖ߂�" && $in{'address'} eq "same"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:none;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:block;">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_02.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sb2_02.gif" border="0" id="step2" style="display:none;">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "��L���e�ő��M����" && $in{'address'} eq "same"){
#					&cart_mail;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sb2_04.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sb1_04.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
####################
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "�z������͉�ʂɐi��" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "�����ғ��͉�ʂɖ߂�" && $in{'address'} eq "other"){
#					&cart_order1;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sb1_01.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa1_01.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "���i�z���ݒ��ʂɐi��" && $in{'address'} eq "other"){
#					&cart_order3;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_03.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "�z�����o�^����" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "�����҂�z����ɒǉ�����" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "del" && $in{'submit'} eq "�폜" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "�z������͉�ʂɖ߂�" && $in{'address'} eq "other"){
#					&cart_order2;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_02.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
#					&cart_order3;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_03.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:none;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:block;">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���i�z���ݒ��ʂɖ߂�" && $in{'address'} eq "other"){
#					&cart_order3;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_03.gif" border="0">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�������m�F��ʂɐi��" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "���i�z������ύX����" && $in{'address'} eq "other"){
#					&order_edit;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "�X�V����" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
#					&order_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�ύX����" && $in{'address'} eq "other"){
#					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�X�V����" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "user_edit"){
#					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�ύX����" && $in{'address'} eq "other"){
#					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�X�V����" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�ύX����" && $in{'address'} eq "other"){
#					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�X�V����" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "delivery_day_edit"){
#					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�ύX����" && $in{'address'} eq "other"){
#					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�X�V����" && $in{'address'} eq "other"){
#					&cart_order5;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_05.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_05.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "message_edit"){
#					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���i�z���m�F��ʂɖ߂�" && $in{'address'} eq "other"){
#					&cart_order4;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:none;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:block;">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_04.gif" border="0" id="step1" style="display:block;">
<img src="$imgdir\/sa2_04.gif" border="0" id="step2" style="display:none;">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "��L���e�ő��M����" && $in{'address'} eq "other"){
#					&cart_mail;
print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM
					if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){
print<<"EOM";
<img src="$imgdir\/sa2_06.gif" border="0">
EOM
					}else{
print<<"EOM";
<img src="$imgdir\/sa1_06.gif" border="0">
EOM
					}
print<<"EOM";
     </td>
    </tr>
   </table>
EOM
				}
####################

			#��؂���`���B
			if($pct15 ne ""){$t_pct15 = " size=\"$pct15\"";}
			if($pct14 ne ""){$t_pct14 = " width=\"$pct14\"";}
			if($pct16 ne ""){$t_pct16 = " color=\"$pct16\"";}
			if($pct13 ne ""){$t_pct13 = " height=\"$pct13\"";}

			#��؂��\���B
			if($pct12 eq "��؂��"){
				print"   <hr$t_pct15$t_pct14$t_pct16>\n";
			}elsif($pct12 eq "���s"){
				print"   <br>\n";
			}elsif($pct12 eq "���l" && $pct13 ne "0"){
				print"   <img src=\"$imgdir/spacer.gif\"$t_pct13><br>\n";
			}else{
				print"";
			}

		}

		#�L����\���B

print<<"EOM";
   <table$t_pst11$t_pst10$t_pst5$t_pst6$t_pst8$t_pst9$t_pst1$t_pst2>
    <tr>
     <td$t_pst13$t_pst12$t_pst7$t_pst3$t_pst4>
EOM

		my $loginFlg = 0;

		#�N�b�L�[�œ������O�����݂��Ă���ꍇ�Ƀ��O�C����\���B
		if($c_id ne "" && $c_pass ne ""){

			if($in{'category'} ne "0" || $in{'page'} ne "0"){

				#���[�U�[�F�؃A�J�E���g���t�@�C���ǂݍ��݁B
				open(IN,"$rootdir/option/access/page/acs.dat");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				@access_check = <IN>;
				flock(IN,8);		# ���b�N�����B
				close(IN);

				#���[�U�[�F�؃A�J�E���g��񐸍��B
				foreach $x(@access_check){

					#���[�U�[�F�؃A�J�E���g��񂩂�ID,PASS���擾����B
					($dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$id,$pass) = split(/,/,$x);

					#�擾����ID,PASS��POST(GET)����ID,PASS���}�b�`���O�B
					if($id eq $c_id && $pass eq $c_pass){

						#�����̏ꍇ�Ƀ��[�v�𔲂���B
						$loginFlg = 1;
						last;
					}

				}

			}

		}

		if($loginFlg == 1){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1" align="right">
       <tr>
        <td align="right">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="mode" value="access_check">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="user" value="out">
        <input type="hidden" name="user_id" value="$c_id">
        <input type="hidden" name="user_pass" value="$c_pass">
        <font size="-1"><strong>$c_id</strong>�Ń��O�C������Ă��܂��B</font>
        <input type="submit" value="���O�A�E�g">
        </form>
        </td>
       </tr>
      </table>
      <br>
      <br>
EOM

		}

		#�A�N�Z�X�F�؃G���[�B
		if($in{'access'} eq "error")                                                        {&errorAccess;}
		#�y�[�W���ł̃A�N�Z�X�`�F�b�N�B
		elsif($in{'category'} eq "1" && $in{'page'} eq "0" && $acs1 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "1" && $acs2 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "2" && $acs3 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "3" && $acs4 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "4" && $acs5 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "1" && $in{'page'} eq "5" && $acs6 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "0" && $acs7 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "1" && $acs8 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "2" && $acs9 eq "on" && $loginFlg == 0) {&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "3" && $acs10 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "4" && $acs11 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "2" && $in{'page'} eq "5" && $acs12 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "0" && $acs13 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "1" && $acs14 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "2" && $acs15 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "3" && $acs16 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "4" && $acs17 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "3" && $in{'page'} eq "5" && $acs18 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "0" && $acs19 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "1" && $acs20 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "2" && $acs21 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "3" && $acs22 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "4" && $acs23 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "4" && $in{'page'} eq "5" && $acs24 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "0" && $acs25 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "1" && $acs26 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "2" && $acs27 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "3" && $acs28 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "4" && $acs29 eq "on" && $loginFlg == 0){&access;}
		elsif($in{'category'} eq "5" && $in{'page'} eq "5" && $acs30 eq "on" && $loginFlg == 0){&access;}
		#�A�N�Z�X�`�F�b�N�s�v�̏ꍇ�A�e�y�[�W���C�A�E�g�����B
		else{
			if($in{'view'} eq "payment_nicos"){
				&payment_nicos;
			}else{

			if($kind eq "�g�b�v�y�[�W"){
				&top;
			}elsif($kind eq "�ėp1"){
				if($in{'search'} eq "on"){
					&use1_search;
				}else{
					&use1;
				}
			}elsif($kind eq "�ėp2"){
				if($in{'search'} eq "on"){
					&use2_search;
				}else{
					&use2;
				}
			}elsif($kind eq "���X�g1"){
				if($in{'search'} eq "on"){
					&list1_search;
				}else{
					&list1;
				}
			}elsif($kind eq "���X�g2"){
				if($in{'search'} eq "on"){
					&list2_search;
				}else{
					&list2;
				}
			}elsif($kind eq "���i�ē�1"){
				if($in{'detail'} eq "on"){
					&item1_detail;
				}elsif($in{'search'} eq "on"){
					&item1_search;
				}elsif($in{'ask'} eq "on"){
					&item1_ask;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "�ꗗ�ɖ߂�"){
					&item1;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F"){
					&ask_check;
				}elsif($in{'ask'} eq "mail"){
					&ask_mail;
				}else{
					&item1;
				}
			}elsif($kind eq "���i�ē�2"){
				if($in{'detail'} eq "on"){
					&item2_detail;
				}elsif($in{'search'} eq "on"){
					&item2_search;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "�ꗗ�ɖ߂�"){
					&item2;
				}elsif($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F"){
					&ask_check;
				}elsif($in{'ask'} eq "mail"){
					&ask_mail;
				}else{
					&item2;
				}
			}elsif($kind eq "�V���b�v1" || $kind eq "�V���b�v2"){
##########
				if($in{'cart'} eq "" && $kind eq "�V���b�v1"){
					&shop1;
				}elsif($in{'cart'} eq "detail" && $kind eq "�V���b�v1"){
					&shop1_detail;
				}elsif($in{'cart'} eq "search" && $kind eq "�V���b�v1"){
					&shop1_search;
##########
##########
				}elsif($in{'cart'} eq "" && $kind eq "�V���b�v2"){
					&shop2;
				}elsif($in{'cart'} eq "detail" && $kind eq "�V���b�v2"){
					&shop2_detail;
				}elsif($in{'cart'} eq "search" && $kind eq "�V���b�v2"){
					&shop2_search;
##########
##########
				}elsif($in{'cart'} eq "payment"){
					&cart_order0;
				}elsif($in{'cart'} eq "view"){
					&cart_order0;
##########
##########
				}elsif($in{'cart'} eq "select" && $kind eq "�V���b�v1"){
					if($in{'submit'} eq "���͉�ʂɖ߂�"){
						&shop1;
					}else{
						&cart_order0;
					}
				}elsif($in{'cart'} eq "select" && $kind eq "�V���b�v2"){
					if($in{'submit'} eq "���i�ꗗ�ɖ߂�"){
						&shop2;
					}elsif($in{'submit'} eq "���͉�ʂɖ߂�"){
						&shop2;
					}else{
						&cart_order0;
					}
##########
##########
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "�ύX"){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq ""){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "�폜"){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "�ꊇ�폜"){
					&cart_order0;
				}elsif($in{'cart'} eq "edit" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq ""){
					&cart_order0;
				}elsif($in{'cart'} eq "order1" && $in{'submit'} eq "�����ғ��͉�ʂɐi��"){
					&cart_order1;
				}elsif($in{'cart'} eq "order1" && $in{'submit_data'} eq "�����ғ��͉�ʂɐi��"){
					&cart_order1;
				}elsif($in{'cart'} eq "order2" && $in{'back'} eq "�I�����i�ꗗ��ʂɖ߂�"){
					&cart_order0;
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���͉�ʂɖ߂�"){
					&cart_order1;
##########
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "same"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�����ғ��͉�ʂɖ߂�" && $in{'address'} eq "same"){
					&cart_order1;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�������m�F��ʂɐi��" && $in{'address'} eq "same"){
					&cart_order5;
####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�ύX����" && $in{'address'} eq "same"){
					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�X�V����" && $in{'address'} eq "same"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "user_edit"){
					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�ύX����" && $in{'address'} eq "same"){
					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�X�V����" && $in{'address'} eq "same"){
					&cart_order5;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�ύX����" && $in{'address'} eq "same"){
					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�X�V����" && $in{'address'} eq "same"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "delivery_day_edit"){
					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�ύX����" && $in{'address'} eq "same"){
					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�X�V����" && $in{'address'} eq "same"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "same" && $in{'type'} eq "message_edit"){
					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���i�z���m�F��ʂɖ߂�" && $in{'address'} eq "same"){
					&cart_order4;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "��L���e�ő��M����" && $in{'address'} eq "same"){
					&cart_mail;
####################
####################
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "�z������͉�ʂɐi��" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order2" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "�����ғ��͉�ʂɖ߂�" && $in{'address'} eq "other"){
					&cart_order1;
				}elsif($in{'cart'} eq "order3" && $in{'submit'} eq "���i�z���ݒ��ʂɐi��" && $in{'address'} eq "other"){
					&cart_order3;
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "�z�����o�^����" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "�����҂�z����ɒǉ�����" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "add" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "del" && $in{'submit'} eq "�폜" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "�z������͉�ʂɖ߂�" && $in{'address'} eq "other"){
					&cart_order2;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
					&cart_order3;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "���i�z���m�F��ʂɐi��" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order4" && $in{'submit'} eq "" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���i�z���ݒ��ʂɖ߂�" && $in{'address'} eq "other"){
					&cart_order3;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order5" && $in{'submit'} eq "�������m�F��ʂɐi��" && $in{'address'} eq "other"){
					&cart_order5;
####################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "���i�z������ύX����" && $in{'address'} eq "other"){
					&order_edit;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "�X�V����" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'order_edit'} eq "" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "order_edit"){
					&order_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�ύX����" && $in{'address'} eq "other"){
					&user_edit;
				}elsif($in{'cart'} eq "order6" && $in{'user_edit'} eq "�X�V����" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "user_edit"){
					&user_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�ύX����" && $in{'address'} eq "other"){
					&payment_edit;
				}elsif($in{'cart'} eq "order6" && $in{'payment_edit'} eq "�X�V����" && $in{'address'} eq "other"){
					&cart_order5;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�ύX����" && $in{'address'} eq "other"){
					&delivery_day_edit;
				}elsif($in{'cart'} eq "order6" && $in{'delivery_day_edit'} eq "�X�V����" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "delivery_day_edit"){
					&delivery_day_edit;
##############################
##############################
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�ύX����" && $in{'address'} eq "other"){
					&message_edit;
				}elsif($in{'cart'} eq "order6" && $in{'message_edit'} eq "�X�V����" && $in{'address'} eq "other"){
					&cart_order5;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���͉�ʂɖ߂�" && $in{'address'} eq "other" && $in{'type'} eq "message_edit"){
					&message_edit;
##############################
####################
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "���i�z���m�F��ʂɖ߂�" && $in{'address'} eq "other"){
					&cart_order4;
				}elsif($in{'cart'} eq "order6" && $in{'submit'} eq "��L���e�ő��M����" && $in{'address'} eq "other"){
					&cart_mail;
				}
####################
			}elsif($kind eq "��ЊT�v1"){
				&profile1;
			}elsif($kind eq "�t�H�[��1"){
				if($in{'form'} eq "check"){
					&form_check;
				}elsif($in{'form'} eq "mail"){
					&form_mail;
				}else{
					&form1;
				}
			}

			}

print<<"EOM";
     </td>
    </tr>
   </table>
EOM

		}

print<<"EOM";
   <table border="0" cellpadding="1" cellspacing="1">
    <tr>
     <td>
EOM

		#���쌠��\���B
		if($ppt17 ne ""){

print<<"EOM";
      <font size="-1">$ppt17</font>
EOM

		}

		if($location eq "up"){

			my $new_cgi_address = "";

			if($rls15 eq "on" && $rls16 ne "" && $kind eq "�t�H�[��1"){
				$new_cgi_address = "$rls16\/$cgi_host";
			}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�1" && (($in{'ask'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "�ꗗ�ɖ߂�") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){
				$new_cgi_address = "$ask7\/$cgi_host";
			}elsif($ask6 eq "on" && $ask7 ne "" && $kind eq "���i�ē�2" && (($in{'detail'} eq "on") || ($in{'ask'} eq "check" && $in{'submit'} eq "���͓��e�̊m�F") || ($in{'ask'} eq "mail"))){
				$new_cgi_address = "$ask7\/$cgi_host";
			}elsif($crt42 eq "on" && $crt43 ne "" && ($in{'cart'} eq "order1" || $in{'cart'} eq "order2" || $in{'cart'} eq "order3" || $in{'cart'} eq "order4" || $in{'cart'} eq "order5" || $in{'cart'} eq "order6" || $in{'cart'} eq "add" || $in{'cart'} eq "del")){
				$new_cgi_address = "$crt43\/$cgi_host";
			}else{
				$new_cgi_address = $cgi_address;
			}

			#���O�o�͂̔��ʁB�iCGI�����̓��O���o�͂��Ȃ��j
			if($in{'detail'} eq "" 
			&& $in{'search'} eq "" 
			&& $in{'return'} eq "" 
			&& $in{'view'} eq "" 
			&& $in{'ask'} eq "" 
			&& $in{'form'} eq "" 
			&& $in{'cart'} eq ""){

			my $sf_data = $site_folder;

			$sf_data =~ s/'/&#39;/g;

print<<"EOM";
<script type="text/javascript" language="JavaScript">
<!--
document.write("<img src='$new_cgi_address/$sf_data/log_note.cgi?page_name=$in{'category'}$in{'page'}&");
document.write(navigator.platform);
document.write("&amp;&amp;",document.referrer);
document.write("' width=0 height=0>");
// -->
</script>
EOM

			}
		}

print<<"EOM";
     </td>
    </tr>
   </table>
  </td>
 </tr>
</table>
</body>
</html>
EOM

	}

	exit;
}
##################################################
# access
# �A�N�Z�X�F�؉�ʂ̕\�����s���B
##################################################
sub access{

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="access_check">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <table border="0" cellpadding="1" cellspacing="1" width="300" align="center">
       <tr>
        <td><br></td>
       </tr>
      </table>
      <table bgcolor="#CCCCCC" border="1" cellpadding="2" cellspacing="2" width="300" align="center" bordercolor="#999999">
       <tr bordercolor="#CCCCCC" bgcolor="#000066">
        <td colspan="2" align="center" height="30"><font color="#FFFFFF" size="-1">���[�U�[ID�ƃp�X���[�h����͂��Ă��������B</font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td width="100" align="right"><font color="#000000" size="-1">���[�U�[ID</font></td>
        <td width="200"> 
        <input type="text" name="user_id" size="20" maxlength="20" value="$c_id">
        </td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td width="100" align="right"><font color="#000000" size="-1">�p�X���[�h</font></td>
        <td width="200"> 
        <input type="password" name="user_pass" size="8" maxlength="8" value="$c_pass">
        </td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td colspan="2"><font color="#000000" size="-1"><input type="checkbox" name="save" value="save" $save_check>ID�ƃp�X���[�h��ۑ�����</font></td>
       </tr>
       <tr bordercolor="#CCCCCC" bgcolor="#CCCCCC">
        <td colspan="2" align="center">
        <input type="submit" value="�F��">
        </td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1" width="300" align="center">
       <tr>
        <td><br></td>
       </tr>
      </table>
      </form>
     </td>
    </tr>
   </table>
EOM

}

1;

