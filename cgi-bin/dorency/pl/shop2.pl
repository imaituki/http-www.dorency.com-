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
# shop2
# �V���b�v2�̋L���\���B
##################################################
sub shop2{

	#�p�����[�^�����擾�B
	&shop_hidden_set;

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
		$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		$rls11 = "$t1_font1$rls11$t1_font2";
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
      <input type="hidden" name="cart" value="search">
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

		#�����t�H�[����\���B
		}else{

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <input type="text" name="word" size="25">
        <select name="cond">
        <option value="and">AND</option>
        <option value="or">OR</option>
        </select>
        <input type="submit" value="����">
        </td>
       </tr>
      </table>
      </form>
EOM

		}
	}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="cart" value="view">
$hidden
        <input type="submit" name="submit" value="�I����e�̕\\��">
EOM

	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="���菤����̕\\��" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);">
EOM
	}

print<<"EOM";
        </form>
        </td>
       </tr>
      </table>
EOM

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

	#�\�����ڂ�\���B

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls12>$rls11</td>
EOM

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

		local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_cmt5);
		local($t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
		local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
		local($t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);

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

		#���i�\���B
		&shop2_parts;

	}

print<<"EOM";
      </table>
EOM

	#���ŏ����B
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

		#�O�ŏ����B
		if($back_line > 0){

			if($rls17 ne ""){
				$backName = $rls17;
			}else{
				$backName = "�O��$p_view��";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$back_line">
        <input type="submit" value="$backName">
        </form>
        </td>
EOM

		}

		#���ŏ����B
		if($next_line <= $i){

			if($rls18 ne ""){
				$nextName = $rls18;
			}else{
				$nextName = "����$p_view��";
			}

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$next_line">
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
# shop2_detail
# �V���b�v2�̏ڍ׉�ʕ\���B
##################################################
sub shop2_detail{


	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="���菤����̕\\��" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);"><br><br>
EOM
	}


	#�p�����[�^�����擾�B
	&shop_hidden_set;

	#[font]���`���B
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		$rls11 = "$t1_font1$rls11$t1_font2";
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
		$br_width             = $width + 40;
		$br_height            = $height + 50;

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
				$img3 = "<img src=\"$page_imgdir/$img3\" $t_wimg3$t_himg3$t_cmt13>";
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
	if($dsn5 ne "" && $dsn6 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn5 ne "" && $dsn6 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn5 eq "" && $dsn6 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn5 eq "" && $dsn6 eq ""){$sub  = "$t2_font1$title$t2_font2";}

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

	#[font]���`���B
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

	#�Ō��[CR/LF]�����B
	chomp($id);

	#���ݓ��t�擾�B
	$times = time;

	$id = sprintf("%010d",$no);

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0" name="item_1">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="select">
      <input type="hidden" name="code" value="$times">
      <input type="hidden" name="id" value="$id">
      <input type="hidden" name="unit" value="1">
      <input type="hidden" name="pageType" value="shop2">
$hidden
EOM

	#���i�ڍ׏��1��\���B
	if($rls13 eq ""){
		print"      <input type=\"hidden\" name=\"other1\" value=\"0\">\n";
	}

	#���i�ڍ׏��2��\���B
	if($rls15 eq ""){
		print"      <input type=\"hidden\" name=\"other2\" value=\"0\">\n";
	}

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls10>$rls9</td>
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls12>$rls11</td>
EOM

	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
	if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>
EOM

	#���z�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
	$cmt2 =~ s/�F/:/g;
	$cmt2 =~ s/\&\#44\;//g;
	$cmt2 =~ s/�A//g;
	$cmt2 =~ s/�C//g;

	#���z�̕����B
	my @PRICE_TEMP = split(/<br>/,$cmt2);
	my @PRICE      = ();

	#��v�f�̍폜�B
	foreach my $PRICE_TEMP(@PRICE_TEMP){

		if($PRICE_TEMP ne ""){
			push(@PRICE,$PRICE_TEMP);
		}

	}

	#���z�̕\���B
	if($#PRICE > 0){
		print"        <select name=\"unit_price\" onChange=\"selectData('item\_1','shop2')\">\n";
	}

	#���i���i��ID���������B
	$o0 = 1;

	foreach $x(@PRICE){

		local($unit_price,$type) = split(/:/,$x);
		$unit_price              =~ s/�O/0/g;
		$unit_price              =~ s/�P/1/g;
		$unit_price              =~ s/�Q/2/g;
		$unit_price              =~ s/�R/3/g;
		$unit_price              =~ s/�S/4/g;
		$unit_price              =~ s/�T/5/g;
		$unit_price              =~ s/�U/6/g;
		$unit_price              =~ s/�V/7/g;
		$unit_price              =~ s/�W/8/g;
		$unit_price              =~ s/�X/9/g;
		$unit_price2             = $unit_price;
		$unit_price2             =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		if($#PRICE > 0){
			if($unit_price2 ne "" || $type ne "" ){
				print"        <option value=\"$o0\">$unit_price2�~ $type</option>\n";
			}
		}else{

			print"        <input type=\"hidden\" name=\"unit_price\" value=\"$o0\">";
			print"        <input type=\"hidden\" name=\"unit_price_data\" value=\"$unit_price2�~ $type\">";
			if($dsn14 ne "" && $dsn15 ne ""){print"        $t3_font1<strong><i>$unit_price2�~ $type</i></strong>$t3_font2";}
			if($dsn14 ne "" && $dsn15 eq ""){print"        $t3_font1<strong>$unit_price2�~ $type</strong>$t3_font2";}
			if($dsn14 eq "" && $dsn15 ne ""){print"        $t3_font1<i>$unit_price2�~ $type</i>$t3_font2";}
			if($dsn14 eq "" && $dsn15 eq ""){print"        $t3_font1$unit_price2�~ $type$t3_font2";}

		}

		#���i���i��ID���J�E���g�A�b�v�B
		$o0++;

	}

	if($#PRICE > 0){
		print"        </select>\n";
	}

print<<"EOM";
        </td>
EOM

	#���i�ڍ׏���\���B
	if($rls13 ne ""){

		#[td]���`���B
		if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
		if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
		if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
		if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
		if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

		#[font]���`���B
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn27"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>
EOM

		#���i�ڍ׏��̕����B
		@OTHER1 = split(/<br>/,$cmt3);

		if($#OTHER1 == -1){
			print"              <input type=\"hidden\" name=\"other1\" value=\"0\">\n";
		}else{

			#���i�ڍ׏���\���B
			if($#OTHER1 > 0){
				print"        <select name=\"other1\" onChange=\"selectData('item\_1','shop2')\">\n";
			}

			#����1��ID���������B
			$o1 = 1;

			foreach $x(@OTHER1){
				if($x ne ""){
					if($#OTHER1 > 0){
						print"        <option value=\"$o1\">$x</option>\n";
					}else{
						print"        <input type=\"hidden\" name=\"other1\" value=\"$o1\">";
						print"        <input type=\"hidden\" name=\"other1_data\" value=\"$x\">";
						if($dsn23 ne "" && $dsn24 ne ""){print"        $t4_font1<strong><i>$x</i></strong>$t4_font2";}
						if($dsn23 ne "" && $dsn24 eq ""){print"        $t4_font1<strong>$x</strong>$t4_font2";}
						if($dsn23 eq "" && $dsn24 ne ""){print"        $t4_font1<i>$x</i>$t4_font2";}
						if($dsn23 eq "" && $dsn24 eq ""){print"        $t4_font1$x$t4_font2";}
					}
				}

				#����1��ID���J�E���g�A�b�v�B
				$o1++;

			}

			if($#OTHER1 > 0){
				print"        </select>\n";
			}

		}

print<<"EOM";
        </td>
EOM

	}

	#���i�ڍ׏���\���B
	if($rls15 ne ""){

		#[td]���`���B
		if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
		if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
		if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
		if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
		if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

		#[font]���`���B
		if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
		if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn36"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>
EOM

		#���i�ڍ׏��̕����B
		@OTHER2 = split(/<br>/,$cmt4);

		if($#OTHER2 == -1){
			print"              <input type=\"hidden\" name=\"other2\" value=\"0\">\n";
		}else{

			#���i�ڍ׏���\���B
			if($#OTHER2 > 0){
				print"        <select name=\"other2\" onChange=\"selectData('item\_1','shop2')\">\n";
			}

			#����2��ID���������B
			$o2 = 1;

			foreach $x(@OTHER2){
				if($x ne ""){
					if($#OTHER2 > 0){
						print"        <option value=\"$o2\">$x</option>\n";
					}else{
						print"        <input type=\"hidden\" name=\"other2\" value=\"$o2\">";
						print"        <input type=\"hidden\" name=\"other2_data\" value=\"$x\">";
						if($dsn32 ne "" && $dsn33 ne ""){print"        $t5_font1<strong><i>$x</i></strong>$t5_font2";}
						if($dsn32 ne "" && $dsn33 eq ""){print"        $t5_font1<strong>$x</strong>$t5_font2";}
						if($dsn32 eq "" && $dsn33 ne ""){print"        $t5_font1<i>$x</i>$t5_font2";}
						if($dsn32 eq "" && $dsn33 eq ""){print"        $t5_font1$x$t5_font2";}
					}
				}

				#����2��ID���J�E���g�A�b�v�B
				$o2++;

			}

			if($#OTHER2 > 0){
				print"        </select>\n";
			}

		}

print<<"EOM";
        </td>
EOM

	}

print<<"EOM";
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
EOM

	if($cds18 eq ""){$cds18 = "�I������";}
	if($cds19 eq ""){$cds19 = "�݌ɐ؂�";}

	#�݌ɏ󋵂�\���B
	if($cmt10 eq "on"){

print<<"EOM";
       <tr>
        <td>
         <input type="submit" name="submit" value="���i�ꗗ�ɖ߂�" style="width:150px">
        </td>
        <td>
         <input type=\"hidden\" name=\"submit_data\" value=\"$cds18\"><input type=\"hidden\" name=\"zaiko_data\" value=\"$cds19\"><input type="button" value="$cds19" style="width:150px" disabled>
        </td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td>
         <input type="submit" name="submit" value="���i�ꗗ�ɖ߂�" style="width:150px">
        </td>
        <td>
         <input type=\"hidden\" name=\"submit_data\" value=\"$cds18\"><input type=\"hidden\" name=\"zaiko_data\" value=\"$cds19\"><input type="submit" name="submit" id="data_submit" value="$cds18" style="width:150px" disabled>
        </td>
       </tr>
EOM

	}

print<<"EOM";
      </table>
EOM

	#�T�C�g�T�[�o�[�ݒ���̓ǂݍ��݁B
	if(-e "./itemStock.dat"){

		open(IN,"./itemStock.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		my @itemStock = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		if($#itemStock != -1){

			foreach my $itemStock(@itemStock){

				my(@is_data) = split(/\,/,$itemStock);

				if($is_data[7] eq $no && $is_data[8] eq "$in{'category'}$in{'page'}"){

					print"         <input type=\"hidden\" name=\"$is_data[4],$is_data[1],$is_data[2],$is_data[3]\" value=\"$is_data[6]\">\n";

				}

			}

		}

		undef(@itemStock);

	}

print<<"EOM";
      </form>
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls2>
EOM

	#���i�摜��\���B
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

	#�R�����g��\���B
	if($msg ne ""){

		if($cmt14 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
			$msg =~ s/&#44;/,/g;
		}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7>$t2_font1$msg$t2_font2</td>
       </tr>
EOM

	}

print<<"EOM";
      </table>
EOM

}
##################################################
# shop2_search
# ���������B
##################################################
sub shop2_search{

	#�p�����[�^�����擾�B
	&shop_hidden_set;

	#[font]���`���B
	if($rls20 ne "")                {$t_rls20  = " size=\"$rls20\"";}
	if($rls19 ne "")                {$t_rls19  = " color=\"$rls19\"";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font1 = "<font$t_rls20$t_rls19>";}
	if($rls20 ne "" || $rls19 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls21 ne "" && $rls22 ne ""){

		$rls9 = "<strong><i>$t1_font1$rls9$t1_font2</i></strong>";
		$rls11 = "<strong><i>$t1_font1$rls11$t1_font2</i></strong>";
		if($rls13 ne ""){$rls13 = "<strong><i>$t1_font1$rls13$t1_font2</i></strong>";}
		if($rls15 ne ""){$rls15 = "<strong><i>$t1_font1$rls15$t1_font2</i></strong>";}

	}

	if($rls21 ne "" && $rls22 eq ""){

		$rls9 = "<strong>$t1_font1$rls9$t1_font2</strong>";
		$rls11 = "<strong>$t1_font1$rls11$t1_font2</strong>";
		if($rls13 ne ""){$rls13 = "<strong>$t1_font1$rls13$t1_font2</strong>";}
		if($rls15 ne ""){$rls15 = "<strong>$t1_font1$rls15$t1_font2</strong>";}

	}

	if($rls21 eq "" && $rls22 ne ""){

		$rls9 = "<i>$t1_font1$rls9$t1_font2</i>";
		$rls11 = "<i>$t1_font1$rls11$t1_font2</i>";
		if($rls13 ne ""){$rls13 = "<i>$t1_font1$rls13$t1_font2</i>";}
		if($rls15 ne ""){$rls15 = "<i>$t1_font1$rls15$t1_font2</i>";}

	}

	if($rls21 eq "" && $rls22 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		$rls11 = "$t1_font1$rls11$t1_font2";
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
		if($rls15 ne ""){$rls15 = "$t1_font1$rls15$t1_font2";}

	}

	#�������[�h���̓G���[�B
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#�G���[��ʂ�\���B
	if($error ne ""){
		&shop2_search_error;
	}else{

		#�L�[���[�h�����t�H�[����\���B
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

			#���͓��e�𐮗��B
			$word1 = $in{'word1'};
			$word2 = $in{'word2'};
			$word3 = $in{'word3'};
			$word1 =~ s/,/&#44;/g;
			$word2 =~ s/,/&#44;/g;
			$word3 =~ s/,/&#44;/g;

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
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
      </form>
EOM

		#�����t�H�[����\���B
		}else{

			#���͓��e�𐮗��B
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
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <input type="text" name="word" size="25" value="$in{'word'}">
        <select name="cond">
        <option value="and" $cond_select1>AND</option>
        <option value="or" $cond_select2>OR</option>
        </select>
        <input type="submit" value="�Č���">
        </td>
       </tr>
      </table>
      </form>
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
         <input type="hidden" name="cart" value="view">
$hidden
         <input type="submit" name="submit" value="�I����e�̕\\��">
EOM

	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="���菤����̕\\��" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);">
EOM
	}

