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
# use2
# �ėp2�̋L���\���B
##################################################
sub use2{

	#1�y�[�W�ɕ\������L���������B(���ݒ�̏ꍇ��500���w��)
	if($rls1 ne ""){
		$p_view = $rls1;
	}else{
		$p_view = "500";
	}

	#�����t�H�[���\���B
	if($rls4 ne ""){

		#�L�[���[�h�����t�H�[����\���B
		if($rls8 ne "" || $rls10 ne "" || $rls12 ne ""){


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

			if($rls8 ne ""){

				@serch1 = split(/<br>/,$rls8);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls7</option>
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

			if($rls10 ne ""){

				@serch2 = split(/<br>/,$rls10);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls9</option>
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

			if($rls12 ne ""){

				@serch3 = split(/<br>/,$rls12);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls11</option>
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

		#�L�����e���̕����B
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#�L���\���̈ꎞ��~�v�ہB
		if($cmt7 eq "on"){
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

		if($k >= $rls2){
			print"       </tr>\n";
			print"       <tr>\n";
			$k = 0;
		}

		$k++;

		#���e�\���B
		&use2_view;
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

			if($rls5 ne ""){
				$backName = $rls5;
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

			if($rls6 ne ""){
				$nextName = $rls6;
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
# use2_search
# �ėp2�̌��������B
##################################################
sub use2_search{

	#�������[�h�����̓G���[�B
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#�G���[��ʕ\���B
	if($error ne ""){
		&errorSearch;
	}else{

		#�L�[���[�h�����t�H�[����\���B
		if($rls8 ne "" || $rls10 ne "" || $rls12 ne ""){

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

			if($rls8 ne ""){

				@serch1 = split(/<br>/,$rls8);

				if($word1 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word1">
        <option value="" $select1>$rls7</option>
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

			if($rls10 ne ""){

				@serch2 = split(/<br>/,$rls10);

				if($word2 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word2">
        <option value="" $select1>$rls9</option>
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

			if($rls12 ne ""){

				@serch3 = split(/<br>/,$rls12);

				if($word3 eq ""){
					$select1 = "selected";
				}else{
					$select1 = "";
				}

print<<"EOM";
        <td>
        <select name="word3">
        <option value="" $select1>$rls11</option>
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

		}else{

			#���͓��e�𐮗��B
			$cond  = $in{'cond'};
			$word  = $in{'word'};
			$word  =~ s/�@/ /g;
			$word  =~ s/\t/ /g;
			@pairs = split(/ /,$word);

			#�����t�H�[����Ԃ�ێ��B
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

		#�L�����e��񐔂̏������B
		$i = 0;

		#�L�����e���̐����B
		foreach $line(@storycomment){

			#�L�����e���̕����B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$line);

			#�L���\���̈ꎞ��~�v�ہB
			if($cmt7 eq "on"){
				next;
			}

			if($word eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt8 eq "$word1")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt8 eq "$word1" && $cmt9 eq "$word2")                      {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt8 eq "$word1" && $cmt9 eq "$word2" && $cmt10 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt9 eq "$word2")                                            {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt9 eq "$word2" && $cmt10 eq "$word3")                      {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt10 eq "$word3")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt8 eq "$word1" && $cmt10 eq "$word3")                      {$flag = 1;}}

			}else{

				$flag = 0;

				$line_tmp = "$title,$msg";

				#�������s�B
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

			#���������Ƀ}�b�`���Ă����ꍇ�B
			if($flag == 1){

				$i++;

				if($k >= $rls2){
					print"       </tr>\n";
					print"       <tr>\n";
					$k = 0;
				}

				$k++;

				#���e�\���B
				&use2_view;
			}
		}

print<<"EOM";
       </tr>
      </table>
EOM

		#�������ʂ̃��b�Z�[�W��\���B
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
# use2_view
# ���e�\���B
##################################################
sub use2_view{

	local($t_wimg1,$t_himg1,$t_cmt11,$t_cmt4,$t_dsn13,$t_dsn12,$t1_font1,$t1_font2,$t_dsn23,$t_dsn22,$t2_font1,$t2_font2);
	local($t_dsn7,$t_dsn3,$t_dsn6,$t_dsn4,$t_dsn5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn9,$t_dsn10,$t_dsn11,$t_dsn27,$t_dsn26);
	local($t_dsn19,$t_dsn20,$t_dsn21,$t_dsn33,$t_dsn32,$t_dsn29,$t_dsn30,$t_dsn31);

	#�\�������`���B
	if($wimg1 ne ""){$t_wimg1 = " width=\"$wimg1\"";}
	if($himg1 ne ""){$t_himg1 = " height=\"$himg1\"";}

	#�摜���`���B
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

				#�摜�����N����`���B
				if($cmt5 ne ""){
					my $t_cmt6 = "";
					if($cmt6 ne ""){$t_cmt6 = " target=\"_blank\"";}
					$img1 = "<a href=\"$cmt5\"$t_cmt6><img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11 border=\"0\"></a>";
				}else{
					$img1 = "<img src=\"$page_imgdir/$img1\"$t_wimg1$t_himg1$t_cmt11>";
				}
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

	#�^�C�g���摜���`���B
	if($cmt1 ne ""){

		#�����N����`���B
		if($cmt3 ne ""){
			if($cmt4 ne ""){$t_cmt4 = " target=\"_blank\"";}
			$cmt1 = "<a href=\"$cmt3\"$t_cmt4><img src=\"$page_imgdir/$cmt1\" border=\"0\" alt=\"$title\"></a>";
		}elsif($cmt3 eq ""){
			$cmt1 = "<img src=\"$page_imgdir/$cmt1\" border=\"0\" alt=\"$title\">";
		}

		#�^�C�g���������B
		$title = "$cmt1";
	}elsif($cmt1 eq ""){

		#�A�C�R���摜���`���B
		if($cmt2 ne ""){$cmt2 = "<img src=\"$page_imgdir/$cmt2\" align=\"absmiddle\">";}

		#[font]���`���B
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t1_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t1_font2 = "</font>";}

		#���͂��`���B
		if($dsn14 ne "" && $dsn15 ne ""){$title = "$t1_font1<strong><i>$title</i></strong>$t1_font2";}
		if($dsn14 ne "" && $dsn15 eq ""){$title = "$t1_font1<strong>$title</strong>$t1_font2";}
		if($dsn14 eq "" && $dsn15 ne ""){$title = "$t1_font1<i>$title</i>$t1_font2";}
		if($dsn14 eq "" && $dsn15 eq ""){$title = "$t1_font1$title$t1_font2";}

		#�����N����`���B
		if($cmt3 ne ""){
			if($cmt4 ne ""){$t_cmt4 = " target=\"_blank\"";}
			$title = "$cmt2<a href=\"$cmt3\"$t_cmt4>$title</a>";
		}elsif($cmt3 eq ""){
			$title = "$cmt2$title";
		}
	}

	#�⑫���������`���B
	if($msg ne ""){

		#[font]���`���B
		if($dsn23 ne "")                {$t_dsn23  = " size=\"$dsn23\"";}
		if($dsn22 ne "")                {$t_dsn22  = " color=\"$dsn22\"";}
		if($dsn23 ne "" || $dsn22 ne ""){$t2_font1 = "<font$t_dsn23$t_dsn22>";}
		if($dsn23 ne "" || $dsn22 ne ""){$t2_font2 = "</font>";}

		if($cmt12 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
			$msg =~ s/&#44;/,/g;
		}

		#�⑫���������`���B
		if($dsn24 ne "" && $dsn25 ne ""){$msg = "$t2_font1<strong><i>$msg</i></strong>$t2_font2";}
		if($dsn24 ne "" && $dsn25 eq ""){$msg = "$t2_font1<strong>$msg</strong>$t2_font2";}
		if($dsn24 eq "" && $dsn25 ne ""){$msg = "$t2_font1<i>$msg</i>$t2_font2";}
		if($dsn24 eq "" && $dsn25 eq ""){$msg = "$t2_font1$msg$t2_font2";}
	}

	if($cmt12 eq ""){
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

	#[td]���`���B
	if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
	if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
	if($dsn9 ne "") {$t_dsn9  = " height=\"$dsn9\"";}
	if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
	if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
	if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

	if($dsn27 ne ""){$t_dsn27 = " bgcolor=\"$dsn27\"";}
	if($dsn26 ne ""){$t_dsn26 = " bordercolor=\"$dsn26\"";}
	if($dsn19 ne ""){$t_dsn19 = " height=\"$dsn19\"";}
	if($dsn20 ne ""){$t_dsn20 = " align=\"$dsn20\"";}
	if($dsn21 ne ""){$t_dsn21 = " valign=\"$dsn21\"";}
	if($dsn21 eq ""){$t_dsn21 = " valign=\"top\"";}

	if($dsn33 ne ""){$t_dsn33 = " bgcolor=\"$dsn33\"";}
	if($dsn32 ne ""){$t_dsn32 = " bordercolor=\"$dsn32\"";}
	if($dsn29 ne ""){$t_dsn29 = " height=\"$dsn29\"";}
	if($dsn30 ne ""){$t_dsn30 = " align=\"$dsn30\"";}
	if($dsn31 ne ""){$t_dsn31 = " valign=\"$dsn31\"";}
	if($dsn31 eq ""){$t_dsn31 = " valign=\"top\"";}

print<<"EOM";
        <td valign=\"top\">
EOM

	#�摜������\���B
	if($img1 eq ""){

print<<"EOM";
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
           <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 width="100%">$title</td>
          </tr>
EOM

		#���͂�\���B
		if($msg ne ""){

print<<"EOM";
          <tr>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26$t_dsn19$t_dsn20$t_dsn21 width="100%">$msg</td>
          </tr>
EOM

		}

print<<"EOM";
         </table>
EOM

	}

	#�摜�L���\���B
	if($img1 ne "" && $msg eq ""){

print<<"EOM";
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
           <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 width="100%">$title</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$dsn34"$t_dsn33$t_dsn32$t_dsn29$t_dsn30$t_dsn31 width="100%">$img1</td>
          </tr>
         </table>
EOM

	}

	#���͂�\���B
	if($img1 ne "" && $msg ne ""){

print<<"EOM";
         <table background="$page_imgdir/$dsn8"$t_dsn7$t_dsn3$t_dsn6$t_dsn4$t_dsn5$t_dsn1$t_dsn2>
          <tr>
           <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_dsn9$t_dsn10$t_dsn11 width="100%">$title</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$dsn34"$t_dsn33$t_dsn32$t_dsn29$t_dsn30$t_dsn31 width="100%">$img1</td>
          </tr>
          <tr>
           <td background="$page_imgdir/$dsn28"$t_dsn27$t_dsn26$t_dsn19$t_dsn20$t_dsn21 width="100%">$msg</td>
          </tr>
         </table>
EOM

	}

print<<"EOM";
        </td>
EOM

}

1;
