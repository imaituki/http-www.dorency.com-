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
# shop1
# �V���b�v1�̋L���\���B
##################################################
sub shop1{

	#�p�����[�^�����擾�B
	&shop_hidden_set;

	#1�y�[�W�ɕ\������L���������B(���ݒ�̏ꍇ��500���w��)
	if($rls1 ne ""){
		$p_view = $rls1;
	}else{
		$p_view = "500";
	}

	#[font]���`���B
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls9 ne "" && $rls10 ne ""){

		$price                = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";
		$detail               = "<strong><i>$t1_font1�ڍ�$t1_font2</i></strong>";
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$price                = "<strong>$t1_font1$rls4$t1_font2</strong>";
		$detail               = "<strong>$t1_font1�ڍ�$t1_font2</strong>";
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$price                = "<i>$t1_font1$rls4$t1_font2</i>";
		$detail               = "<i>$t1_font1�ڍ�$t1_font2</i>";
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$price                = "$t1_font1$rls4$t1_font2";
		$detail               = "$t1_font1�ڍ�$t1_font2";
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

	}

	#�����t�H�[���\���B
	if($rls24 ne ""){

		#�L�[���[�h�����t�H�[����\���B
		if($rls14 ne "" || $rls16 ne "" || $rls18 ne ""){

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="search">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

			if($rls14 ne ""){

				@serch1 = split(/<br>/,$rls14);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls13</option>
        <option></option>
EOM

				foreach $x(@serch1){
					print"        <option value=\"$x\">$x</option>\n";
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls16 ne ""){

				@serch2 = split(/<br>/,$rls16);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls15</option>
        <option></option>
EOM

				foreach $x(@serch2){
					print"        <option value=\"$x\">$x</option>\n";
				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls18 ne ""){

				@serch3 = split(/<br>/,$rls18);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls17</option>
        <option></option>
EOM

				foreach $x(@serch3){
					print"        <option value=\"$x\">$x</option>\n";
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
	if($rls3 ne ""){$t_rls3 = " cellspacing=\"$rls3\"";}
	if($rls3 eq ""){$t_rls3 = " cellspacing=\"0\"";}

	#[table]��\���B

print<<"EOM";
      <table border="0" cellpadding="0"$t_rls3>
       <tr>
EOM

	#�L�����e��񐔂̏������B
	$i = 0;

	#�y�[�W���O�̏������B
	$j = 0;

	#�L�����e���̐����B
	foreach (@storycomment){

		local($t_wimg1,$t_himg1,$t_cmt12,$t_comment_width,$t_dsn13,$t_dsn12,$t2_font1,$t2_font2,$t_dsn23,$t_dsn22,$t3_font1,$t3_font2);
		local($t_dsn7,$t_dsn3,$t_dsn6,$t_dsn4,$t_dsn5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn9,$t_dsn10,$t_dsn11);
		local($t_dsn27,$t_dsn26,$t_dsn19,$t_dsn20,$t_dsn21,$t_dsn32,$t_dsn31,$t_dsn29,$t_dsn30,$t_rls11);

		#�L�����e���̕����B
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

		#�L���\���̈ꎞ��~�v�ہB
		if($cmt8 eq "on"){
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
		&shop1_parts;

	}

print<<"EOM";
       </tr>
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

			if($rls21 ne ""){
				$backName = $rls21;
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

			if($rls22 ne ""){
				$nextName = $rls22;
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
# shop1_detail
# �V���b�v1�̏ڍ׉�ʕ\���B
##################################################
sub shop1_detail{

	#[font]���`���B
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls9 ne "" && $rls10 ne ""){

		$price                = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";
		$detail               = "<strong><i>$t1_font1�ڍא���$t1_font2</i></strong>";
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$price                = "<strong>$t1_font1$rls4$t1_font2</strong>";
		$detail               = "<strong>$t1_font1�ڍא���$t1_font2</strong>";
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$price                = "<i>$t1_font1$rls4$t1_font2</i>";
		$detail               = "<i>$t1_font1�ڍא���$t1_font2</i>";
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$price                = "$t1_font1$rls4$t1_font2";
		$detail               = "$t1_font1�ڍא���$t1_font2";
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

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
	if($wimg2 ne ""){$t_wimg2 = " width=\"$wimg2\"";}
	if($himg2 ne ""){$t_himg2 = " height=\"$himg2\"";}

	#���i�摜2���`���B
	if($img2 ne ""){

		#�L���̕��A�����̐ݒ�B
		local($width,$height) = split(/�~/,$simg2);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#�摜�̐������ݒ�B
		if($cmt13 ne ""){
			$t_cmt13 = " alt=\"$cmt13\"";
		}

		if($img2 =~ /pdf$/i){

			#pdf�t�@�C���̏ꍇ�͓Y�t�t�@�C���Ƃ��Č`���B
			$img2 = "<a href=\"$page_imgdir/$img2\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"�Y�t����\"></a>";
		}else{

			if($pimg2 eq ""){				#�g��\���uoff�i�󗓁j�v���`���B
				$img2 = "<img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13>";
			}else{						#�g��\���uon�v���`���B

				if($br_width eq "40" && $br_height eq "50"){

					#�L���̕��A���������ݒ���`���B
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13 border=\"0\"></a>";
				}else{

					#�L���̕��A�������ݒ�ς݂��`���B
					$img2 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img2','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img2\"$t_wimg2$t_himg2$t_cmt13 border=\"0\"></a>";
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
		if($cmt14 ne ""){
			$t_cmt14 = " alt=\"$cmt14\"";
		}

		if($img3 =~ /pdf$/i){

			#pdf�t�@�C���̏ꍇ�͓Y�t�t�@�C���Ƃ��Č`���B
			$img3 = "<a href=\"$page_imgdir/$img3\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"�Y�t����\"></a>";
		}else{

			if($pimg3 eq ""){				#�g��\���uoff�i�󗓁j�v���`���B
				$img3 = "<img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14>";
			}else{						#�g��\���uon�v���`���B

				if($br_width eq "40" && $br_height eq "50"){

					#�L���̕��A���������ݒ���`���B
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14 border=\"0\"></a>";
				}else{

					#�L���̕��A�������ݒ�ς݂��`���B
					$img3 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img3','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img3\"$t_wimg3$t_himg3$t_cmt14 border=\"0\"></a>";
				}
			}
		}
	}

	#[font]���`���B
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

	#���i�����`���B
	if($cmt1 ne "")                 {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn14 ne "" && $dsn15 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn14 ne "" && $dsn15 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn14 eq "" && $dsn15 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn14 eq "" && $dsn15 eq ""){$sub  = "$t2_font1$title$t2_font2";}

	#[font]���`���B
	if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
	if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font1 = "<font$t_dsn23$t_dsn22>";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font2 = "</font>";}

	#���i�ڍ׏����`���B
	if($msg ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
			$msg =~ s/&#44;/,/g;
		}

		if($dsn24 ne "" && $dsn25 ne ""){$msg = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}
		if($dsn24 ne "" && $dsn25 eq ""){$msg = "$t3_font1<strong>$msg</strong>$t3_font2";}
		if($dsn24 eq "" && $dsn25 ne ""){$msg = "$t3_font1<i>$msg</i>$t3_font2";}
		if($dsn24 eq "" && $dsn25 eq ""){$msg = "$t3_font1$msg$t3_font2";}

	}

	if($cmt15 eq ""){
		#�⑫�������̎��������N�B
		&auto_link;
	}

	#�����`���B
	$table_width = $dsn1 * $rls2;

	#[table]���`���B
	if($dsn7 ne "")       {$t_dsn7        = " bgcolor=\"$dsn7\"";}
	if($dsn3 ne "")       {$t_dsn3        = " border=\"$dsn3\"";}
	if($dsn3 eq "")       {$t_dsn3        = " border=\"0\"";}
	if($dsn6 ne "")       {$t_dsn6        = " bordercolor=\"$dsn6\"";}
	if($dsn4 ne "")       {$t_dsn4        = " cellspacing=\"$dsn4\"";}
	if($dsn4 eq "")       {$t_dsn4        = " cellspacing=\"0\"";}
	if($dsn5 ne "")       {$t_dsn5        = " cellpadding=\"$dsn5\"";}
	if($dsn5 eq "")       {$t_dsn5        = " cellpadding=\"0\"";}
	if($table_width ne ""){$t_table_width = " width=\"$table_width\"";}

	#[td]���`���B
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	#���i����\���B

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_table_width>
       <tr>
        <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1$sub</td>
       </tr>
EOM

	#���i�摜��\���B
	if($img2 ne "" || $img3 ne ""){

		if($dsn32 ne ""){$t_dsn32 = " bgcolor=\"$dsn32\"";}
		if($dsn31 ne ""){$t_dsn31 = " bordercolor=\"$dsn31\"";}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn33"$t_dsn32$t_dsn31 align="center" valign="middle">
         <table border="0" cellpadding="0">
          <tr>
EOM

		if($img2 ne ""){print"           <td>$img2</td>\n";}
		if($img3 ne ""){print"           <td>$img3</td>\n";}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

	}

	#[td]���`���B
	if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
	if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>
         <table border="0" cellpadding="1" cellspacing="1">
EOM

	#[td]���`���B
	if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

	if($msg ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
           <td>$msg</td>
          </tr>
EOM

	}

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$price</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>
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

		if($dsn24 ne "" && $dsn25 ne ""){print"           $t3_font1<i><strong>$unit_price2�~ $type</strong></i><br>$t3_font2\n";}
		if($dsn24 ne "" && $dsn25 eq ""){print"           $t3_font1<strong>$unit_price2�~ $type</strong><br>$t3_font2\n";}
		if($dsn24 eq "" && $dsn25 ne ""){print"           $t3_font1<i>$unit_price2�~ $type</i><br>$t3_font2\n";}
		if($dsn24 eq "" && $dsn25 eq ""){print"           $t3_font1$unit_price2�~ $type<br>$t3_font2\n";}

	}

print<<"EOM";
           </td>
          </tr>
EOM

	#���i�ڍ׏���\���B
	if($rls5 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>
EOM

		#���i�ڍ׏��̕����B
		@OTHER1 = split(/<br>/,$cmt3);

		#���i�ڍ׏���\���B
		foreach $x(@OTHER1){

			if($dsn24 ne "" && $dsn25 ne ""){print"           $t3_font1<i><strong>$x</strong></i><br>$t3_font2\n";}
			if($dsn24 ne "" && $dsn25 eq ""){print"           $t3_font1<strong>$x</strong><br>$t3_font2\n";}
			if($dsn24 eq "" && $dsn25 ne ""){print"           $t3_font1<i>$x</i><br>$t3_font2\n";}
			if($dsn24 eq "" && $dsn25 eq ""){print"           $t3_font1$x<br>$t3_font2\n";}

		}

print<<"EOM";
           </td>
          </tr>
EOM

	}

	#���i�ڍ׏���\���B
	if($rls6 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>
EOM

		#���i�ڍ׏��̕����B
		@OTHER2 = split(/<br>/,$cmt4);

		#���i�ڍ׏���\���B
		foreach $x(@OTHER2){

			if($dsn24 ne "" && $dsn25 ne ""){print"           $t3_font1<i><strong>$x</strong></i><br>$t3_font2\n";}
			if($dsn24 ne "" && $dsn25 eq ""){print"           $t3_font1<strong>$x</strong><br>$t3_font2\n";}
			if($dsn24 eq "" && $dsn25 ne ""){print"           $t3_font1<i>$x</i><br>$t3_font2\n";}
			if($dsn24 eq "" && $dsn25 eq ""){print"           $t3_font1$x<br>$t3_font2\n";}

		}

print<<"EOM";
           </td>
          </tr>
EOM

	}

print<<"EOM";
         </table>
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
        </td>
       </tr>
      </table>
EOM

}
##################################################
# shop1_search
# ���������B
##################################################
sub shop1_search{

	#�p�����[�^�����擾�B
	&shop_hidden_set;

	#[font]���`���B
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls9 ne "" && $rls10 ne ""){

		$price                = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";
		$detail               = "<strong><i>$t1_font1�ڍ�$t1_font2</i></strong>";
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$price                = "<strong>$t1_font1$rls4$t1_font2</strong>";
		$detail               = "<strong>$t1_font1�ڍ�$t1_font2</strong>";
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$price                = "<i>$t1_font1$rls4$t1_font2</i>";
		$detail               = "<i>$t1_font1�ڍ�$t1_font2</i>";
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$price                = "$t1_font1$rls4$t1_font2";
		$detail               = "$t1_font1�ڍ�$t1_font2";
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

	}

	#�������[�h���̓G���[�B
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#�G���[��ʂ�\���B
	if($error ne ""){
		&shop1_search_error;
	}else{

		#�L�[���[�h�����t�H�[����\���B
		if($rls14 ne "" || $rls16 ne "" || $rls18 ne ""){

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

			if($rls14 ne ""){

				@serch1 = split(/<br>/,$rls14);

				if($word1 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word1">
        <option value="" $select1>$rls13</option>
        <option></option>
EOM

				foreach $x(@serch1){

					if($word1 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls16 ne ""){

				@serch2 = split(/<br>/,$rls16);

				if($word2 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word2">
        <option value="" $select1>$rls15</option>
        <option></option>
EOM

				foreach $x(@serch2){

					if($word2 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

				}

print<<"EOM";
        </select>
        </td>
EOM

			}

			if($rls18 ne ""){

				@serch3 = split(/<br>/,$rls18);

				if($word3 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word3">
        <option value="" $select1>$rls17</option>
        <option></option>
EOM

				foreach $x(@serch3){

					if($word3 eq "$x"){
						$select = "selected";
					}else{
						$select = "";
					}

					print"        <option value=\"$x\" $select>$x</option>\n";

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
        <input type="submit" name="submit" value="�Č���">
        </td>
       </tr>
      </table>
      </form>
EOM

		}
		my $new_width = $cds1 + 40;
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
		if($rls3 ne ""){$t_rls3 = " cellspacing=\"$rls3\"";}
		if($rls3 eq ""){$t_rls3 = " cellspacing=\"0\"";}

		#[table]��\���B

print<<"EOM";
      <table border="0" cellpadding="0"$t_rls3>
       <tr>
EOM

		#���������B
		$i = 0;

		#�L�����e���̐����B
		foreach $line(@storycomment) {

			local($t_wimg1,$t_himg1,$t_cmt12,$t_comment_width,$t_dsn13,$t_dsn12,$t2_font1,$t2_font2,$t_dsn23,$t_dsn22,$t3_font1,$t3_font2);
			local($t_dsn7,$t_dsn3,$t_dsn6,$t_dsn4,$t_dsn5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn9,$t_dsn10,$t_dsn11,$t_dsn11);
			local($t_dsn27,$t_dsn26,$t_dsn19,$t_dsn20,$t_dsn21,$t_dsn21,$t_dsn32,$t_dsn31,$t_dsn29,$t_dsn30,$t_dsn30,$t_rls11);

			#�L�����e���̕����B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$line);

			#�L���\���̈ꎞ��~�v�ہB
			if($cmt8 eq "on"){
				next;
			}

			if($in{'word'} eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt5 eq "$word1")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt5 eq "$word1" && $cmt6 eq "$word2")                     {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt5 eq "$word1" && $cmt6 eq "$word2" && $cmt7 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt6 eq "$word2")                                          {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt6 eq "$word2" && $cmt7 eq "$word3")                     {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt7 eq "$word3")                                          {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt5 eq "$word1" && $cmt7 eq "$word3")                     {$flag = 1;}}

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
				&shop1_parts;

			}
		}

print<<"EOM";
       </tr>
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
# shop1_parts
# ���i�\���B
##################################################
sub shop1_parts{

	#[img][td]���`���B
	if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
	if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

	#���i�摜���`���B
	if($img1 ne ""){

		#�L���̕��A�����̐ݒ�B
		local($width,$height) = split(/�~/,$simg1);
		$br_width             = $width + 40;
		$br_height            = $height + 50;

		#�摜�̐������ݒ�B
		if($cmt12 ne ""){
			$t_cmt12 = " alt=\"$cmt12\"";
		}

		if($img1 =~ /pdf$/i){

			#pdf�t�@�C���̏ꍇ�͓Y�t�t�@�C���Ƃ��Č`���B
			$img1 = "<a href=\"$page_imgdir/$img1\" target=\"_blank\"><img src=\"$imgdir/pdf.gif\" border=\"0\" alt=\"�Y�t����\"></a>";
		}else{

			if($pimg1 eq ""){				#�g��\���uoff�i�󗓁j�v���`���B
				$img1 = "<img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12>";
			}else{						#�g��\���uon�v���`���B

				if($br_width eq "40" && $br_height eq "50"){

					#�L���̕��A���������ݒ���`���B
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12 border=\"0\"></a>";
				}else{

					#�L���̕��A�������ݒ�ς݂��`���B
					$img1 = "<a href=\"#\" onclick=\"MM_openBrWindow('$page_imgdir/$img1','','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$br_width,height=$br_height');return(false);\"><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt12 border=\"0\"></a>";
				}
			}
		}
	}

	#�����`���B
	$comment_width = $dsn1 - $wimg1;

	if($comment_width ne ""){
		if($comment_width >= 0){
			$t_comment_width = " width=\"$comment_width\"";
		}
	}

	#[font]���`���B
	if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
	if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
	if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

	#���i�����`���B
	if($cmt1 ne "")                 {$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}
	if($dsn14 ne "" && $dsn15 ne ""){$sub  = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn14 ne "" && $dsn15 eq ""){$sub  = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn14 eq "" && $dsn15 ne ""){$sub  = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn14 eq "" && $dsn15 eq ""){$sub  = "$t2_font1$title$t2_font2";}

	#[font]���`���B
	if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
	if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font1 = "<font$t_dsn23$t_dsn22>";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font2 = "</font>";}

	#�ڍ׉�ʂւ̃����N���B
	if($rls23 ne ""){
		$detailName = $rls23;
	}else{
		$detailName = "�ڍ׉�ʂ���";
	}

	#���i�ڍ׏����`���B
	if($dsn24 ne "" && $dsn25 ne ""){
		$detail2 = "$t3_font1<strong><i>$detailName</i></strong>$t3_font2";
	}elsif($dsn24 ne "" && $dsn25 eq ""){
		$detail2 = "$t3_font1<strong>$detailName</strong>$t3_font2";
	}elsif($dsn24 eq "" && $dsn25 ne ""){
		$detail2 = "$t3_font1<i>$detailName</i>$t3_font2";
	}elsif($dsn24 eq "" && $dsn25 eq ""){
		$detail2 = "$t3_font1$detailName$t3_font2";
	}

	if($k >= $rls2){
		print"       </tr>\n";
		print"       <tr>\n";
		$k = 0;
	}

	$k++;

	#[table]���`���B
	if($dsn7 ne ""){$t_dsn7 = " bgcolor=\"$dsn7\"";}
	if($dsn3 ne ""){$t_dsn3 = " border=\"$dsn3\"";}
	if($dsn3 eq ""){$t_dsn3 = " border=\"0\"";}
	if($dsn6 ne ""){$t_dsn6 = " bordercolor=\"$dsn6\"";}
	if($dsn4 ne ""){$t_dsn4 = " cellspacing=\"$dsn4\"";}
	if($dsn4 eq ""){$t_dsn4 = " cellspacing=\"0\"";}
	if($dsn5 ne ""){$t_dsn5 = " cellpadding=\"$dsn5\"";}
	if($dsn5 eq ""){$t_dsn5 = " cellpadding=\"0\"";}
	if($dsn1 ne ""){$t_dsn1 = " width=\"$dsn1\"";}
	if($dsn2 ne ""){$t_dsn2 = " height=\"$dsn2\"";}

	#���ݓ��t�擾�B
	$times = time;

	$id = sprintf("%010d",$no);

print<<"EOM";
        <td valign="top">
         <form action="$script" method="post" style="margin-bottom:0" name="item_$no">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="select">
         <input type="hidden" name="code" value="$times">
         <input type="hidden" name="id" value="$id">
         <input type="hidden" name="unit" value="1">
         <input type="hidden" name="pageType" value="shop1">
$hidden
EOM

	#���i�ڍ׏��1��\���B
	if($rls5 eq ""){
		print"         <input type=\"hidden\" name=\"other1\" value=\"0\">\n";
	}

	#���i�ڍ׏��2��\���B
	if($rls6 eq ""){
		print"         <input type=\"hidden\" name=\"other2\" value=\"0\">\n";
	}

print<<"EOM";
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

	#[td]���`���B
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	if($cmt10 ne ""){

		if($cmt11 ne ""){$t_cmt11 = " target=\"_blank\"";}

		#���i����\���B
		if($img1 eq ""){
			print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1<a href=\"$cmt10\"$t_cmt11>$sub</a></td>\n";
		}else{
			print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 colspan=\"2\">$cmt1<a href=\"$cmt10\"$t_cmt11>$sub</a></td>\n";
		}

	}else{

		#���i����\���B
		if($img1 eq ""){
			print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1$sub</td>\n";
		}else{
			print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 colspan=\"2\">$cmt1$sub</td>\n";
		}
	}

print<<"EOM";
          </tr>
          <tr>
EOM

	#[td]���`���B
	if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
	if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}
	if($dsn19 ne ""){$t_dsn19 = " height=\"$dsn19\"";}
	if($dsn20 ne ""){$t_dsn20 = " align=\"$dsn20\"";}
	if($dsn21 ne ""){$t_dsn21 = " valign=\"$dsn21\"";}
	if($dsn21 eq ""){$t_dsn21 = " valign=\"top\"";}

	if($dsn32 ne ""){$t_dsn32 = " bgcolor=\"$dsn32\"";}
	if($dsn31 ne ""){$t_dsn31 = " bordercolor=\"$dsn31\"";}
	if($dsn29 ne ""){$t_dsn29 = " align=\"$dsn29\"";}
	if($dsn30 ne ""){$t_dsn30 = " valign=\"$dsn30\"";}
	if($dsn30 eq ""){$t_dsn30 = " valign=\"top\"";}

	#���i�摜��\���B
	if($img1 eq ""){
		print"           <td background=\"$page_imgdir/$dsn28\"$t_dsn27$t_dsn26$t_dsn19$t_dsn20$t_dsn21>\n";
	}else{
		print"           <td background=\"$page_imgdir/$dsn33\"$t_dsn32$t_dsn31$t_wimg1$t_himg1$t_dsn29$t_dsn30>\n";
		print"           $img1\n";
		print"           </td>\n";
		print"           <td background=\"$page_imgdir/$dsn28\"$t_dsn27$t_dsn26$t_comment_width$t_dsn19$t_dsn20$t_dsn21>\n";
	}

	#[td]���`���B
	if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

print<<"EOM";
            <table border="0" cellspacing="1">
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$price</td>
              <td>
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
		print"              <select name=\"unit_price\" onChange=\"selectData('item\_$no','shop1')\">\n";
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
				print"              <option value=\"$o0\">$unit_price2�~ $type</option>\n";
			}
		}else{

			print"              <input type=\"hidden\" name=\"unit_price\" value=\"$o0\">\n";
			print"              <input type=\"hidden\" name=\"unit_price_data\" value=\"$unit_price2�~ $type\">\n";
			if($dsn24 ne "" && $dsn25 ne ""){print"              $t3_font1<strong><i>$unit_price2�~ $type</i></strong>$t3_font2<br>\n";}
			if($dsn24 ne "" && $dsn25 eq ""){print"              $t3_font1<strong>$unit_price2�~ $type</strong>$t3_font2<br>\n";}
			if($dsn24 eq "" && $dsn25 ne ""){print"              $t3_font1<i>$unit_price2�~ $type</i>$t3_font2<br>\n";}
			if($dsn24 eq "" && $dsn25 eq ""){print"              $t3_font1$unit_price2�~ $type$t3_font2<br>\n";}

		}

		#���i���i��ID���J�E���g�A�b�v�B
		$o0++;

	}

	if($#PRICE > 0){
		print"              </select>\n";
	}

print<<"EOM";
              </td>
             </tr>
EOM

	#���i�ڍ׏��1��\���B
	if($rls5 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
              <td>
EOM

		#���i�ڍ׏��̕����B
		@OTHER1 = split(/<br>/,$cmt3);

		if($#OTHER1 == -1){
			print"              <input type=\"hidden\" name=\"other1\" value=\"0\">\n";
		}else{

			#���i�ڍ׏���\���B
			if($#OTHER1 > 0){
				print"              <select name=\"other1\" onChange=\"selectData('item\_$no','shop1')\">\n";
			}

			#����1��ID���������B
			$o1 = 1;

			foreach $x(@OTHER1){

				if($x ne ""){
					if($#OTHER1 > 0){
						print"              <option value=\"$o1\">$x</option>\n";
					}else{
						print"              <input type=\"hidden\" name=\"other1\" value=\"$o1\">\n";
						print"              <input type=\"hidden\" name=\"other1_data\" value=\"$x\">\n";
						if($dsn24 ne "" && $dsn25 ne ""){print"              $t3_font1<strong><i>$x</i></strong>$t3_font2<br>\n";}
						if($dsn24 ne "" && $dsn25 eq ""){print"              $t3_font1<strong>$x</strong>$t3_font2<br>\n";}
						if($dsn24 eq "" && $dsn25 ne ""){print"              $t3_font1<i>$x</i>$t3_font2<br>\n";}
						if($dsn24 eq "" && $dsn25 eq ""){print"              $t3_font1$x$t3_font2<br>\n";}
					}
				}
				#����1��ID���J�E���g�A�b�v�B
				$o1++;

			}

			if($#OTHER1 > 0){
				print"              </select>\n";
			}

		}

print<<"EOM";
              </td>
             </tr>
EOM

	}

	#���i�ڍ׏��2��\���B
	if($rls6 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
              <td>
EOM

		#���i�ڍ׏��̕����B
		@OTHER2 = split(/<br>/,$cmt4);

		if($#OTHER2 == -1){
			print"              <input type=\"hidden\" name=\"other2\" value=\"0\">\n";
		}else{

			#���i�ڍ׏���\���B
			if($#OTHER2 > 0){
				print"              <select name=\"other2\" onChange=\"selectData('item\_$no','shop1')\">\n";
			}

			#����2��ID���������B
			$o2 = 1;

			foreach $x(@OTHER2){
				if($x ne ""){
					if($#OTHER2 > 0){
						print"              <option value=\"$o2\">$x</option>\n";
					}else{
						print"              <input type=\"hidden\" name=\"other2\" value=\"$o2\">\n";
						print"              <input type=\"hidden\" name=\"other2_data\" value=\"$x\">\n";
						if($dsn24 ne "" && $dsn25 ne ""){print"              $t3_font1<strong><i>$x</i></strong>$t3_font2<br>\n";}
						if($dsn24 ne "" && $dsn25 eq ""){print"              $t3_font1<strong>$x</strong>$t3_font2<br>\n";}
						if($dsn24 eq "" && $dsn25 ne ""){print"              $t3_font1<i>$x</i>$t3_font2<br>\n";}
						if($dsn24 eq "" && $dsn25 eq ""){print"              $t3_font1$x$t3_font2<br>\n";}
					}
				}

				#����2��ID���J�E���g�A�b�v�B
				$o2++;

			}

			if($#OTHER2 > 0){
				print"              </select>\n";
			}

		}

print<<"EOM";
              </td>
             </tr>
EOM

	}

	#���i�ڍ׃����N��\���B
	if($msg ne "" || $img2 ne "" || $img3 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
              <td><a href="$script?&category=$in{'category'}&page=$in{'page'}&view=$view&cart=detail&no=$no">$detail2</a></td>
             </tr>
EOM

	}

print<<"EOM";
            </table>
EOM

	if($cds18 eq ""){$cds18 = "�I������";}
	if($cds19 eq ""){$cds19 = "�݌ɐ؂�";}

	#�݌ɏ󋵂�\���B
	if($cmt9 eq "on"){
		print"            <div align=\"center\"><input type=\"hidden\" name=\"submit_data\" value=\"$cds18\"><input type=\"hidden\" name=\"zaiko_data\" value=\"$cds19\"><input type=\"button\" value=\"$cds19\" disabled></div>\n";
	}else{
		print"            <div align=\"center\"><input type=\"hidden\" name=\"submit_data\" value=\"$cds18\"><input type=\"hidden\" name=\"zaiko_data\" value=\"$cds19\"><input type=\"submit\" name=\"submit\" value=\"$cds18\" disabled></div>\n";
	}

print<<"EOM";
           </td>
          </tr>
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
        </td>
EOM

}
##################################################
# shop1_search_error
# �G���[�����B
##################################################
sub shop1_search_error{

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