print<<"EOM";
         </form>
        </td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td colspan="2"><font size="-1"><strong>�| �������� �|</strong></font></td>
       </tr>
      </table>
EOM

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
        <td background="$page_imgdir/$rls25"$t_rls24$t_rls23 align="center" valign="middle"$t_rls12>$rls11</td>
EOM

		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls14>$rls13</td>\n";}
		if($rls15 ne ""){print"        <td background=\"$page_imgdir/$rls25\"$t_rls24$t_rls23 align=\"center\" valign=\"middle\"$t_rls16>$rls15</td>\n";}

print<<"EOM";
       </tr>
EOM

		#���������B
		$i = 0;

		#�L�����e���̐����B
		foreach $line(@storycomment) {

			local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_dsn8,$t_dsn7,$t_dsn1,$t_dsn2,$t_cmt5);
			local($t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2);
			local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
			local($t_dsn35,$t_dsn34,$t_dsn28,$t_dsn29,$t_dsn31,$t_dsn30,$t5_font1,$t5_font2);

			#�L�����e���̕����B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line);

			#�L���\���̈ꎞ��~�v�ہB
			if($cmt9 eq "on"){
				next;
			}

			if($in{'word'} eq ""){

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

				#���i�\���B
				&shop2_parts;

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
# shop2_parts
# ���i�\���B
##################################################
sub shop2_parts{

	#[font]���`���B
	if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
	if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

	#���i�����`���B
	if($cmt1 ne "")               {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn5 ne "" && $dsn6 ne ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1<strong><i>$title</i></strong>$t2_font2</a>";}
	if($dsn5 ne "" && $dsn6 eq ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1<strong>$title</strong>$t2_font2</a>";}
	if($dsn5 eq "" && $dsn6 ne ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1<i>$title</i>$t2_font2</a>";}
	if($dsn5 eq "" && $dsn6 eq ""){$sub  = "<a href=\"$script?category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no\">$t2_font1$title$t2_font2</a>";}

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

	#[font]���`���B
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

	#���i����\���B

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_dsn1$t_dsn2$t_rls10$t_cmt5>$cmt1$sub</td>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn10$t_dsn11$t_rls12$t_cmt5>
EOM

	#���z�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
	$cmt2 =~ s/�F/:/g;
	$cmt2 =~ s/\&\#44\;//g;
	$cmt2 =~ s/�A//g;
	$cmt2 =~ s/�C//g;

	#���z�̕����B
	@PRICE = split(/<br>/,$cmt2);

	#���z�̕\���B
	foreach $x(@PRICE){

		local($unit_price,$type) = split(/:/,$x);
		$unit_price              =~ s/�O/0/g;
		$unit_price              =~ s/�P/1/g;
		$unit_price              =~ s/�Q/2/g;
		$unit_price              =~ s/�R/3/g;
		$unit_price              =~ s/�S/4/g;
		$unit_price              =~ s/�T/5/g;
		$unit_price              =~ s/�U/6/g;
		$unit_price              =~ s/�V/7/g;
		$unit_price              =~ s/�W/8/g;
		$unit_price              =~ s/�X/9/g;
		$unit_price2             = $unit_price;
		$unit_price2             =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		if($dsn14 ne "" && $dsn15 ne ""){print"        $t3_font1<strong><i>$unit_price2�~ $type</i></strong>$t3_font2<br>\n";}
		if($dsn14 ne "" && $dsn15 eq ""){print"        $t3_font1<strong>$unit_price2�~ $type</strong>$t3_font2<br>\n";}
		if($dsn14 eq "" && $dsn15 ne ""){print"        $t3_font1<i>$unit_price2�~ $type</i>$t3_font2<br>\n";}
		if($dsn14 eq "" && $dsn15 eq ""){print"        $t3_font1$unit_price2�~ $type$t3_font2<br>\n";}

	}

print<<"EOM";
        </td>
EOM

	#���i�ڍ׏���\���B
	if($rls13 ne ""){

		#[td]���`���B
		if($dsn26 ne ""){$t_dsn26 = " bgcolor=\"$dsn26\"";}
		if($dsn25 ne ""){$t_dsn25 = " bordercolor=\"$dsn25\"";}
		if($dsn19 ne ""){$t_dsn19 = " align=\"$dsn19\"";}
		if($dsn20 ne ""){$t_dsn20 = " valign=\"$dsn20\"";}
		if($dsn20 eq ""){$t_dsn20 = " valign=\"top\"";}

		#[font]���`���B
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn27"$t_dsn26$t_dsn25$t_dsn19$t_dsn20$t_rls14$t_cmt5>
EOM

		#���i�ڍ׏��̕����B
		@OTHER1 = split(/<br>/,$cmt3);

		#���i�ڍ׏���\���B
		foreach $x(@OTHER1){

			if($dsn23 ne "" && $dsn24 ne ""){print"        $t4_font1<strong><i>$x</i></strong>$t4_font2<br>";}
			if($dsn23 ne "" && $dsn24 eq ""){print"        $t4_font1<strong>$x</strong>$t4_font2<br>";}
			if($dsn23 eq "" && $dsn24 ne ""){print"        $t4_font1<i>$x</i>$t4_font2<br>";}
			if($dsn23 eq "" && $dsn24 eq ""){print"        $t4_font1$x$t4_font2<br>";}

		}

print<<"EOM";
        </td>
EOM

	}

	#���i�ڍ׏���\���B
	if($rls15 ne ""){

		#[td]���`���B
		if($dsn35 ne ""){$t_dsn35 = " bgcolor=\"$dsn35\"";}
		if($dsn34 ne ""){$t_dsn34 = " bordercolor=\"$dsn34\"";}
		if($dsn28 ne ""){$t_dsn28 = " align=\"$dsn28\"";}
		if($dsn29 ne ""){$t_dsn29 = " valign=\"$dsn29\"";}
		if($dsn29 eq ""){$t_dsn29 = " valign=\"top\"";}

		#[font]���`���B
		if($dsn31 ne "")                {$t_dsn31  = " size=\"$dsn31\"";}
		if($dsn30 ne "")                {$t_dsn30  = " color=\"$dsn30\"";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font1 = "<font$t_dsn31$t_dsn30>";}
		if($dsn31 ne "" || $dsn30 ne ""){$t5_font2 = "</font>";}

print<<"EOM";
        <td background="$page_imgdir/$dsn36"$t_dsn35$t_dsn34$t_dsn28$t_dsn29$t_rls16$t_cmt5>
EOM

		#���i�ڍ׏��̕����B
		@OTHER2 = split(/<br>/,$cmt4);

		#���i�ڍ׏���\���B
		foreach $x(@OTHER2){

			if($dsn32 ne "" && $dsn33 ne ""){print"        $t5_font1<strong><i>$x</i></strong>$t5_font2<br>";}
			if($dsn32 ne "" && $dsn33 eq ""){print"        $t5_font1<strong>$x</strong>$t5_font2<br>";}
			if($dsn32 eq "" && $dsn33 ne ""){print"        $t5_font1<i>$x</i>$t5_font2<br>";}
			if($dsn32 eq "" && $dsn33 eq ""){print"        $t5_font1$x$t5_font2<br>";}

		}

print<<"EOM";
        </td>
EOM

	}

print<<"EOM";
       </tr>
EOM

}
##################################################
# shop2_search_error
# �G���[�����B
##################################################
sub shop2_search_error{

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
        </td>
       </tr>
      </table>
      </div>
EOM

}

1;
