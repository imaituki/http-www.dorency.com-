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
# item2
# ���i�ē�2�̋L���\���B
##################################################
sub item2{

	#1�y�[�W�ɕ\������L���������B(���ݒ�̏ꍇ��500���w��)
	if($rls1 ne ""){
		$p_view = $rls1;
	}else{
		$p_view = "500";
	}

	#[font]���`���B
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		if($rls11 ne ""){$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";}
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		if($rls11 ne ""){$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";}
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		if($rls11 ne ""){$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";}
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#�����t�H�[���\���B
	if($rls33 ne ""){

		#�L�[���[�h�����t�H�[����\���B
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="search" value="on">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

			if($rls27 ne ""){

				@serch1 = split(/<br>/,$rls27);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls26</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch1){
					print"        <option value=\"$x\">$x</option>\n";
					$k++;
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls29 ne ""){

				@serch2 = split(/<br>/,$rls29);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls28</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch2){
					print"        <option value=\"$x\">$x</option>\n";
					$k++;
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls31 ne ""){

				@serch3 = split(/<br>/,$rls31);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls30</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch3){
					print"        <option value=\"$x\">$x</option>\n";
					$k++;
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

print<<"EOM";
        <td><input type="submit" value="����"></td>
       </tr>
      </table>
      </form>
EOM

		}else{

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="search" value="on">
        <input type="text" name="word" size="25" value="$in{'word'}">
        <select name="cond">
        <option value="and">AND</option>
        <option value="or">OR</option>
        </select>
        <input type="submit" value="����">
        </form>
        </td>
       </tr>
      </table>
EOM

		}
	}

	#[table]���`���B
	if($rls7 ne ""){$t_rls7 = " bgcolor=\"$rls7\"";}
	if($rls3 ne ""){$t_rls3 = " border=\"$rls3\"";}
	if($rls3 eq ""){$t_rls3 = " border=\"0\"";}
	if($rls6 ne ""){$t_rls6 = " bordercolor=\"$rls6\"";}
	if($rls4 ne ""){$t_rls4 = " cellspacing=\"$rls4\"";}
	if($rls4 eq ""){$t_rls4 = " cellspacing=\"0\"";}
	if($rls5 ne ""){$t_rls5 = " cellpadding=\"$rls5\"";}
	if($rls5 eq ""){$t_rls5 = " cellpadding=\"0\"";}
	if($rls2 ne ""){$t_rls2 = " width=\"$rls2\"";}

	#[td]���`���B
	if($rls24 ne ""){$t_rls24 = " bgcolor=\"$rls24\"";}
	if($rls23 ne ""){$t_rls23 = " bordercolor=\"$rls23\"";}
	if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}

	if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}
	if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}
	if($rls16 ne ""){$t_rls16 = " width=\"$rls16\"";}

	#[table][td]��\���B

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls12>$rls11</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
EOM

	#�L�����e��񐔂̏������B
	$i = 0;

	#�y�[�W���O�̏������B
	$j = 0;

	#�L�����e���̐����B
	foreach (@storycomment){

		local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
		local($t_dsn22,$t_dsn21,$t4_font1,$t4_font2,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);
		local($t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_dsn2,$t_cmt5,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11);
		local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29);

		#�L�����e���̕����B
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#�L���\���̈ꎞ��~�v�ہB
		if($cmt9 eq "on"){
			next;
		}

		$i++;

		if($view eq ""){

			#�y�[�W���O�łȂ��ꍇ�B
			if($i > $p_view){
				last;
			}
		}elsif($view ne ""){

			#�y�[�W���O�ł���ꍇ�B
			if($i < $view){
				next;
			}else{

				$j++;

				if($j > $p_view){
					last;
				}
			}
		}

		#[font]���`���B
		if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
		if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
		if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
		if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

		#���i�����`���B
		if($cmt1 ne "")               {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
		if($dsn5 ne "" && $dsn6 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
		if($dsn5 ne "" && $dsn6 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
		if($dsn5 eq "" && $dsn6 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
		if($dsn5 eq "" && $dsn6 eq ""){$sub  = "$t2_font1$title$t2_font2";}

		#[font]���`���B
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

		#�R�����g1���`���B
		if($dsn14 ne "" && $dsn15 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
		if($dsn14 ne "" && $dsn15 eq ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
		if($dsn14 eq "" && $dsn15 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
		if($dsn14 eq "" && $dsn15 eq ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}

		#[font]���`���B
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

		#�R�����g2���`���B
		if($dsn23 ne "" && $dsn24 ne ""){$cmt3 = "$t4_font1<strong><i>$cmt3</i></strong>$t4_font2";}
		if($dsn23 ne "" && $dsn24 eq ""){$cmt3 = "$t4_font1<strong>$cmt3</strong>$t4_font2";}
		if($dsn23 eq "" && $dsn24 ne ""){$cmt3 = "$t4_font1<i>$cmt3</i>$t4_font2";}
		if($dsn23 eq "" && $dsn24 eq ""){$cmt3 = "$t4_font1$cmt3$t4_font2";}

		#[font]���`���B
		if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
		if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

		#�R�����g3���`���B
		if($dsn32 ne "" && $dsn33 ne ""){$cmt4 = "$t5_font1<strong><i>$cmt4</i></strong>$t5_font2";}
		if($dsn32 ne "" && $dsn33 eq ""){$cmt4 = "$t5_font1<strong>$cmt4</strong>$t5_font2";}
		if($dsn32 eq "" && $dsn33 ne ""){$cmt4 = "$t5_font1<i>$cmt4</i>$t5_font2";}
		if($dsn32 eq "" && $dsn33 eq ""){$cmt4 = "$t5_font1$cmt4$t5_font2";}

		#���i�ڍ׃����N���`���B
		if($img1 ne "" || $img2 ne "" || $img3 ne "" || $msg ne ""){
			if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){
				$sub = "<a href=\"$ask7\/$cgi_host\/$site_folder\/siteup.cgi?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
			}else{
				$sub = "<a href=\"$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
			}
		}

		#[td]���`���B
		if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
		if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
		if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
		if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
		if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}
		if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}

		if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
		if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
		if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
		if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
		if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

		if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
		if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
		if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
		if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
		if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

		if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
		if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
		if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
		if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
		if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

		#���i����\���B

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
EOM

		if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>$cmt2</td>\n";}
		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>$cmt3</td>\n";}
		if($rls15 ne ""){print"        <td background=\"$page_imgdir/$dsn36\"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>$cmt4</td>\n";}

print<<"EOM";
       </tr>
EOM

	}

print<<"EOM";
      </table>
EOM

	#���ŏ���
	if($view eq ""){
		$view = 1;
	}
	$next_line = $view + $p_view;
	$back_line = $view - $p_view;

	if($back_line > 0 || $next_line <= $i){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

		#�O�ŏ���
		if($back_line > 0){

			if($rls17 ne ""){
				$backName = $rls17;
			}else{
				$backName = "�O��$p_view��";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="view" value="$back_line">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="submit" value="$backName">
        </form>
        </td>
EOM

		}

		#���ŏ���
		if($next_line <= $i){

			if($rls18 ne ""){
				$nextName = $rls18;
			}else{
				$nextName = "����$p_view��";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="view" value="$next_line">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="submit" value="$nextName">
        </form>
        </td>
EOM

		}

print<<"EOM";
       </tr>
      </table>
EOM

	}

}
##################################################
# item2_detail
# ���i�ē�2�̏ڍ׉�ʕ\���B
##################################################
sub item2_detail{

	#[font]���`���B
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		if($rls11 ne ""){$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";}
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		if($rls11 ne ""){$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";}
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		if($rls11 ne ""){$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";}
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#�L�����e���̐����B
	foreach (@storycomment){

		#�L�����e���̕����B
		($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#�L���\���̈ꎞ��~�v�ہB
		if($no eq "$in{'no'}"){
			last;
		}
	}

	#[img]���`���B
	if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
	if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

	#���i�摜1���`���B
	if($img1 ne ""){

		#�L���̕��A�����̐ݒ�B
		local($width,$height) = split(/�~/,$simg1);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#�摜�̐������ݒ�B
		if($cmt11 ne ""){
			$t_cmt11 = " alt=\"$cmt11\"";
		}

		if($img1 =~ /pdf$/i){

			#pdf�t�@�C���̏ꍇ�͓Y�t�t�@�C���Ƃ��Č`���B
			$img1 = "<a href=\"$page_imgdir/$img1\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"�Y�t����\"></a>";
		}else{

			if($pimg1 eq ""){				#�g��\���uoff�i�󗓁j�v���`���B

				$img1 = "<img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11>";
			}else{						#�g��\���uon�v���`���B

				if($br_width eq "40" && $br_height eq "50"){

					#�L���̕��A���������ݒ���`���B
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11 border=\"0\"></a>";
				}else{

					#�L���̕��A�������ݒ�ς݂��`���B
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11 border=\"0\"></a>";
				}
			}
		}
	}

	#[img]���`���B
	if($wimg2 ne ""){$t_wimg2 = " width=\"$wimg2\"";}
	if($himg2 ne ""){$t_himg2 = " height=\"$himg2\"";}

	#���i�摜2���`���B
	if($img2 ne ""){

		#�L���̕��A�����̐ݒ�B
		local($width,$height) = split(/�~/,$simg2);
		$br_width             = $width + 20;
		$br_height            = $height + 30;

		#�摜�̐������ݒ�B
		if($cmt12 ne ""){
			$t_cmt12 = " alt=\"$cmt12\"";
		}

		if($img2 =~ /pdf$/i){

			#pdf�t�@�C���̏ꍇ�͓Y�t�t�@�C���Ƃ��Č`���B
			$img2 = "<a href=\"$page_imgdir/$img2\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"�Y�t����\"></a>";
		}else{

			if($pimg2 eq ""){				#�g��\���uoff�i�󗓁j�v���`���B

				$img2 = "<img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt12>";
			}else{						#�g��\���uon�v���`���B

				if($br_width eq "40" && $br_height eq "50"){

					#�L���̕��A���������ݒ���`���B
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt12 border=\"0\"></a>";
				}else{

					#�L���̕��A�������ݒ�ς݂��`���B
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt12 border=\"0\"></a>";
				}
			}
		}
	}

	#[img]���`���B
	if($wimg3 ne ""){$t_wimg3 = " width=\"$wimg3\"";}
	if($himg3 ne ""){$t_himg3 = " height=\"$himg3\"";}

	#���i�摜3���`���B
	if($img3 ne ""){

		#�L���̕��A�����̐ݒ�B
		local($width,$height) = split(/�~/,$simg3);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#�摜�̐������ݒ�B
		if($cmt13 ne ""){
			$t_cmt13 = " alt=\"$cmt13\"";
		}

		if($img3 =~ /pdf$/i){

			#pdf�t�@�C���̏ꍇ�͓Y�t�t�@�C���Ƃ��Č`���B
			$img3 = "<a href=\"$page_imgdir/$img3\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"�Y�t����\"></a>";
		}else{

			if($pimg3 eq ""){				#�g��\���uoff�i�󗓁j�v���`���B

				$img3 = "<img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt13>";
			}else{						#�g��\���uon�v���`���B

				if($br_width eq "40" && $br_height eq "50"){

					#�L���̕��A���������ݒ���`���B
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt13 border=\"0\"></a>";
				}else{

					#�L���̕��A�������ݒ�ς݂��`���B
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt13 border=\"0\"></a>";
				}
			}
		}
	}

	#[font]���`���B
	if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
	if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

	#���i�����`���B
	if($cmt1 ne "")               {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn5 ne "" && $dsn6 ne ""){$sub = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn5 ne "" && $dsn6 eq ""){$sub = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn5 eq "" && $dsn6 ne ""){$sub = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn5 eq "" && $dsn6 eq ""){$sub = "$t2_font1$title$t2_font2";}

	#[font]���`���B
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

	#�R�����g1���`���B
	if($dsn14 ne "" && $dsn15 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
	if($dsn14 ne "" && $dsn15 eq ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
	if($dsn14 eq "" && $dsn15 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
	if($dsn14 eq "" && $dsn15 eq ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}

	#[font]���`���B
	if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
	if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
	if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
	if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

	#�R�����g2���`���B
	if($dsn23 ne "" && $dsn24 ne ""){$cmt3 = "$t4_font1<strong><i>$cmt3</i></strong>$t4_font2";}
	if($dsn23 ne "" && $dsn24 eq ""){$cmt3 = "$t4_font1<strong>$cmt3</strong>$t4_font2";}
	if($dsn23 eq "" && $dsn24 ne ""){$cmt3 = "$t4_font1<i>$cmt3</i>$t4_font2";}
	if($dsn23 eq "" && $dsn24 eq ""){$cmt3 = "$t4_font1$cmt3$t4_font2";}

	#[font]���`���B
	if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
	if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
	if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
	if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

	#�R�����g3���`���B
	if($dsn32 ne "" && $dsn33 ne ""){$cmt4 = "$t5_font1<strong><i>$cmt4</i></strong>$t5_font2";}
	if($dsn32 ne "" && $dsn33 eq ""){$cmt4 = "$t5_font1<strong>$cmt4</strong>$t5_font2";}
	if($dsn32 eq "" && $dsn33 ne ""){$cmt4 = "$t5_font1<i>$cmt4</i>$t5_font2";}
	if($dsn32 eq "" && $dsn33 eq ""){$cmt4 = "$t5_font1$cmt4$t5_font2";}

	if($cmt14 eq ""){
		#�⑫�������̎��������N�B
		&auto_link;
	}

	#[table]���`���B
	if($rls7 ne ""){$t_rls7 = " bgcolor=\"$rls7\"";}
	if($rls3 ne ""){$t_rls3 = " border=\"$rls3\"";}
	if($rls3 eq ""){$t_rls3 = " border=\"0\"";}
	if($rls6 ne ""){$t_rls6 = " bordercolor=\"$rls6\"";}
	if($rls4 ne ""){$t_rls4 = " cellspacing=\"$rls4\"";}
	if($rls4 eq ""){$t_rls4 = " cellspacing=\"0\"";}
	if($rls5 ne ""){$t_rls5 = " cellpadding=\"$rls5\"";}
	if($rls5 eq ""){$t_rls5 = " cellpadding=\"0\"";}
	if($rls2 ne ""){$t_rls2 = " width=\"$rls2\"";}

	#[td]���`���B
	if($rls24 ne ""){$t_rls24 = " bgcolor=\"$rls24\"";}
	if($rls23 ne ""){$t_rls23 = " bordercolor=\"$rls23\"";}
	if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}

	if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}
	if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}
	if($rls16 ne ""){$t_rls16 = " width=\"$rls16\"";}

	if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
	if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
	if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
	if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
	if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}
	if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}

	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
	if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
	if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
	if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
	if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

	if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
	if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
	if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
	if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
	if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

	#�R�����g��\���B

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls12>$rls11</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>$cmt2</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>$cmt3</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$dsn36\"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>$cmt4</td>\n";}

print<<"EOM";
       </tr>
      </table>
      <br>
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
EOM

	#�摜��\���B
	if($img1 ne "" || $img2 ne "" || $img3 ne ""){

print<<"EOM";
       <tr>
        <td$t_dsn7 align="center" valign="middle">
         <table border="0" cellpadding="1" cellspacing="1">
          <tr>
EOM

		if($img1 ne ""){print"           <td>$img1</td>\n";}
		if($img2 ne ""){print"           <td>$img2</td>\n";}
		if($img3 ne ""){print"           <td>$img3</td>\n";}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

	}

	#���i�����ڍׂ�\���B
	if($msg ne ""){

		if($cmt14 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1$msg$t2_font2</td>
       </tr>
EOM

	}

print<<"EOM";
      </table>
      <br>
EOM

	#�₢���킹�t�H�[����\���B
	if($rls32 eq "on"){

		if(@user_data[6] eq "�k�C��")         {$t01_select = " selected";}
		if(@user_data[6] eq "�X��")         {$t02_select = " selected";}
		if(@user_data[6] eq "��茧")         {$t03_select = " selected";}
		if(@user_data[6] eq "�{�錧")         {$t04_select = " selected";}
		if(@user_data[6] eq "�H�c��")         {$t05_select = " selected";}
		if(@user_data[6] eq "�R�`��")         {$t06_select = " selected";}
		if(@user_data[6] eq "������")         {$t07_select = " selected";}
		if(@user_data[6] eq "��錧")         {$t08_select = " selected";}
		if(@user_data[6] eq "�Ȗ،�")         {$t09_select = " selected";}
		if(@user_data[6] eq "�Q�n��")         {$t10_select = " selected";}
		if(@user_data[6] eq "��ʌ�")         {$t11_select = " selected";}
		if(@user_data[6] eq "��t��")         {$t12_select = " selected";}
		if(@user_data[6] eq "�����s")         {$t13_select = " selected";}
		if(@user_data[6] eq "�_�ސ쌧")       {$t14_select = " selected";}
		if(@user_data[6] eq "�R����")         {$t15_select = " selected";}
		if(@user_data[6] eq "�É���")         {$t16_select = " selected";}
		if(@user_data[6] eq "���쌧")         {$t17_select = " selected";}
		if(@user_data[6] eq "�V����")         {$t18_select = " selected";}
		if(@user_data[6] eq "�x�R��")         {$t19_select = " selected";}
		if(@user_data[6] eq "�ΐ쌧")         {$t20_select = " selected";}
		if(@user_data[6] eq "���䌧")         {$t21_select = " selected";}
		if(@user_data[6] eq "�򕌌�")         {$t22_select = " selected";}
		if(@user_data[6] eq "���m��")         {$t23_select = " selected";}
		if(@user_data[6] eq "�O�d��")         {$t24_select = " selected";}
		if(@user_data[6] eq "���ꌧ")         {$t25_select = " selected";}
		if(@user_data[6] eq "���s�{")         {$t26_select = " selected";}
		if(@user_data[6] eq "���{")         {$t27_select = " selected";}
		if(@user_data[6] eq "���Ɍ�")         {$t28_select = " selected";}
		if(@user_data[6] eq "�ޗǌ�")         {$t29_select = " selected";}
		if(@user_data[6] eq "�a�̎R��")       {$t30_select = " selected";}
		if(@user_data[6] eq "���挧")         {$t31_select = " selected";}
		if(@user_data[6] eq "������")         {$t32_select = " selected";}
		if(@user_data[6] eq "���R��")         {$t33_select = " selected";}
		if(@user_data[6] eq "�L����")         {$t34_select = " selected";}
		if(@user_data[6] eq "�R����")         {$t35_select = " selected";}
		if(@user_data[6] eq "������")         {$t36_select = " selected";}
		if(@user_data[6] eq "���쌧")         {$t37_select = " selected";}
		if(@user_data[6] eq "���Q��")         {$t38_select = " selected";}
		if(@user_data[6] eq "���m��")         {$t39_select = " selected";}
		if(@user_data[6] eq "������")         {$t40_select = " selected";}
		if(@user_data[6] eq "���ꌧ")         {$t41_select = " selected";}
		if(@user_data[6] eq "���茧")         {$t42_select = " selected";}
		if(@user_data[6] eq "�F�{��")         {$t43_select = " selected";}
		if(@user_data[6] eq "�啪��")         {$t44_select = " selected";}
		if(@user_data[6] eq "�{�茧")         {$t45_select = " selected";}
		if(@user_data[6] eq "��������")       {$t46_select = " selected";}
		if(@user_data[6] eq "���ꌧ")         {$t47_select = " selected";}
		if(@user_data[17] eq "")              {$t48_select = " selected";}
		if(@user_data[17] eq "M")             {$t49_select = " selected";}
		if(@user_data[17] eq "F")             {$t50_select = " selected";}
		if(@user_data[21] eq "���[���ɂĕԓ�"){$t51_select = " selected";}
		if(@user_data[21] eq "�d�b�ɂĕԓ�")  {$t52_select = " selected";}
		if(@user_data[21] eq "")              {$t53_select = " selected";}
		@user_data[22] =~ s/&lt;br&gt;/\n/g;
		@user_data[23] =~ s/&lt;br&gt;/\n/g;

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls2 cellpadding="2">
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1$title�Ɋւ��Ĉȉ��̃t�H�[�����₢���킹���������B$t1_font2</td>
       </tr>
      </table>
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="ask" value="check">
      <input type="hidden" name="title" value="$title">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="no" value="$no">
      <input type="hidden" name="kind" value="$kind">
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�����O(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[0]"> ��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[1]"><br>(��)�R�c ���Y$t2_font2</td>
       </tr>
EOM

	##################################################
	if($ain1 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�t���K�i(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> ��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(��)���}�_ �^���E$t2_font2</td>
       </tr>
EOM

	}elsif($ain1 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�t���K�i$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> ��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(��)���}�_ �^���E$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[2]">
          <input type="hidden" name="user_data" value="@user_data[3]">
EOM

	}
	##################################################
	if($ain2 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�X�֔ԍ�(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t2_font2</td>
       </tr>
EOM

	}elsif($ain2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�X�֔ԍ�$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[4]">
          <input type="hidden" name="user_data" value="@user_data[5]">
EOM

	}
	##################################################
	if($ain3 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�s���{��(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option></option>
        <option value="�k�C��"$t01_select>�k�C��</option>
        <option value="�X��"$t02_select>�X��</option>
        <option value="��茧"$t03_select>��茧</option>
        <option value="�{�錧"$t04_select>�{�錧</option>
        <option value="�H�c��"$t05_select>�H�c��</option>
        <option value="�R�`��"$t06_select>�R�`��</option>
        <option value="������"$t07_select>������</option>
        <option value="��錧"$t08_select>��錧</option>
        <option value="�Ȗ،�"$t09_select>�Ȗ،�</option>
        <option value="�Q�n��"$t10_select>�Q�n��</option>
        <option value="��ʌ�"$t11_select>��ʌ�</option>
        <option value="��t��"$t12_select>��t��</option>
        <option value="�����s"$t13_select>�����s</option>
        <option value="�_�ސ쌧"$t14_select>�_�ސ쌧</option>
        <option value="�R����"$t15_select>�R����</option>
        <option value="�É���"$t16_select>�É���</option>
        <option value="���쌧"$t17_select>���쌧</option>
        <option value="�V����"$t18_select>�V����</option>
        <option value="�x�R��"$t19_select>�x�R��</option>
        <option value="�ΐ쌧"$t20_select>�ΐ쌧</option>
        <option value="���䌧"$t21_select>���䌧</option>
        <option value="�򕌌�"$t22_select>�򕌌�</option>
        <option value="���m��"$t23_select>���m��</option>
        <option value="�O�d��"$t24_select>�O�d��</option>
        <option value="���ꌧ"$t25_select>���ꌧ</option>
        <option value="���s�{"$t26_select>���s�{</option>
        <option value="���{"$t27_select>���{</option>
        <option value="���Ɍ�"$t28_select>���Ɍ�</option>
        <option value="�ޗǌ�"$t29_select>�ޗǌ�</option>
        <option value="�a�̎R��"$t30_select>�a�̎R��</option>
        <option value="���挧"$t31_select>���挧</option>
        <option value="������"$t32_select>������</option>
        <option value="���R��"$t33_select>���R��</option>
        <option value="�L����"$t34_select>�L����</option>
        <option value="�R����"$t35_select>�R����</option>
        <option value="������"$t36_select>������</option>
        <option value="���쌧"$t37_select>���쌧</option>
        <option value="���Q��"$t38_select>���Q��</option>
        <option value="���m��"$t39_select>���m��</option>
        <option value="������"$t40_select>������</option>
        <option value="���ꌧ"$t41_select>���ꌧ</option>
        <option value="���茧"$t42_select>���茧</option>
        <option value="�F�{��"$t43_select>�F�{��</option>
        <option value="�啪��"$t44_select>�啪��</option>
        <option value="�{�茧"$t45_select>�{�茧</option>
        <option value="��������"$t46_select>��������</option>
        <option value="���ꌧ"$t47_select>���ꌧ</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�S�s�撬��(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1����ȍ~�̏Z��(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
        (��j�a�J1-1-1<br>
        (��j�a�J1-1-1 **�r��29F �������**** **��<br>
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain3 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�s���{��$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option></option>
        <option value="�k�C��"$t01_select>�k�C��</option>
        <option value="�X��"$t02_select>�X��</option>
        <option value="��茧"$t03_select>��茧</option>
        <option value="�{�錧"$t04_select>�{�錧</option>
        <option value="�H�c��"$t05_select>�H�c��</option>
        <option value="�R�`��"$t06_select>�R�`��</option>
        <option value="������"$t07_select>������</option>
        <option value="��錧"$t08_select>��錧</option>
        <option value="�Ȗ،�"$t09_select>�Ȗ،�</option>
        <option value="�Q�n��"$t10_select>�Q�n��</option>
        <option value="��ʌ�"$t11_select>��ʌ�</option>
        <option value="��t��"$t12_select>��t��</option>
        <option value="�����s"$t13_select>�����s</option>
        <option value="�_�ސ쌧"$t14_select>�_�ސ쌧</option>
        <option value="�R����"$t15_select>�R����</option>
        <option value="�É���"$t16_select>�É���</option>
        <option value="���쌧"$t17_select>���쌧</option>
        <option value="�V����"$t18_select>�V����</option>
        <option value="�x�R��"$t19_select>�x�R��</option>
        <option value="�ΐ쌧"$t20_select>�ΐ쌧</option>
        <option value="���䌧"$t21_select>���䌧</option>
        <option value="�򕌌�"$t22_select>�򕌌�</option>
        <option value="���m��"$t23_select>���m��</option>
        <option value="�O�d��"$t24_select>�O�d��</option>
        <option value="���ꌧ"$t25_select>���ꌧ</option>
        <option value="���s�{"$t26_select>���s�{</option>
        <option value="���{"$t27_select>���{</option>
        <option value="���Ɍ�"$t28_select>���Ɍ�</option>
        <option value="�ޗǌ�"$t29_select>�ޗǌ�</option>
        <option value="�a�̎R��"$t30_select>�a�̎R��</option>
        <option value="���挧"$t31_select>���挧</option>
        <option value="������"$t32_select>������</option>
        <option value="���R��"$t33_select>���R��</option>
        <option value="�L����"$t34_select>�L����</option>
        <option value="�R����"$t35_select>�R����</option>
        <option value="������"$t36_select>������</option>
        <option value="���쌧"$t37_select>���쌧</option>
        <option value="���Q��"$t38_select>���Q��</option>
        <option value="���m��"$t39_select>���m��</option>
        <option value="������"$t40_select>������</option>
        <option value="���ꌧ"$t41_select>���ꌧ</option>
        <option value="���茧"$t42_select>���茧</option>
        <option value="�F�{��"$t43_select>�F�{��</option>
        <option value="�啪��"$t44_select>�啪��</option>
        <option value="�{�茧"$t45_select>�{�茧</option>
        <option value="��������"$t46_select>��������</option>
        <option value="���ꌧ"$t47_select>���ꌧ</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�S�s�撬��$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t2_font2</td>
       </tr>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1����ȍ~�̏Z��$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
        (��j�a�J1-1-1<br>
        (��j�a�J1-1-1 **�r��29F �������**** **��<br>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[6]">
          <input type="hidden" name="user_data" value="@user_data[7]">
          <input type="hidden" name="user_data" value="@user_data[8]">
EOM

	}
	##################################################
	if($ain4 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�d�b�ԍ�(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t2_font2</td>
       </tr>
EOM

	}elsif($ain4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�d�b�ԍ�$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[9]">
          <input type="hidden" name="user_data" value="@user_data[10]">
          <input type="hidden" name="user_data" value="@user_data[11]">
EOM

	}
	##################################################
	if($ain5 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�e�`�w�ԍ�(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t2_font2</td>
       </tr>
EOM

	}elsif($ain5 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1�e�`�w�ԍ�$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[12]">
          <input type="hidden" name="user_data" value="@user_data[13]">
          <input type="hidden" name="user_data" value="@user_data[14]">
EOM

	}
	##################################################
	if($ain6 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1���[���A�h���X(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
        <br>
        ���m�F�̂��߂ɂ�����x���[���A�h���X����͂��Ă��������B<br>
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain6 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1���[���A�h���X$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
        <br>
        ���m�F�̂��߂ɂ�����x���[���A�h���X����͂��Ă��������B<br>
        <input type="text" size="40" name="user_data" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[15]">
          <input type="hidden" name="user_data" value="@user_data[16]">
EOM

	}
	##################################################
	if($ain7 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1����(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t48_select></option>
        <option value="M"$t49_select>�j</option>
        <option value="F"$t50_select>��</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain7 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1����$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t48_select></option>
        <option value="M"$t49_select>�j</option>
        <option value="F"$t50_select>��</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[17]">
EOM

	}
	##################################################
	if($ain8 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1���N����(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1����<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">�N <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">�� <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">��$t2_font2</td>
       </tr>
EOM

	}elsif($ain8 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1���N����$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1����<input type="text" size="4" name="user_data" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">�N <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">�� <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">��$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[18]">
          <input type="hidden" name="user_data" value="@user_data[19]">
          <input type="hidden" name="user_data" value="@user_data[20]">
EOM

	}

	##################################################
	if($ain9 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1����]�̕ԓ����@(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t53_select></option>
        <option value="���[���ɂĕԓ�"$t51_select>���[��</option>
        <option value="�d�b�ɂĕԓ�"$t52_select>�d�b�A��</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}elsif($ain9 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1����]�̕ԓ����@ $t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1
        <select name="user_data">
        <option value=""$t53_select></option>
        <option value="���[���ɂĕԓ�"$t51_select>���[��</option>
        <option value="�d�b�ɂĕԓ�"$t52_select>�d�b�A��</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[21]">
EOM

	}

	##################################################
	if($ain10 eq "1"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1���₢���킹���e(�K�{)$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t2_font2</td>
       </tr>
EOM

	}elsif($ain10 eq "2"){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 nowrap>$t1_font1���₢���킹���e$t1_font2</td>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[22]">
EOM

	}
	##################################################
	if($ain11 eq "1"){

		if($ain14 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
          </tr>
EOM

		}

	}elsif($ain11 eq "2"){

		if($ain14 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls25"$t_rls24$t_rls23>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
          </tr>
EOM

		}

	}else{

print<<"EOM";
          <input type="hidden" name="user_data" value="@user_data[23]">
EOM

	}
	##################################################

print<<"EOM";
      </table>
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="submit" value="�ꗗ�ɖ߂�" style="width:150px"></td>
        <td><input type="submit" name="submit" value="���͓��e�̊m�F" style="width:150px"></td>
       </tr>
      </table>
      </div>
      </form>
EOM

	}else{

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="submit" value="�ꗗ�ɖ߂�">
        </form>
        </td>
       </tr>
      </table>
      </div>
EOM

	}

	if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){

		if($ask8 ne ""){

			$ask8 =~ s/<br>/\n/g;
			$ask8 =~ s/&#44;/\,/g;
			$ask8 =~ s/&lt;/</g;
			$ask8 =~ s/&gt;/>/g;
			$ask8 =~ s/&quot;/"/g;

print<<"EOM";
     <br>
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td>
$ask8
       </td>
      </tr>
     </table>
     <br>
EOM
		}

print<<"EOM";
     <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
      <tr bgcolor="#FFFFFF">
       <td>
       <span style="color:#000000;font-size:10pt;font-weight:bold;">
�E���T�C�g�́A���q�l�ɓ��͂��Ē������l���́A<br>
&nbsp;&nbsp;�f�W�^��ID��p����SSL�Í����ʐM�ɂ���āA�C���^�[�l�b�g��ł�<br>
&nbsp;&nbsp;���S�ȒʐM��i���m�ۂ��Ă���܂��̂ŁA���S���Ă����p���������B<br>
       </span>
       </td>
      </tr>
     </table>
     <br>
EOM

	}

}
##################################################
# item2_search
# ���������B
##################################################
sub item2_search{

	#[font]���`���B
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		if($rls11 ne ""){$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";}
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		if($rls11 ne ""){$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";}
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		if($rls11 ne ""){$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";}
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#�������[�h���̓G���[�B
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#�G���[��ʂ�\���B
	if($error ne ""){
		&item2_search_error;
	}else{

		#�L�[���[�h�����t�H�[����\���B
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

			#���͓��e�𐮗�
			$cond  = $in{'cond'};
			$word1 = $in{'word1'};
			$word2 = $in{'word2'};
			$word3 = $in{'word3'};
			$word1 =~ s/,/&#44;/g;
			$word2 =~ s/,/&#44;/g;
			$word3 =~ s/,/&#44;/g;

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="mode" value="page">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="search" value="on">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

			if($rls27 ne ""){

				@serch1 = split(/<br>/,$rls27);

				if($word1 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word1">
        <option value="" $select1>$rls26</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch1){

					if($word1 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

					$k++;

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls29 ne ""){

				@serch2 = split(/<br>/,$rls29);

				if($word2 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word2">
        <option value="" $select1>$rls28</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch2){

					if($word2 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

					$k++;

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls31 ne ""){

				@serch3 = split(/<br>/,$rls31);

				if($word3 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word3">
        <option value="" $select1>$rls30</option>
        <option></option>
EOM

				$k = 0;

				foreach $x(@serch3){

					if($word3 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

					$k++;

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

print<<"EOM";
        <td><input type="submit" value="�Č���"></td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td colspan="4"><font size="-1"><strong>�| �������� �|</strong></font></td>
       </tr>
      </table>
      </form>
EOM

		#�����t�H�[����\���B
		}else{

			#���͓��e�𐮗�
			$cond  = $in{'cond'};
			$word  = $in{'word'};
			$word  =~ s/�@/ /g;
			$word  =~ s/\t/ /g;
			@pairs = split(/ /,$word);

			if($in{'cond'} eq "and"){
				$cond_select1 = "selected";
			}elsif($in{'cond'} eq "or"){
				$cond_select2 = "selected";
			}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="search" value="on">
        <input type="text" name="word" size="25" value="$in{'word'}">
        <select name="cond">
        <option value="and"$cond_select1>AND</option>
        <option value="or"$cond_select2>OR</option>
        </select>
        <input type="submit" value="�Č���">
        </form>
        </td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1"><strong>�| �������� �|</strong></font></td>
       </tr>
      </table>
EOM

		}

		#[table]���`���B
		if($rls7 ne ""){$t_rls7 = " bgcolor=\"$rls7\"";}
		if($rls3 ne ""){$t_rls3 = " border=\"$rls3\"";}
		if($rls3 eq ""){$t_rls3 = " border=\"0\"";}
		if($rls6 ne ""){$t_rls6 = " bordercolor=\"$rls6\"";}
		if($rls4 ne ""){$t_rls4 = " cellspacing=\"$rls4\"";}
		if($rls4 eq ""){$t_rls4 = " cellspacing=\"0\"";}
		if($rls5 ne ""){$t_rls5 = " cellpadding=\"$rls5\"";}
		if($rls5 eq ""){$t_rls5 = " cellpadding=\"0\"";}
		if($rls2 ne ""){$t_rls2 = " width=\"$rls2\"";}

		#[td]���`���B
		if($rls24 ne ""){$t_rls24 = " bgcolor=\"$rls24\"";}
		if($rls23 ne ""){$t_rls23 = " bordercolor=\"$rls23\"";}
		if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}

		if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}
		if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}
		if($rls16 ne ""){$t_rls16 = " width=\"$rls16\"";}

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
EOM

		if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls12>$rls11</td>\n";}
		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
		if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
EOM

		#���������������B
		$i = 0;

		#�L�����e���̐����B
		foreach $line(@storycomment) {

			local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
			local($t_dsn22,$t_dsn21,$t4_font1,$t4_font2,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);
			local($t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_dsn2,$t_cmt5,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11);
			local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29);

			#�L�����e���̕����B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line);

			#�L���\���̈ꎞ��~�v�ہB
			if($cmt9 eq "on"){
				next;
			}

			if($word eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt6 eq "$word1")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt6 eq "$word1" && $cmt7 eq "$word2")                     {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt6 eq "$word1" && $cmt7 eq "$word2" && $cmt8 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt7 eq "$word2")                                          {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt7 eq "$word2" && $cmt8 eq "$word3")                     {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt8 eq "$word3")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt6 eq "$word1" && $cmt8 eq "$word3")                     {$flag = 1;}}

			}else{

				$flag = 0;

				$t_cmt2 = $cmt2;
				$t_cmt3 = $cmt3;
				$t_cmt4 = $cmt4;

				$t_cmt2 =~ s/<br>/,/g;
				$t_cmt3 =~ s/<br>/,/g;
				$t_cmt4 =~ s/<br>/,/g;

				$line_tmp = "$title,$msg,$t_cmt2,$t_cmt3,$t_cmt4";

				foreach $pair(@pairs) {

					$pair =~ s/,/&#44;/g;

					if(index($line_tmp,$pair) >= 0){

						$flag = 1;
						if($cond eq "or"){
							last;
						}
					}else{

						if($cond eq "and"){
							$flag = 0;
							last;
						}
					}
				}
			}

			if($flag == 1){

				$i++;

				#�������ʕ\���B

				#[font]���`���B
				if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
				if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
				if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
				if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

				#���i�����`���B
				if($cmt1 ne "")               {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
				if($dsn5 ne "" && $dsn6 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
				if($dsn5 ne "" && $dsn6 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
				if($dsn5 eq "" && $dsn6 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
				if($dsn5 eq "" && $dsn6 eq ""){$sub  = "$t2_font1$title$t2_font2";}

				#[font]���`���B
				if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
				if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
				if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

				#�R�����g1���`���B
				if($dsn14 ne "" && $dsn15 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
				if($dsn14 ne "" && $dsn15 eq ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
				if($dsn14 eq "" && $dsn15 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
				if($dsn14 eq "" && $dsn15 eq ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}

				#[font]���`���B
				if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
				if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
				if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
				if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

				#�R�����g2���`���B
				if($dsn23 ne "" && $dsn24 ne ""){$cmt3 = "$t4_font1<strong><i>$cmt3</i></strong>$t4_font2";}
				if($dsn23 ne "" && $dsn24 eq ""){$cmt3 = "$t4_font1<strong>$cmt3</strong>$t4_font2";}
				if($dsn23 eq "" && $dsn24 ne ""){$cmt3 = "$t4_font1<i>$cmt3</i>$t4_font2";}
				if($dsn23 eq "" && $dsn24 eq ""){$cmt3 = "$t4_font1$cmt3$t4_font2";}

				#[font]���`���B
				if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
				if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
				if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
				if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

				#�R�����g3���`���B
				if($dsn32 ne "" && $dsn33 ne ""){$cmt4 = "$t5_font1<strong><i>$cmt4</i></strong>$t5_font2";}
				if($dsn32 ne "" && $dsn33 eq ""){$cmt4 = "$t5_font1<strong>$cmt4</strong>$t5_font2";}
				if($dsn32 eq "" && $dsn33 ne ""){$cmt4 = "$t5_font1<i>$cmt4</i>$t5_font2";}
				if($dsn32 eq "" && $dsn33 eq ""){$cmt4 = "$t5_font1$cmt4$t5_font2";}

				#���i�ڍ׃����N���`���B
				if($img1 ne "" || $img2 ne "" || $img3 ne "" || $msg ne ""){
					if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){
						$sub = "<a href=\"$ask7\/$cgi_host\/$site_folder\/siteup.cgi?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
					}else{
						$sub = "<a href=\"$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$sub</a>";
					}
				}

				#[td]���`���B
				if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
				if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
				if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
				if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
				if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}
				if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}

				if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
				if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
				if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
				if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
				if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

				if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
				if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
				if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
				if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
				if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

				if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
				if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
				if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
				if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
				if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
EOM

				if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>$cmt2</td>\n";}
				if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>$cmt3</td>\n";}
				if($rls15 ne ""){print"        <td background=\"$page_imgdir/$dsn36\"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>$cmt4</td>\n";}

print<<"EOM";
       </tr>
EOM

			}
		}

print<<"EOM";
      </table>
EOM

		if($i > 0){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1"><strong>�ȏ�$i�����Y�����܂����B</strong></font></td>
       </tr>
      </table>
EOM

		}else{

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1"><strong>�Y��������̂͌�����܂���ł����B</strong></font></td>
       </tr>
      </table>
EOM

		}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="submit" value="�ꗗ�ɖ߂�">
        </form>
        </td>
       </tr>
      </table>
EOM

	}
}
##################################################
# item2_search_error
# �G���[�����B
##################################################
sub item2_search_error{

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center">-----------------<strong>�G���[���b�Z�[�W</strong>-----------------</td>
       </tr>
       <tr>
        <td align="center">
        <font color="#FF0000" size="-1"><strong>�����L�[���[�h��ݒ肵�Ă��������B</strong></font>
        </td>
       </tr>
       <tr>
        <td align="center">
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="submit" value="������ʂɖ߂�">
        </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}

1;
