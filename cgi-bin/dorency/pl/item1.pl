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
# item1
# ���i�ē�1�̋L���\���B
##################################################
sub item1{

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

		$detail = "<strong><i>$t1_font1�ڍ�$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1�ڍ�$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1�ڍ�$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1�ڍ�$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

	}

	#�����t�H�[���\���B
	if($rls24 ne ""){

		#�L�[���[�h�����t�H�[����\���B
		if($rls16 ne "" || $rls18 ne "" || $rls20 ne ""){

print<<"EOM";
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="search" value="on">
      <input type="hidden" name="cond" value="on">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

			if($rls16 ne ""){

				@serch1 = split(/<br>/,$rls16);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls15</option>
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

			if($rls18 ne ""){

				@serch2 = split(/<br>/,$rls18);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls17</option>
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

			if($rls20 ne ""){

				@serch3 = split(/<br>/,$rls20);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls19</option>
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
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

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

		#[img][td]���`���B
		if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
		if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

		#�摜���`���B
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

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1<strong><i>$detailName</i></strong>$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

		}

		if($dsn24 ne "" && $dsn25 eq ""){

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1<strong>$detailName</strong>$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

		}

		if($dsn24 eq "" && $dsn25 ne ""){

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1<i>$detailName</i>$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

		}

		if($dsn24 eq "" && $dsn25 eq ""){

			if($cmt15 eq "on"){
				$msg =~ s/&lt;br&gt;/\n/g;
			}

			$detail2 = "$t3_font1$detailName$t3_font2";
			if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
			if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
			if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
			if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

		}

		if($k >= $rls2){
			print"       </tr>\n";
			print"       <tr>\n";
			$k = 0;
		}

		$k++;

		if($cmt15 eq ""){
			#�⑫�������̎��������N�B
			&auto_link;
		}

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

		#[table]��\���B

		if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){

print<<"EOM";
        <td valign="top">
         <form action="$ask7\/$cgi_host\/$site_folder\/siteup.cgi" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

		}else{

print<<"EOM";
        <td valign="top">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

		}

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
EOM

	if($rls4 ne "" || $rls5 ne "" || $rls6 ne "" || $msg ne "" || $img1 ne "" ||  $img2 ne "" || $img3 ne "" || $rls13 eq "on"){

print<<"EOM";
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

			#���i�ڍ׏���\���B
			if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

				if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

print<<"EOM";
            <table border="0" cellpadding="1" cellspacing="1">
EOM

				if($rls4 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11>$rls4</td>
              <td>$cmt2</td>
             </tr>
EOM

				}

				if($rls5 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
              <td>$cmt3</td>
             </tr>
EOM

				}

				if($rls6 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
              <td>$cmt4</td>
             </tr>
EOM

				}

				#���i�ڍ׃����N��\���B
				if($msg ne "" || $img2 ne "" || $img3 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
              <td><a href="$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no">$detail2</a></td>
             </tr>
EOM

				}

print<<"EOM";
            </table>
EOM

			}else{

print<<"EOM";
            <table border="0" cellspacing="1">
EOM

				#���i�����ڍׂ����̂܂ܕ\���B
				if($msg ne ""){

print<<"EOM";
             <tr>
              <td>$msg</td>
             </tr>
EOM

				}

				#���i�����ڍׂ�\���B
				if($img2 ne "" || $img3 ne ""){

print<<"EOM";
             <tr>
              <td><a href="$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no">$detail2</a></td>
             </tr>
EOM

				}

print<<"EOM";
            </table>
EOM

			}

			#�₢���킹�{�^����\���B
			if($rls13 eq "on"){
				print"            <div align=\"center\"><input type=\"submit\" value=\"$rls14\"></div>\n";
			}

print<<"EOM";
           </td>
          </tr>
EOM

		}

print<<"EOM";
         </table>
         </form>
        </td>
EOM

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
        <input type="hidden" name="view" value="$back_line">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
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
# item1_detail
# ���i�ē�1�̏ڍ׉�ʕ\���B
##################################################
sub item1_detail{

	#[font]���`���B
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#���i���ڂ��`���B
	if($rls9 ne "" && $rls10 ne ""){

		$detail = "<strong><i>$t1_font1�ڍא���$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1�ڍא���$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1�ڍא���$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1�ڍא���$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
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
	if($dsn24 ne "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

	}

	if($dsn24 ne "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

	}

	if($cmt15 eq ""){
		#�⑫�������̎��������N�B
		&auto_link;
	}

	#[table]���`���B
	if($dsn7 ne "")       {$t_dsn7        = " bgcolor=\"$dsn7\"";}
	if($dsn3 ne "")       {$t_dsn3        = " border=\"$dsn3\"";}
	if($dsn3 eq "")       {$t_dsn3        = " border=\"0\"";}
	if($dsn6 ne "")       {$t_dsn6        = " bordercolor=\"$dsn6\"";}
	if($dsn4 ne "")       {$t_dsn4        = " cellspacing=\"$dsn4\"";}
	if($dsn4 eq "")       {$t_dsn4        = " cellspacing=\"0\"";}
	if($dsn5 ne "")       {$t_dsn5        = " cellpadding=\"$dsn5\"";}
	if($dsn5 eq "")       {$t_dsn5        = " cellpadding=\"0\"";}

	#[td]���`���B
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	#���i����\���B

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5 width="100%">
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

	#���i�ڍ׏���\���B
	if($msg ne "" || $rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26 align="left" valign="middle">
EOM

		if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
         <table border="0" cellspacing="1">
EOM

			if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

			if($msg ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
           <td>$msg</td>
          </tr>
EOM

			}

			if($rls4 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls4</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt2</td>
          </tr>
EOM

			}

			if($rls5 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt3</td>
          </tr>
EOM

			}

			if($rls6 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt4</td>
          </tr>
EOM

			}

print<<"EOM";
         </table>
EOM

		#���i�����ڍׂ����̂܂ܕ\���B
		}else{
			print"         $msg\n";
		}
	}

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
        </td>
       </tr>
      </table>
EOM

}
##################################################
# item1_ask
# ���i�ē�1�̖₢���킹��ʕ\���B
##################################################
sub item1_ask{

	#[font]���`���B
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls9 ne "" && $rls10 ne ""){

		$detail = "<strong><i>$t1_font1�ڍא���$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1�ڍא���$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1�ڍא���$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1�ڍא���$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
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
	if($dsn14 ne "" && $dsn15 ne ""){$sub  = "$t2_font1<strong><i>$title�Ɋւ��Ĉȉ��̃t�H�[�����₢���킹���������B</i></strong>$t2_font2";}
	if($dsn14 ne "" && $dsn15 eq ""){$sub  = "$t2_font1<strong>$title�Ɋւ��Ĉȉ��̃t�H�[�����₢���킹���������B</strong>$t2_font2";}
	if($dsn14 eq "" && $dsn15 ne ""){$sub  = "$t2_font1<i>$title�Ɋւ��Ĉȉ��̃t�H�[�����₢���킹���������B</i>$t2_font2";}
	if($dsn14 eq "" && $dsn15 eq ""){$sub  = "$t2_font1$title�Ɋւ��Ĉȉ��̃t�H�[�����₢���킹���������B$t2_font2";}

	#[font]���`���B
	if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
	if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font1 = "<font$t_dsn23$t_dsn22>";}
	if($dsn23 ne "" || $dsn22 ne ""){$t3_font2 = "</font>";}

	#���i�ڍ׏����`���B
	if($dsn24 ne "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

	}

	if($dsn24 ne "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 ne ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

	}

	if($dsn24 eq "" && $dsn25 eq ""){

		if($cmt15 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
		}

		if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
		if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
		if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
		if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

	}

	if($cmt15 eq ""){
		#�⑫�������̎��������N�B
		&auto_link;
	}

	#[table]���`���B
	if($dsn7 ne "")       {$t_dsn7        = " bgcolor=\"$dsn7\"";}
	if($dsn3 ne "")       {$t_dsn3        = " border=\"$dsn3\"";}
	if($dsn3 eq "")       {$t_dsn3        = " border=\"0\"";}
	if($dsn6 ne "")       {$t_dsn6        = " bordercolor=\"$dsn6\"";}
	if($dsn4 ne "")       {$t_dsn4        = " cellspacing=\"$dsn4\"";}
	if($dsn4 eq "")       {$t_dsn4        = " cellspacing=\"0\"";}
	if($dsn5 ne "")       {$t_dsn5        = " cellpadding=\"$dsn5\"";}
	if($dsn5 eq "")       {$t_dsn5        = " cellpadding=\"0\"";}

	#[td]���`���B
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	#���i����\���B

print<<"EOM";
      <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5 width="100%">
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
	if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

	#���i�ڍ׏���\���B
	if($msg ne "" || $rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>
EOM

		if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

print<<"EOM";
         <table border="0" cellspacing="1">
EOM

			if($msg ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
           <td>$msg</td>
          </tr>
EOM

			}

			if($rls4 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls4</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt2</td>
          </tr>
EOM

			}

			if($rls5 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt3</td>
          </tr>
EOM

			}

			if($rls6 ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$cmt4</td>
          </tr>
EOM

			}

print<<"EOM";
         </table>
EOM

		#���i�����ڍׂ����̂܂ܕ\���B
		}else{
			print"         $msg\n";
		}
	}

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

	#�₢���킹�t�H�[����\���B

print<<"EOM";
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="title" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$in{'no'}">
         <input type="hidden" name="kind" value="$kind">
         <input type="hidden" name="ask" value="check">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4 cellpadding="2" width="100%">
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�����O(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[0]"> ��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[1]"><br>(��)�R�c ���Y$t3_font2</td>
          </tr>
EOM

	##################################################
	if($ain1 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�t���K�i(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> ��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(��)���}�_ �^���E$t3_font2</td>
          </tr>
EOM

	}elsif($ain1 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�t���K�i$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[2]"> ��<input type="text" name="user_data" size="10" maxlength="100" value="@user_data[3]"><br>(��)���}�_ �^���E$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�X�֔ԍ�(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t3_font2</td>
          </tr>
EOM

	}elsif($ain2 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�X�֔ԍ�$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="3" style="ime-mode:disabled" maxlength="3" value="@user_data[4]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[5]">$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�s���{��(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
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
           $t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�S�s�撬��(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1����ȍ~�̏Z��(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
           (��j�a�J1-1-1<br>
           (��j�a�J1-1-1 **�r��29F �������**** **��<br>
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain3 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�s���{��$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
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
           $t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�S�s�撬��$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="50" maxlength="200" value="@user_data[7]">$t3_font2</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1����ȍ~�̏Z��$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="50" maxlength="200" value="@user_data[8]"><br>
           (��j�a�J1-1-1<br>
           (��j�a�J1-1-1 **�r��29F �������**** **��<br>
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�d�b�ԍ�(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t3_font2</td>
          </tr>
EOM

	}elsif($ain4 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�d�b�ԍ�$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[9]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[10]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[11]">$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�e�`�w�ԍ�(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t3_font2</td>
          </tr>
EOM

	}elsif($ain5 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1�e�`�w�ԍ�$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[12]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[13]"> �| <input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="10" value="@user_data[14]">$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1���[���A�h���X(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
           <br>
           ���m�F�̂��߂ɂ�����x���[���A�h���X����͂��Ă��������B<br>
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain6 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1���[���A�h���X$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[15]"><br>
           <br>
           ���m�F�̂��߂ɂ�����x���[���A�h���X����͂��Ă��������B<br>
           <input type="text" name="user_data" size="40" style="ime-mode:disabled" maxlength="200" value="@user_data[16]">
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1����(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t48_select></option>
           <option value="M"$t49_select>�j</option>
           <option value="F"$t50_select>��</option>
           </select>
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain7 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1����$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t48_select></option>
           <option value="M"$t49_select>�j</option>
           <option value="F"$t50_select>��</option>
           </select>
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1���N����(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1����<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">�N <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">�� <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">��$t3_font2</td>
          </tr>
EOM

	}elsif($ain8 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1���N����$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1����<input type="text" name="user_data" size="4" style="ime-mode:disabled" maxlength="4" value="@user_data[18]">�N <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[19]">�� <input type="text" name="user_data" size="2" style="ime-mode:disabled" maxlength="2" value="@user_data[20]">��$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1����]�̕ԓ����@(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t53_select></option>
           <option value="���[���ɂĕԓ�"$t51_select>���[��</option>
           <option value="�d�b�ɂĕԓ�"$t52_select>�d�b�A��</option>
           </select>
           $t3_font2</td>
          </tr>
EOM

	}elsif($ain9 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1����]�̕ԓ����@ $t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1
           <select name="user_data">
           <option value=""$t53_select></option>
           <option value="���[���ɂĕԓ�"$t51_select>���[��</option>
           <option value="�d�b�ɂĕԓ�"$t52_select>�d�b�A��</option>
           </select>
           $t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1���₢���킹���e(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t3_font2</td>
          </tr>
EOM

	}elsif($ain10 eq "2"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$t1_font1���₢���킹���e$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="40" rows="5">@user_data[22]</textarea>$t3_font2</td>
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
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12(�K�{)$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
          </tr>
EOM

		}

	}elsif($ain11 eq "2"){

		if($ain14 eq "1"){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<input type="text" name="user_data" size="$ain13" value="@user_data[23]">$t3_font2</td>
          </tr>
EOM

		}else{

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$rls12"$t_rls11>$t1_font1$ain12$t1_font2</td>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26>$t3_font1<textarea name="user_data" cols="$ain13" rows="$ain14">@user_data[23]</textarea>$t3_font2</td>
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
        </td>
       </tr>
      </table>
EOM

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
     <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5 width="100%">
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
# item1_search
# ���������B
##################################################
sub item1_search{

	#[font]���`���B
	if($rls8 ne "")               {$t_rls8   = " size=\"$rls8\"";}
	if($rls7 ne "")               {$t_rls7   = " color=\"$rls7\"";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font1 = "<font$t_rls8$t_rls7>";}
	if($rls8 ne "" || $rls7 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls9 ne "" && $rls10 ne ""){

		$detail = "<strong><i>$t1_font1�ڍ�$t1_font2</i></strong>";
		if($rls4 ne ""){$rls4 = "<strong><i>$t1_font1$rls4$t1_font2</i></strong>";}
		if($rls5 ne ""){$rls5 = "<strong><i>$t1_font1$rls5$t1_font2</i></strong>";}
		if($rls6 ne ""){$rls6 = "<strong><i>$t1_font1$rls6$t1_font2</i></strong>";}

	}

	if($rls9 ne "" && $rls10 eq ""){

		$detail = "<strong>$t1_font1�ڍ�$t1_font2</strong>";
		if($rls4 ne ""){$rls4 = "<strong>$t1_font1$rls4$t1_font2</strong>";}
		if($rls5 ne ""){$rls5 = "<strong>$t1_font1$rls5$t1_font2</strong>";}
		if($rls6 ne ""){$rls6 = "<strong>$t1_font1$rls6$t1_font2</strong>";}

	}

	if($rls9 eq "" && $rls10 ne ""){

		$detail = "<i>$t1_font1�ڍ�$t1_font2</i>";
		if($rls4 ne ""){$rls4 = "<i>$t1_font1$rls4$t1_font2</i>";}
		if($rls5 ne ""){$rls5 = "<i>$t1_font1$rls5$t1_font2</i>";}
		if($rls6 ne ""){$rls6 = "<i>$t1_font1$rls6$t1_font2</i>";}

	}

	if($rls9 eq "" && $rls10 eq ""){

		$detail = "$t1_font1�ڍ�$t1_font2";
		if($rls4 ne ""){$rls4 = "$t1_font1$rls4$t1_font2";}
		if($rls5 ne ""){$rls5 = "$t1_font1$rls5$t1_font2";}
		if($rls6 ne ""){$rls6 = "$t1_font1$rls6$t1_font2";}

	}

	#�������[�h���̓G���[�B
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#�G���[��ʂ�\���B
	if($error ne ""){
		&item1_search_error;
	}else{

		#�L�[���[�h�����t�H�[����\���B
		if($rls16 ne "" || $rls18 ne "" || $rls20 ne ""){

			#���͓��e�𐮗��B
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

			if($rls16 ne ""){

				@serch1 = split(/<br>/,$rls16);

				if($word1 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word1">
        <option value="" $select1>$rls15</option>
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

			if($rls18 ne ""){

				@serch2 = split(/<br>/,$rls18);

				if($word2 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word2">
        <option value="" $select1>$rls17</option>
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

			if($rls20 ne ""){

				@serch3 = split(/<br>/,$rls20);

				if($word3 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word3">
        <option value="" $select1>$rls19</option>
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
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td colspan="4"><font size="-1"><strong>�| �������� �|</strong></font></td>
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
        <option value="and" $cond_select1>AND</option>
        <option value="or" $cond_select2>OR</option>
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
		if($rls3 ne ""){$t_rls3 = " cellspacing=\"$rls3\"";}
		if($rls3 eq ""){$t_rls3 = " cellspacing=\"0\"";}

		#[table]��\���B

print<<"EOM";
      <table border="0" cellpadding="0"$t_rls3>
       <tr>
EOM

		#���������������B
		$i = 0;

		#�L�����e���̐����B
		foreach $line(@storycomment){

			local($t_wimg1,$t_himg1,$t_cmt12,$t_comment_width,$t_dsn13,$t_dsn12,$t2_font1,$t2_font2,$t_dsn23,$t_dsn22,$t3_font1,$t3_font2);
			local($t_dsn7,$t_dsn3,$t_dsn6,$t_dsn4,$t_dsn5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn9,$t_dsn10,$t_dsn11);
			local($t_dsn27,$t_dsn26,$t_dsn19,$t_dsn20,$t_dsn21,$t_dsn32,$t_dsn31,$t_dsn29,$t_dsn30,$t_rls11);

			#�L�����e���̕����B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line);

			#�L���\���̈ꎞ��~�v�ہB
			if($cmt8 eq "on"){
				next;
			}

			if($word eq ""){

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

				$line_tmp = "$title,$msg,$cmt2,$cmt3,$cmt4";

				foreach $pair(@pairs){

					$pair =~ s/,/&#44;/g;

					if(index($line_tmp,$pair) >=0){

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

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1<strong><i>$detailName</i></strong>$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1<strong><i>$cmt2</i></strong>$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1<strong><i>$cmt3</i></strong>$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1<strong><i>$cmt4</i></strong>$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}

				}

				if($dsn24 ne "" && $dsn25 eq ""){

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1<strong>$detailName</strong>$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1<strong>$cmt2</strong>$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1<strong>$cmt3</strong>$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1<strong>$cmt4</strong>$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1<strong>$msg</strong>$t3_font2";}

				}

				if($dsn24 eq "" && $dsn25 ne ""){

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1<i>$detailName</i>$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1<i>$cmt2</i>$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1<i>$cmt3</i>$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1<i>$cmt4</i>$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1<i>$msg</i>$t3_font2";}

				}

				if($dsn24 eq "" && $dsn25 eq ""){

					if($cmt15 eq "on"){
						$msg =~ s/&lt;br&gt;/\n/g;
					}

					$detail2 = "$t3_font1$detailName$t3_font2";
					if($cmt2 ne ""){$cmt2 = "$t3_font1$cmt2$t3_font2";}
					if($cmt3 ne ""){$cmt3 = "$t3_font1$cmt3$t3_font2";}
					if($cmt4 ne ""){$cmt4 = "$t3_font1$cmt4$t3_font2";}
					if($msg ne "") {$msg  = "$t3_font1$msg$t3_font2";}

				}

				if($k >= $rls2){
					print"       </tr>\n";
					print"       <tr>\n";
					$k = 0;
				}

				$k++;

				if($cmt15 eq ""){
					#�⑫�������̎��������N�B
					&auto_link;
				}

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

				#[table]��\���B

				if($location eq "up" && $ask6 eq "on" && $ask7 ne ""){

print<<"EOM";
        <td valign="top">
         <form action="$ask7\/$cgi_host\/$site_folder\/siteup.cgi" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

				}else{

print<<"EOM";
        <td valign="top">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="ask" value="on">
         <input type="hidden" name="item" value="$title">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="no" value="$no">
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
EOM

				}

				#[td]���`���B
				if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
				if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
				if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
				if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
				if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
				if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

				#���i����\���B
				if($img1 eq ""){
					print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11>$cmt1$sub</td>\n";
				}else{
					print"           <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 colspan=\"2\">$cmt1$sub</td>\n";
				}

print<<"EOM";
          </tr>
EOM

				if($rls4 ne "" || $rls5 ne "" || $rls6 ne "" || $msg ne "" || $img1 ne "" ||  $img2 ne "" || $img3 ne "" || $rls13 eq "on"){

print<<"EOM";
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

					#���i�ڍ׏���\���B
					if($rls4 ne "" || $rls5 ne "" || $rls6 ne ""){

						if($rls11 ne ""){$t_rls11 = " bgcolor=\"$rls11\"";}

print<<"EOM";
            <table border="0" cellspacing="1">
EOM

						if($rls4 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls4</td>
              <td>$cmt2</td>
             </tr>
EOM

						}

						if($rls5 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls5</td>
              <td>$cmt3</td>
             </tr>
EOM

						}

						if($rls6 ne ""){

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$rls6</td>
              <td>$cmt4</td>
             </tr>
EOM

						}

print<<"EOM";
             <tr>
              <td background="$page_imgdir/$rls12"$t_rls11 nowrap>$detail</td>
EOM

						#���i�ڍ׃����N��\���B
						if($msg ne "" || $img2 ne "" || $img3 ne ""){
							print"              <td><a href=\"$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no\">$detail2</a></td>\n";
						}else{
							print"              <td> </td>\n";
						}

print<<"EOM";
             </tr>
            </table>
EOM

					}else{

print<<"EOM";
            <table border="0" cellspacing="1">
EOM

						#���i�����ڍׂ����̂܂ܕ\���B
						if($msg ne ""){

print<<"EOM";
             <tr>
              <td>$msg</td>
             </tr>
EOM

						}

						#���i�����ڍׂ�\���B
						if($img2 ne "" || $img3 ne ""){

print<<"EOM";
             <tr>
              <td><a href="$script?&category=$in{'category'}&page=$in{'page'}&view=$view&detail=on&no=$no">$detail2</a></td>
             </tr>
EOM

						}

print<<"EOM";
            </table>
EOM

					}

					#�₢���킹�{�^����\���B
					if($rls13 eq "on"){
						print"            <div align=\"center\"><input type=\"submit\" value=\"$rls14\"></div>\n";
					}

print<<"EOM";
           </td>
          </tr>
EOM

				}

print<<"EOM";
         </table>
         </form>
        </td>
EOM

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
# item1_search_error
# �G���[�����B
##################################################
sub item1_search_error{

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
