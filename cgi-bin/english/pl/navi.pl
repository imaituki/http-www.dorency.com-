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
# naviTop
# �i�r�Q�[�V����0�����݂���ꍇ�̕\�����s���B
##################################################
sub naviTop{

	local(@button,$cnm,$font_cnm1,$font_cnm2,$url,$brs);

	@button = @button0;
	$cnm    = $cnm0;
	$url    = $url0;
	$brs    = $brs0;

	local($btn1,$btn2,$btn3,$btn4,$btn5,$btn6,$btn7,$btn8,$btn9,$btn10,$btn11,$btn12,$btn13,$btn14,$btn15,$btn16,$btn17,$btn18,$btn19,$btn20,$btn21,$btn22,$btn23,$btn24,$btn25,$btn26,$btn27,$btn28,$btn29,$btn30,$btn31,$btn32,$btn33,$btn34,$btn35,$btn36) = split(/,/,$button[0]);
	local($t_btn18,$t_btn17,$t1_font1,$t1_font2,$t_btn8,$t_btn7,$t_btn3,$t_btn6,$t_btn4,$t_btn5,$t_btn1,$t_btn2);
	local($t_btn25,$t_btn24,$t_btn23,$t_btn14,$t_btn15,$t_btn16,$t_btn12,$t_btn11,$t_btn13,$t_btn10);

	#�A�C�R���摜���`���B
	if($btn22 ne ""){
		if($cnm ne ""){$a_cnm = " alt=\"$cnm\"";}
		$btn22 = "<img src=\"$base_imgdir/$btn22\" align=\"absmiddle\" border=\"0\"$a_cnm>";
	}

	#�^�C�g���摜(�C���[�W�摜)���`���B
	if($btn21 ne ""){
		if($cnm ne ""){$a_cnm = " alt=\"$cnm\"";}
		$cnm = "<img src=\"$base_imgdir/$btn21\" border=\"0\"$a_cnm>";
	}

	#�J�e�S���[�����`���B
	if($btn21 eq ""){

		#[font]���`���B
		if($btn18 ne "")                {$t_btn18  = " size=\"$btn18\"";}
		if($btn17 ne "")                {$t_btn17  = " color=\"$btn17\"";}
		if($btn18 ne "" || $btn17 ne ""){$t1_font1 = "<font$t_btn18$t_btn17>";}
		if($btn18 ne "" || $btn17 ne ""){$t1_font2 = "</font>";}

		#�J�e�S���[�����`���B
		if($btn19 ne "" && $btn20 ne ""){$cnm = "$t1_font1<strong><i>$cnm</i></strong>$t1_font2";}
		if($btn19 ne "" && $btn20 eq ""){$cnm = "$t1_font1<strong>$cnm</strong>$t1_font2";}
		if($btn19 eq "" && $btn20 ne ""){$cnm = "$t1_font1<i>$cnm</i>$t1_font2";}
		if($btn19 eq "" && $btn20 eq ""){$cnm = "$t1_font1$cnm$t1_font2";}
	}

	if(($in{'category'} eq "0" && $in{'page'} eq "0") || ($in{'category'} eq "" && $in{'page'} eq "")){

		if($location eq "up"){

			#�����N��ݒ�B
			if($url =~ /^http/){

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$url = "$url";

			}else{

				if($url ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$url =~ s/^.//;
					$url = "$cgi_address/$site_folder$url";

				}
			}
		}
	}

	if($url ne "" && $brs ne "")       {$cnm = "<a href=\"$url\" target=\"_blank\">$cnm</a>";}
	if($url ne "" && $brs eq "")       {$cnm = "<a href=\"$url\">$cnm</a>";}
	if($url eq "" && $location eq "up"){$cnm = "<a href=\"$html_address\">$cnm</a>";}
	if($url eq "" && $location ne "up"){$cnm = "<a href=\"$script\">$cnm</a>";}

	#[table]���`���B
	if($btn8 ne ""){$t_btn8 = " background=\"$base_imgdir/$btn8\"";}
	if($btn7 ne ""){$t_btn7 = " bgcolor=\"$btn7\"";}
	if($btn3 ne ""){$t_btn3 = " border=\"$btn3\"";}
	if($btn3 eq ""){$t_btn3 = " border=\"0\"";}
	if($btn6 ne ""){$t_btn6 = " bordercolor=\"$btn6\"";}
	if($btn4 ne ""){$t_btn4 = " cellspacing=\"$btn4\"";}
	if($btn4 eq ""){$t_btn4 = " cellspacing=\"0\"";}
	if($btn5 ne ""){$t_btn5 = " cellpadding=\"$btn5\"";}
	if($btn5 eq ""){$t_btn5 = " cellpadding=\"0\"";}
	if($btn1 ne ""){$t_btn1 = " width=\"$btn1\"";}
	if($btn2 ne ""){$t_btn2 = " height=\"$btn2\"";}

	#[td]���`���B
	if($btn25 ne ""){$t_btn25 = " background=\"$base_imgdir/$btn25\"";}
	if($btn24 ne ""){$t_btn24 = " bgcolor=\"$btn24\"";}
	if($btn23 ne ""){$t_btn23 = " bordercolor=\"$btn23\"";}
	if($btn14 ne ""){$t_btn14 = " height=\"$btn14\"";}
	if($btn15 ne ""){$t_btn15 = " align=\"$btn15\"";}
	if($btn16 ne ""){$t_btn16 = " valign=\"$btn16\"";}

	#�i�r�Q�[�V����0��\���B

print<<"EOM";
   <table$t_btn8$t_btn7$t_btn3$t_btn6$t_btn4$t_btn5$t_btn1$t_btn2>
    <tr>
     <td$t_btn25$t_btn24$t_btn23$t_btn14$t_btn15$t_btn16>$btn22$cnm</td>
    </tr>
   </table>
EOM

	#��؂���`���B
	if($btn12 ne ""){$t_btn12 = " size=\"$btn12\"";}
	if($btn11 ne ""){$t_btn11 = " width=\"$btn11\"";}
	if($btn13 ne ""){$t_btn13 = " color=\"$btn13\"";}
	if($btn10 ne ""){$t_btn10 = " height=\"$btn10\"";}

	#��؂��\���B
	if($btn9 eq "��؂��"){
		print"   <hr$t_btn12$t_btn11$t_btn13>\n";
	}elsif($btn9 eq "���s"){
		print"   <br>\n";
	}elsif($btn9 eq "���l" && $btn10 ne "0"){
		print"   <img src=\"$imgdir/spacer.gif\"$t_btn10><br>\n";
	}else{
		print"";
	}
}
##################################################
# naviOther
# �i�r�Q�[�V����1�`5�����݂���ꍇ�̕\�����s���B
##################################################
sub naviOther{

	local(@button,$t_cnm,$t1_cnm,$t2_cnm,$font_cnm1,$font_cnm2,$t_url,$t_brs,$t_cat);
	local($t_pnm0,$t_pnm1,$t_pnm2,$t_pnm3,$t_pnm4,$t_pnm5);
	local($t_url0,$t_url1,$t_url2,$t_url3,$t_url4,$t_url5);
	local($t_brs0,$t_brs1,$t_brs2,$t_brs3,$t_brs4,$t_brs5);
	local($t_ps0,$t_ps1,$t_ps2,$t_ps3,$t_ps4,$t_ps5);
	local($t1_pnm0,$t1_pnm1,$t1_pnm2,$t1_pnm3,$t1_pnm4,$t1_pnm5);
	local($t1_url0,$t1_url1,$t1_url2,$t1_url3,$t1_url4,$t1_url5);
	local($t_btn22,$t_btn33,$t_btn18,$t_btn17,$t1_font1,$t1_font2);
	local($t_btn8,$t_btn7,$t_btn3,$t_btn6,$t_btn4,$t_btn5,$t_btn1,$t_btn2);
	local($t_btn25,$t_btn24,$t_btn23,$t_btn14,$t_btn15,$t_btn16,$t_btn36,$t_btn35,$t_btn34,$t_btn26,$t_btn27,$t_btn28);
	local($t_btn30,$t_btn29,$t2_font1,$t2_font2,$t_btn12,$t_btn11,$t_btn13,$t_btn10);
	local($t_knm0,$t_knm1,$t_knm2,$t_knm3,$t_knm4,$t_knm5);
	local($t_width0,$t_width1,$t_width2,$t_width3,$t_width4,$t_width5);

	if($_[0] eq "1"){

		@button = @button1;
		$t_cnm  = $cnm1;
		$t_url  = $url1;
		$t_brs  = $brs1;
		$t_cat  = $cat1;
		$t_pnm0 = $pnm10;
		$t_pnm1 = $pnm11;
		$t_pnm2 = $pnm12;
		$t_pnm3 = $pnm13;
		$t_pnm4 = $pnm14;
		$t_pnm5 = $pnm15;
		$t_url0 = $url10;
		$t_url1 = $url11;
		$t_url2 = $url12;
		$t_url3 = $url13;
		$t_url4 = $url14;
		$t_url5 = $url15;
		$t_brs0 = $brs10;
		$t_brs1 = $brs11;
		$t_brs2 = $brs12;
		$t_brs3 = $brs13;
		$t_brs4 = $brs14;
		$t_brs5 = $brs15;
		$t_ps0  = $ps10;
		$t_ps1  = $ps11;
		$t_ps2  = $ps12;
		$t_ps3  = $ps13;
		$t_ps4  = $ps14;
		$t_ps5  = $ps15;
		$t_knm0 = $knm10;
		$t_knm1 = $knm11;
		$t_knm2 = $knm12;
		$t_knm3 = $knm13;
		$t_knm4 = $knm14;
		$t_knm5 = $knm15;
		$t_width0 = $ads1 + 100;
		$t_width1 = $ads1 + 100;
		$t_width2 = $ads1 + 100;
		$t_width3 = $ads1 + 100;
		$t_width4 = $ads1 + 100;
		$t_width5 = $ads1 + 100;

	}elsif($_[0] eq "2"){

		@button = @button2;
		$t_cnm  = $cnm2;
		$t_url  = $url2;
		$t_brs  = $brs2;
		$t_cat  = $cat2;
		$t_pnm0 = $pnm20;
		$t_pnm1 = $pnm21;
		$t_pnm2 = $pnm22;
		$t_pnm3 = $pnm23;
		$t_pnm4 = $pnm24;
		$t_pnm5 = $pnm25;
		$t_url0 = $url20;
		$t_url1 = $url21;
		$t_url2 = $url22;
		$t_url3 = $url23;
		$t_url4 = $url24;
		$t_url5 = $url25;
		$t_brs0 = $brs20;
		$t_brs1 = $brs21;
		$t_brs2 = $brs22;
		$t_brs3 = $brs23;
		$t_brs4 = $brs24;
		$t_brs5 = $brs25;
		$t_ps0  = $ps20;
		$t_ps1  = $ps21;
		$t_ps2  = $ps22;
		$t_ps3  = $ps23;
		$t_ps4  = $ps24;
		$t_ps5  = $ps25;
		$t_knm0 = $knm20;
		$t_knm1 = $knm21;
		$t_knm2 = $knm22;
		$t_knm3 = $knm23;
		$t_knm4 = $knm24;
		$t_knm5 = $knm25;
		$t_width0 = $ads1 + 100;
		$t_width1 = $ads1 + 100;
		$t_width2 = $ads1 + 100;
		$t_width3 = $ads1 + 100;
		$t_width4 = $ads1 + 100;
		$t_width5 = $ads1 + 100;

	}elsif($_[0] eq "3"){

		@button = @button3;
		$t_cnm  = $cnm3;
		$t_url  = $url3;
		$t_brs  = $brs3;
		$t_cat  = $cat3;
		$t_pnm0 = $pnm30;
		$t_pnm1 = $pnm31;
		$t_pnm2 = $pnm32;
		$t_pnm3 = $pnm33;
		$t_pnm4 = $pnm34;
		$t_pnm5 = $pnm35;
		$t_url0 = $url30;
		$t_url1 = $url31;
		$t_url2 = $url32;
		$t_url3 = $url33;
		$t_url4 = $url34;
		$t_url5 = $url35;
		$t_brs0 = $brs30;
		$t_brs1 = $brs31;
		$t_brs2 = $brs32;
		$t_brs3 = $brs33;
		$t_brs4 = $brs34;
		$t_brs5 = $brs35;
		$t_ps0  = $ps30;
		$t_ps1  = $ps31;
		$t_ps2  = $ps32;
		$t_ps3  = $ps33;
		$t_ps4  = $ps34;
		$t_ps5  = $ps35;
		$t_knm0 = $knm30;
		$t_knm1 = $knm31;
		$t_knm2 = $knm32;
		$t_knm3 = $knm33;
		$t_knm4 = $knm34;
		$t_knm5 = $knm35;
		$t_width0 = $ads1 + 100;
		$t_width1 = $ads1 + 100;
		$t_width2 = $ads1 + 100;
		$t_width3 = $ads1 + 100;
		$t_width4 = $ads1 + 100;
		$t_width5 = $ads1 + 100;

	}elsif($_[0] eq "4"){

		@button = @button4;
		$t_cnm  = $cnm4;
		$t_url  = $url4;
		$t_brs  = $brs4;
		$t_cat  = $cat4;
		$t_pnm0 = $pnm40;
		$t_pnm1 = $pnm41;
		$t_pnm2 = $pnm42;
		$t_pnm3 = $pnm43;
		$t_pnm4 = $pnm44;
		$t_pnm5 = $pnm45;
		$t_url0 = $url40;
		$t_url1 = $url41;
		$t_url2 = $url42;
		$t_url3 = $url43;
		$t_url4 = $url44;
		$t_url5 = $url45;
		$t_brs0 = $brs40;
		$t_brs1 = $brs41;
		$t_brs2 = $brs42;
		$t_brs3 = $brs43;
		$t_brs4 = $brs44;
		$t_brs5 = $brs45;
		$t_ps0  = $ps40;
		$t_ps1  = $ps41;
		$t_ps2  = $ps42;
		$t_ps3  = $ps43;
		$t_ps4  = $ps44;
		$t_ps5  = $ps45;
		$t_knm0 = $knm40;
		$t_knm1 = $knm41;
		$t_knm2 = $knm42;
		$t_knm3 = $knm43;
		$t_knm4 = $knm44;
		$t_knm5 = $knm45;
		$t_width0 = $ads1 + 100;
		$t_width1 = $ads1 + 100;
		$t_width2 = $ads1 + 100;
		$t_width3 = $ads1 + 100;
		$t_width4 = $ads1 + 100;
		$t_width5 = $ads1 + 100;

	}elsif($_[0] eq "5"){

		@button = @button5;
		$t_cnm  = $cnm5;
		$t_url  = $url5;
		$t_brs  = $brs5;
		$t_cat  = $cat5;
		$t_pnm0 = $pnm50;
		$t_pnm1 = $pnm51;
		$t_pnm2 = $pnm52;
		$t_pnm3 = $pnm53;
		$t_pnm4 = $pnm54;
		$t_pnm5 = $pnm55;
		$t_url0 = $url50;
		$t_url1 = $url51;
		$t_url2 = $url52;
		$t_url3 = $url53;
		$t_url4 = $url54;
		$t_url5 = $url55;
		$t_brs0 = $brs50;
		$t_brs1 = $brs51;
		$t_brs2 = $brs52;
		$t_brs3 = $brs53;
		$t_brs4 = $brs54;
		$t_brs5 = $brs55;
		$t_ps0  = $ps50;
		$t_ps1  = $ps51;
		$t_ps2  = $ps52;
		$t_ps3  = $ps53;
		$t_ps4  = $ps54;
		$t_ps5  = $ps55;
		$t_knm0 = $knm50;
		$t_knm1 = $knm51;
		$t_knm2 = $knm52;
		$t_knm3 = $knm53;
		$t_knm4 = $knm54;
		$t_knm5 = $knm55;
		$t_width0 = $ads1 + 100;
		$t_width1 = $ads1 + 100;
		$t_width2 = $ads1 + 100;
		$t_width3 = $ads1 + 100;
		$t_width4 = $ads1 + 100;
		$t_width5 = $ads1 + 100;

	}

	local($btn1,$btn2,$btn3,$btn4,$btn5,$btn6,$btn7,$btn8,$btn9,$btn10,$btn11,$btn12,$btn13,$btn14,$btn15,$btn16,$btn17,$btn18,$btn19,$btn20,$btn21,$btn22,$btn23,$btn24,$btn25,$btn26,$btn27,$btn28,$btn29,$btn30,$btn31,$btn32,$btn33,$btn34,$btn35,$btn36) = split(/,/,$button[0]);

	#�A�C�R���摜���`���B
	if($btn22 ne ""){
		if($t_cnm ne ""){$a_cnm = " alt=\"$t_cnm\"";}
		$t_btn22 = "<img src=\"$base_imgdir/$btn22\" align=\"absmiddle\" border=\"0\"$a_cnm>";
	}

	#�^�C�g���摜(�C���[�W�摜)���`���B
	if($btn21 ne ""){
		if($t_cnm ne ""){$a_cnm = " alt=\"$t_cnm\"";}
		$t1_cnm = "<img src=\"$base_imgdir/$btn21\" border=\"0\"$a_cnm>";
	}

	#�J�e�S���[�����`���B
	if($btn21 eq ""){

		#[font]���`���B
		if($btn18 ne "")                {$t_btn18  = " size=\"$btn18\"";}
		if($btn17 ne "")                {$t_btn17  = " color=\"$btn17\"";}
		if($btn18 ne "" || $btn17 ne ""){$t1_font1 = "<font$t_btn18$t_btn17>";}
		if($btn18 ne "" || $btn17 ne ""){$t1_font2 = "</font>";}

		#�J�e�S���[�����`���B
		if($btn19 ne "" && $btn20 ne ""){$t1_cnm = "$t1_font1<strong><i>$t_cnm</i></strong>$t1_font2";}
		if($btn19 ne "" && $btn20 eq ""){$t1_cnm = "$t1_font1<strong>$t_cnm</strong>$t1_font2";}
		if($btn19 eq "" && $btn20 ne ""){$t1_cnm = "$t1_font1<i>$t_cnm</i>$t1_font2";}
		if($btn19 eq "" && $btn20 eq ""){$t1_cnm = "$t1_font1$t_cnm$t1_font2";}
	}

	if(($in{'category'} eq "0" && $in{'page'} eq "0") || ($in{'category'} eq "" && $in{'page'} eq "")){

		if($location eq "up"){

			#�����N��ݒ�B
			if($t_url =~ /^http/ || $t_url =~ /^mailto/){

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$t_url = "$t_url";

			}else{

				if($t_url ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$t_url =~ s/^.//;
					$t_url = "$cgi_address/$site_folder$t_url";

				}
			}

			#�����N��ݒ�B
			if($t_url0 =~ /^http/ || $t_url0 =~ /^mailto/) {

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$t_url0 = "$t_url0";

			}else{

				if($t_url0 ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$t_url0 =~ s/^.//;
					$t_url0 = "$cgi_address/$site_folder$t_url0";

				}
			}

			#�����N��ݒ�B
			if($t_url1 =~ /^http/ || $t_url1 =~ /^mailto/){

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$t_url1 = "$t_url1";

			}else{

				if($t_url1 ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$t_url1 =~ s/^.//;
					$t_url1 = "$cgi_address/$site_folder$t_url1";

				}
			}

			#�����N��ݒ�B
			if($t_url2 =~ /^http/ || $t_url2 =~ /^mailto/){

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$t_url2 = "$t_url2";

			}else{

				if($t_url2 ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$t_url2 =~ s/^.//;
					$t_url2 = "$cgi_address/$site_folder$t_url2";

				}
			}

			#�����N��ݒ�B
			if($t_url3 =~ /^http/ || $t_url3 =~ /^mailto/){

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$t_url3 = "$t_url3";

			}else{

				if($t_url3 ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$t_url3 =~ s/^.//;
					$t_url3 = "$cgi_address/$site_folder$t_url3";

				}
			}

			#�����N��ݒ�B
			if($t_url4 =~ /^http/ || $t_url4 =~ /^mailto/){

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$t_url4 = "$t_url4";

			}else{

				if($t_url4 ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$t_url4 =~ s/^.//;
					$t_url4 = "$cgi_address/$site_folder$t_url4";

				}
			}

			#�����N��ݒ�B
			if($t_url5 =~ /^http/ || $t_url5 =~ /^mailto/){

				#��΃A�h���X�̏ꍇ�͂��̂܂܂ɂ���B
				$t_url5 = "$t_url5";

			}else{

				if($t_url5 ne ""){

					#���΃A�h���X�̏ꍇ�͒u���������s���B
					$t_url5 =~ s/^.//;
					$t_url5 = "$cgi_address/$site_folder$t_url5";

				}
			}
		}
	}

	#�����N���`���B
	if($t_url ne "" && $t_brs ne ""){$t2_cnm = "<a href=\"$t_url\" target=\"_blank\">$t1_cnm</a>";}
	if($t_url ne "" && $t_brs eq ""){$t2_cnm = "<a href=\"$t_url\">$t1_cnm</a>";}
	if($t_url eq "" && $t_brs eq ""){$t2_cnm = "$t1_cnm";}

	#�摜���`���B
	if($btn33 ne ""){$t_btn33 = "<td><img src=\"$base_imgdir/$btn33\" align=\"absmiddle\" border=\"0\"></td>";}

	#�J�e�S���[�z���̃y�[�W�����`���B
	if($btn31 ne "" && $btn32 ne ""){
		if($t_pnm0 ne ""){$t1_pnm0 = "<strong><i>$t_pnm0</i></strong>";}
		if($t_pnm1 ne ""){$t1_pnm1 = "<strong><i>$t_pnm1</i></strong>";}
		if($t_pnm2 ne ""){$t1_pnm2 = "<strong><i>$t_pnm2</i></strong>";}
		if($t_pnm3 ne ""){$t1_pnm3 = "<strong><i>$t_pnm3</i></strong>";}
		if($t_pnm4 ne ""){$t1_pnm4 = "<strong><i>$t_pnm4</i></strong>";}
		if($t_pnm5 ne ""){$t1_pnm5 = "<strong><i>$t_pnm5</i></strong>";}
	}
	if($btn31 ne "" && $btn32 eq ""){
		if($t_pnm0 ne ""){$t1_pnm0 = "<strong>$t_pnm0</strong>";}
		if($t_pnm1 ne ""){$t1_pnm1 = "<strong>$t_pnm1</strong>";}
		if($t_pnm2 ne ""){$t1_pnm2 = "<strong>$t_pnm2</strong>";}
		if($t_pnm3 ne ""){$t1_pnm3 = "<strong>$t_pnm3</strong>";}
		if($t_pnm4 ne ""){$t1_pnm4 = "<strong>$t_pnm4</strong>";}
		if($t_pnm5 ne ""){$t1_pnm5 = "<strong>$t_pnm5</strong>";}
	}
	if($btn31 eq "" && $btn32 ne ""){
		if($t_pnm0 ne ""){$t1_pnm0 = "<i>$t_pnm0</i>";}
		if($t_pnm1 ne ""){$t1_pnm1 = "<i>$t_pnm1</i>";}
		if($t_pnm2 ne ""){$t1_pnm2 = "<i>$t_pnm2</i>";}
		if($t_pnm3 ne ""){$t1_pnm3 = "<i>$t_pnm3</i>";}
		if($t_pnm4 ne ""){$t1_pnm4 = "<i>$t_pnm4</i>";}
		if($t_pnm5 ne ""){$t1_pnm5 = "<i>$t_pnm5</i>";}
	}
	if($btn31 eq "" && $btn32 eq ""){
		if($t_pnm0 ne ""){$t1_pnm0 = "$t_pnm0";}
		if($t_pnm1 ne ""){$t1_pnm1 = "$t_pnm1";}
		if($t_pnm2 ne ""){$t1_pnm2 = "$t_pnm2";}
		if($t_pnm3 ne ""){$t1_pnm3 = "$t_pnm3";}
		if($t_pnm4 ne ""){$t1_pnm4 = "$t_pnm4";}
		if($t_pnm5 ne ""){$t1_pnm5 = "$t_pnm5";}
	}

	#[table]���`���B
	if($btn8 ne ""){$t_btn8 = " background=\"$base_imgdir/$btn8\"";}
	if($btn7 ne ""){$t_btn7 = " bgcolor=\"$btn7\"";}
	if($btn3 ne ""){$t_btn3 = " border=\"$btn3\"";}
	if($btn3 eq ""){$t_btn3 = " border=\"0\"";}
	if($btn6 ne ""){$t_btn6 = " bordercolor=\"$btn6\"";}
	if($btn4 ne ""){$t_btn4 = " cellspacing=\"$btn4\"";}
	if($btn4 eq ""){$t_btn4 = " cellspacing=\"0\"";}
	if($btn5 ne ""){$t_btn5 = " cellpadding=\"$btn5\"";}
	if($btn5 eq ""){$t_btn5 = " cellpadding=\"0\"";}
	if($btn1 ne ""){$t_btn1 = " width=\"$btn1\"";}
	if($btn2 ne ""){$t_btn2 = " height=\"$btn2\"";}

	#[td]���`���B
	if($btn25 ne ""){$t_btn25 = " background=\"$base_imgdir/$btn25\"";}
	if($btn24 ne ""){$t_btn24 = " bgcolor=\"$btn24\"";}
	if($btn23 ne ""){$t_btn23 = " bordercolor=\"$btn23\"";}
	if($btn14 ne ""){$t_btn14 = " height=\"$btn14\"";}
	if($btn15 ne ""){$t_btn15 = " align=\"$btn15\"";}
	if($btn16 ne ""){$t_btn16 = " valign=\"$btn16\"";}

	#�i�r�Q�[�V������\���B
	if($t_cat ne "on"){

print<<"EOM";
   <table$t_btn8$t_btn7$t_btn3$t_btn6$t_btn4$t_btn5$t_btn1$t_btn2>
    <tr>
     <td$t_btn25$t_btn24$t_btn23$t_btn14$t_btn15$t_btn16>$t_btn22$t2_cnm</td>
    </tr>
EOM

		#�J�e�S���[�z���̃y�[�W���`���B
		if($t_pnm0 ne "" || $t_pnm1 ne "" || $t_pnm2 ne "" || $t_pnm3 ne "" || $t_pnm4 ne "" || $t_pnm5 ne ""){

			#[td]���`���B
			if($btn36 ne ""){$t_btn36 = " background=\"$base_imgdir/$btn36\"";}
			if($btn35 ne ""){$t_btn35 = " bgcolor=\"$btn35\"";}
			if($btn34 ne ""){$t_btn34 = " bordercolor=\"$btn34\"";}
			if($btn26 ne ""){$t_btn26 = " height=\"$btn26\"";}
			if($btn27 ne ""){$t_btn27 = " align=\"$btn27\"";}
			if($btn28 ne ""){$t_btn28 = " valign=\"$btn28\"";}

		#�i�r�Q�[�V������\���B

print<<"EOM";
    <tr>
     <td$t_btn36$t_btn35$t_btn34$t_btn26$t_btn27$t_btn28>
      <table border="0" cellpadding="0" cellspacing="0">
EOM

			#[font]���`���B
			if($btn30 ne "")                {$t_btn30  = " size=\"$btn30\"";}
			if($btn29 ne "")                {$t_btn29  = " color=\"$btn29\"";}
			if($btn30 ne "" || $btn29 ne ""){$t2_font1 = "<font$t_btn30$t_btn29>";}
			if($btn30 ne "" || $btn29 ne ""){$t2_font2 = "</font>";}

			if($location eq "up"){

				if($t_knm0 eq "�t�H�[��1"){

					my @rules_temp = ();

					#�L���`���K���ݒ���t�@�C���ǂݍ��݁B
					if(-e "$rootdir/page_design/story/rules/$_[0]0.dat"){
						open(IN,"$rootdir/page_design/story/rules/$_[0]0.dat");
						flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
						@rules_temp = <IN>;
						flock(IN,8);		# ���b�N�����B
						close(IN);
					}

					my @rules_data = split(/,/,$rules_temp[0]);

					if($rules_data[14] eq "on" && $rules_data[15] ne ""){

						if($t_url0 ne "" && $t_brs0 ne "")   {$t1_url0 = "<a href=\"$t_url0\" target=\"_blank\">";}
						elsif($t_url0 ne "" && $t_brs0 eq ""){$t1_url0 = "<a href=\"$t_url0\">";}
						else                                 {$t1_url0 = "<a href=\"$rules_data[15]\/$cgi_host\/$site_folder\/siteup.cgi?category=$_[0]\">";}

					}else{

						if($t_url0 ne "" && $t_brs0 ne "")   {$t1_url0 = "<a href=\"$t_url0\" target=\"_blank\">";}
						elsif($t_url0 ne "" && $t_brs0 eq ""){$t1_url0 = "<a href=\"$t_url0\">";}
						else                                 {$t1_url0 = "<a href=\"$page_pass?category=$_[0]&page=0\">";}

					}

					undef(@rules_tem);
					undef(@rules_data);

				}else{

					if($t_url0 ne "" && $t_brs0 ne "")   {$t1_url0 = "<a href=\"$t_url0\" target=\"_blank\">";}
					elsif($t_url0 ne "" && $t_brs0 eq ""){$t1_url0 = "<a href=\"$t_url0\">";}
					else                                 {$t1_url0 = "<a href=\"$page_pass?category=$_[0]&page=0\">";}

				}

				if($t_knm1 eq "�t�H�[��1"){

					my @rules_temp = ();

					#�L���`���K���ݒ���t�@�C���ǂݍ��݁B
					if(-e "$rootdir/page_design/story/rules/$_[0]1.dat"){
						open(IN,"$rootdir/page_design/story/rules/$_[0]1.dat");
						flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
						@rules_temp = <IN>;
						flock(IN,8);		# ���b�N�����B
						close(IN);
					}

					my @rules_data = split(/,/,$rules_temp[0]);

					if($rules_data[14] eq "on" && $rules_data[15] ne ""){

						if($t_url1 ne "" && $t_brs1 ne "")   {$t1_url1 = "<a href=\"$t_url1\" target=\"_blank\">";}
						elsif($t_url1 ne "" && $t_brs1 eq ""){$t1_url1 = "<a href=\"$t_url1\">";}
						else                                 {$t1_url1 = "<a href=\"$rules_data[15]\/$cgi_host\/$site_folder\/siteup.cgi?category=$_[0]&page=1\">";}

					}else{

						if($t_url1 ne "" && $t_brs1 ne "")   {$t1_url1 = "<a href=\"$t_url1\" target=\"_blank\">";}
						elsif($t_url1 ne "" && $t_brs1 eq ""){$t1_url1 = "<a href=\"$t_url1\">";}
						else                                 {$t1_url1 = "<a href=\"$page_pass?category=$_[0]&page=1\">";}

					}

					undef(@rules_tem);
					undef(@rules_data);

				}else{

					if($t_url1 ne "" && $t_brs1 ne "")   {$t1_url1 = "<a href=\"$t_url1\" target=\"_blank\">";}
					elsif($t_url1 ne "" && $t_brs1 eq ""){$t1_url1 = "<a href=\"$t_url1\">";}
					else                                 {$t1_url1 = "<a href=\"$page_pass?category=$_[0]&page=1\">";}

				}

				if($t_knm2 eq "�t�H�[��1"){

					my @rules_temp = ();

					#�L���`���K���ݒ���t�@�C���ǂݍ��݁B
					if(-e "$rootdir/page_design/story/rules/$_[0]2.dat"){
						open(IN,"$rootdir/page_design/story/rules/$_[0]2.dat");
						flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
						@rules_temp = <IN>;
						flock(IN,8);		# ���b�N�����B
						close(IN);
					}

					my @rules_data = split(/,/,$rules_temp[0]);

					if($rules_data[14] eq "on" && $rules_data[15] ne ""){

						if($t_url2 ne "" && $t_brs2 ne "")   {$t1_url2 = "<a href=\"$t_url2\" target=\"_blank\">";}
						elsif($t_url2 ne "" && $t_brs2 eq ""){$t1_url2 = "<a href=\"$t_url2\">";}
						else                                 {$t1_url2 = "<a href=\"$rules_data[15]\/$cgi_host\/$site_folder\/siteup.cgi?category=$_[0]&page=2\">";}

					}else{

						if($t_url2 ne "" && $t_brs2 ne "")   {$t1_url2 = "<a href=\"$t_url2\" target=\"_blank\">";}
						elsif($t_url2 ne "" && $t_brs2 eq ""){$t1_url2 = "<a href=\"$t_url2\">";}
						else                                 {$t1_url2 = "<a href=\"$page_pass?category=$_[0]&page=2\">";}

					}

					undef(@rules_tem);
					undef(@rules_data);

				}else{

					if($t_url2 ne "" && $t_brs2 ne "")   {$t1_url2 = "<a href=\"$t_url2\" target=\"_blank\">";}
					elsif($t_url2 ne "" && $t_brs2 eq ""){$t1_url2 = "<a href=\"$t_url2\">";}
					else                                 {$t1_url2 = "<a href=\"$page_pass?category=$_[0]&page=2\">";}

				}

				if($t_knm3 eq "�t�H�[��1"){

					my @rules_temp = ();

					#�L���`���K���ݒ���t�@�C���ǂݍ��݁B
					if(-e "$rootdir/page_design/story/rules/$_[0]3.dat"){
						open(IN,"$rootdir/page_design/story/rules/$_[0]3.dat");
						flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
						@rules_temp = <IN>;
						flock(IN,8);		# ���b�N�����B
						close(IN);
					}

					my @rules_data = split(/,/,$rules_temp[0]);

					if($rules_data[14] eq "on" && $rules_data[15] ne ""){

						if($t_url3 ne "" && $t_brs3 ne "")   {$t1_url3 = "<a href=\"$t_url3\" target=\"_blank\">";}
						elsif($t_url3 ne "" && $t_brs3 eq ""){$t1_url3 = "<a href=\"$t_url3\">";}
						else                                 {$t1_url3 = "<a href=\"$rules_data[15]\/$cgi_host\/$site_folder\/siteup.cgi?category=$_[0]&page=3\">";}

					}else{

						if($t_url3 ne "" && $t_brs3 ne "")   {$t1_url3 = "<a href=\"$t_url3\" target=\"_blank\">";}
						elsif($t_url3 ne "" && $t_brs3 eq ""){$t1_url3 = "<a href=\"$t_url3\">";}
						else                                 {$t1_url3 = "<a href=\"$page_pass?category=$_[0]&page=3\">";}

					}

					undef(@rules_tem);
					undef(@rules_data);

				}else{

					if($t_url3 ne "" && $t_brs3 ne "")   {$t1_url3 = "<a href=\"$t_url3\" target=\"_blank\">";}
					elsif($t_url3 ne "" && $t_brs3 eq ""){$t1_url3 = "<a href=\"$t_url3\">";}
					else                                 {$t1_url3 = "<a href=\"$page_pass?category=$_[0]&page=3\">";}

				}

				if($t_knm4 eq "�t�H�[��1"){

					my @rules_temp = ();

					#�L���`���K���ݒ���t�@�C���ǂݍ��݁B
					if(-e "$rootdir/page_design/story/rules/$_[0]4.dat"){
						open(IN,"$rootdir/page_design/story/rules/$_[0]4.dat");
						flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
						@rules_temp = <IN>;
						flock(IN,8);		# ���b�N�����B
						close(IN);
					}

					my (@rules_data) = split(/,/,$rules_temp[0]);

					if($rules_data[14] eq "on" && $rules_data[15] ne ""){

						if($t_url4 ne "" && $t_brs4 ne "")   {$t1_url4 = "<a href=\"$t_url4\" target=\"_blank\">";}
						elsif($t_url4 ne "" && $t_brs4 eq ""){$t1_url4 = "<a href=\"$t_url4\">";}
						else                                 {$t1_url4 = "<a href=\"$rules_data[15]\/$cgi_host\/$site_folder\/siteup.cgi?category=$_[0]&page=4\">";}

					}else{

						if($t_url4 ne "" && $t_brs4 ne "")   {$t1_url4 = "<a href=\"$t_url4\" target=\"_blank\">";}
						elsif($t_url4 ne "" && $t_brs4 eq ""){$t1_url4 = "<a href=\"$t_url4\">";}
						else                                 {$t1_url4 = "<a href=\"$page_pass?category=$_[0]&page=4\">";}

					}

					undef(@rules_tem);
					undef(@rules_data);

				}else{

					if($t_url4 ne "" && $t_brs4 ne "")   {$t1_url4 = "<a href=\"$t_url4\" target=\"_blank\">";}
					elsif($t_url4 ne "" && $t_brs4 eq ""){$t1_url4 = "<a href=\"$t_url4\">";}
					else                                 {$t1_url4 = "<a href=\"$page_pass?category=$_[0]&page=4\">";}

				}

				if($t_knm5 eq "�t�H�[��1"){

					my @rules_temp = ();

					#�L���`���K���ݒ���t�@�C���ǂݍ��݁B
					if(-e "$rootdir/page_design/story/rules/$_[0]5.dat"){
						open(IN,"$rootdir/page_design/story/rules/$_[0]5.dat");
						flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
						@rules_temp = <IN>;
						flock(IN,8);		# ���b�N�����B
						close(IN);
					}

					my @rules_data = split(/,/,$rules_temp[0]);

					if($rules_data[14] eq "on" && $rules_data[15] ne ""){

						if($t_url5 ne "" && $t_brs5 ne "")   {$t1_url5 = "<a href=\"$t_url5\" target=\"_blank\">";}
						elsif($t_url5 ne "" && $t_brs5 eq ""){$t1_url5 = "<a href=\"$t_url5\">";}
						else                                 {$t1_url5 = "<a href=\"$rules_data[15]\/$cgi_host\/$site_folder\/siteup.cgi?category=$_[0]&page=5\">";}

					}else{

						if($t_url5 ne "" && $t_brs5 ne "")   {$t1_url5 = "<a href=\"$t_url5\" target=\"_blank\">";}
						elsif($t_url5 ne "" && $t_brs5 eq ""){$t1_url5 = "<a href=\"$t_url5\">";}
						else                                 {$t1_url5 = "<a href=\"$page_pass?category=$_[0]&page=5\">";}

					}

					undef(@rules_tem);
					undef(@rules_data);

				}else{

					if($t_url5 ne "" && $t_brs5 ne "")   {$t1_url5 = "<a href=\"$t_url5\" target=\"_blank\">";}
					elsif($t_url5 ne "" && $t_brs5 eq ""){$t1_url5 = "<a href=\"$t_url5\">";}
					else                                 {$t1_url5 = "<a href=\"$page_pass?category=$_[0]&page=5\">";}

				}

			}else{

				if($t_url0 ne "" && $t_brs0 ne "")   {$t1_url0 = "<a href=\"$t_url0\" target=\"_blank\">";}
				elsif($t_url0 ne "" && $t_brs0 eq ""){$t1_url0 = "<a href=\"$t_url0\">";}
				else                                 {$t1_url0 = "<a href=\"$page_pass?category=$_[0]&page=0\">";}

				if($t_url1 ne "" && $t_brs1 ne "")   {$t1_url1 = "<a href=\"$t_url1\" target=\"_blank\">";}
				elsif($t_url1 ne "" && $t_brs1 eq ""){$t1_url1 = "<a href=\"$t_url1\">";}
				else                                 {$t1_url1 = "<a href=\"$page_pass?category=$_[0]&page=1\">";}

				if($t_url2 ne "" && $t_brs2 ne "")   {$t1_url2 = "<a href=\"$t_url2\" target=\"_blank\">";}
				elsif($t_url2 ne "" && $t_brs2 eq ""){$t1_url2 = "<a href=\"$t_url2\">";}
				else                                 {$t1_url2 = "<a href=\"$page_pass?category=$_[0]&page=2\">";}

				if($t_url3 ne "" && $t_brs3 ne "")   {$t1_url3 = "<a href=\"$t_url3\" target=\"_blank\">";}
				elsif($t_url3 ne "" && $t_brs3 eq ""){$t1_url3 = "<a href=\"$t_url3\">";}
				else                                 {$t1_url3 = "<a href=\"$page_pass?category=$_[0]&page=3\">";}

				if($t_url4 ne "" && $t_brs4 ne "")   {$t1_url4 = "<a href=\"$t_url4\" target=\"_blank\">";}
				elsif($t_url4 ne "" && $t_brs4 eq ""){$t1_url4 = "<a href=\"$t_url4\">";}
				else                                 {$t1_url4 = "<a href=\"$page_pass?category=$_[0]&page=4\">";}

				if($t_url5 ne "" && $t_brs5 ne "")   {$t1_url5 = "<a href=\"$t_url5\" target=\"_blank\">";}
				elsif($t_url5 ne "" && $t_brs5 eq ""){$t1_url5 = "<a href=\"$t_url5\">";}
				else                                 {$t1_url5 = "<a href=\"$page_pass?category=$_[0]&page=5\">";}

			}

			#�i�r�Q�[�V������\���B
			if($t_pnm0 ne "" && $t_ps0 ne "on"){print"       <tr>$t_btn33<td>$t1_url0$t2_font1$t1_pnm0$t2_font2</a></td></tr>\n";}
			if($t_pnm1 ne "" && $t_ps1 ne "on"){print"       <tr>$t_btn33<td>$t1_url1$t2_font1$t1_pnm1$t2_font2</a></td></tr>\n";}
			if($t_pnm2 ne "" && $t_ps2 ne "on"){print"       <tr>$t_btn33<td>$t1_url2$t2_font1$t1_pnm2$t2_font2</a></td></tr>\n";}
			if($t_pnm3 ne "" && $t_ps3 ne "on"){print"       <tr>$t_btn33<td>$t1_url3$t2_font1$t1_pnm3$t2_font2</a></td></tr>\n";}
			if($t_pnm4 ne "" && $t_ps4 ne "on"){print"       <tr>$t_btn33<td>$t1_url4$t2_font1$t1_pnm4$t2_font2</a></td></tr>\n";}
			if($t_pnm5 ne "" && $t_ps5 ne "on"){print"       <tr>$t_btn33<td>$t1_url5$t2_font1$t1_pnm5$t2_font2</a></td></tr>\n";}

print<<"EOM";
      </table>
     </td>
    </tr>
EOM

		}

print<<"EOM";
   </table>
EOM

		#��؂���`���B
		if($btn12 ne ""){$t_btn12 = " size=\"$btn12\"";}
		if($btn11 ne ""){$t_btn11 = " width=\"$btn11\"";}
		if($btn13 ne ""){$t_btn13 = " color=\"$btn13\"";}
		if($btn10 ne ""){$t_btn10 = " height=\"$btn10\"";}

		#��؂��\���B
		if($btn9 eq "��؂��"){
			print"   <hr$t_btn12$t_btn11$t_btn13>\n";
		}elsif($btn9 eq "���s"){
			print"   <br>\n";
		}elsif($btn9 eq "���l" && $btn10 ne "0"){
			print"   <img src=\"$imgdir/spacer.gif\"$t_btn10><br>\n";
		}else{
			print"";
		}

	}
}

1;

