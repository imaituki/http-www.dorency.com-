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
# list1
# ���X�g1�̋L���\���B
##################################################
sub list1{

	#1�y�[�W�ɕ\������L���������B(���ݒ�̏ꍇ��500���w��)
	if($rls23 ne ""){
		$p_view = $rls23;
	}else{
		$p_view = "500";
	}

	#�����t�H�[���\���B
	if($rls32 ne ""){

		#�L�[���[�h�����t�H�[����\���B
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

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

			if($rls27 ne ""){

				@serch1 = split(/<br>/,$rls27);

print<<"EOM";
        <td>
        <select name="word1">
        <option value="">$rls26</option>
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

			if($rls29 ne ""){

				@serch2 = split(/<br>/,$rls29);

print<<"EOM";
        <td>
        <select name="word2">
        <option value="">$rls28</option>
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

			if($rls31 ne ""){

				@serch3 = split(/<br>/,$rls31);

print<<"EOM";
        <td>
        <select name="word3">
        <option value="">$rls30</option>
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

	#[font]���`���B
	if($rls17 ne "")                {$t_rls17  = " size=\"$rls17\"";}
	if($rls16 ne "")                {$t_rls16  = " color=\"$rls16\"";}
	if($rls17 ne "" || $rls16 ne ""){$t1_font1 = "<font$t_rls17$t_rls16>";}
	if($rls17 ne "" || $rls16 ne ""){$t1_font2 = "</font>";}

	#�\�����ڂ��`���B
	if($rls18 ne "" && $rls19 ne ""){

		$rls9 = "$t1_font1<strong><i>$rls9</i></strong>$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
	}

	if($rls18 ne "" && $rls19 eq ""){

		$rls9 = "$t1_font1<strong>$rls9</strong>$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1<strong>$rls11</strong>$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1<strong>$rls13</strong>$t1_font2";}
	}

	if($rls18 eq "" && $rls19 ne ""){

		$rls9 = "$t1_font1<i>$rls9</i>$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1<i>$rls11</i>$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1<i>$rls13</i>$t1_font2";}
	}

	if($rls18 eq "" && $rls19 eq ""){

		$rls9 = "$t1_font1$rls9$t1_font2";
		if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
		if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
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
	if($rls1 ne ""){$t_rls1 = " width=\"$rls1\"";}
	if($rls2 ne ""){$t_rls2 = " height=\"$rls2\"";}

	#[td]���`���B
	if($rls21 ne ""){$t_rls21 = " bgcolor=\"$rls21\"";}
	if($rls20 ne ""){$t_rls20 = " bordercolor=\"$rls20\"";}
	if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
	if($rls15 ne ""){$t_rls15 = " height=\"$rls15\"";}

	if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}
	if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}

	#���X�g��\���B

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls22"$t_rls21$t_rls20$t_rls10$t_rls15 align="center" valign="middle">$rls9</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls12$t_rls15 align=\"center\" valign=\"middle\">$rls11</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls14$t_rls15 align=\"center\" valign=\"middle\">$rls13</td>\n";}

print<<"EOM";
       </tr>
EOM

	#�L�����e��񐔂̏������B
	$i = 0;

	#�y�[�W���O�̏������B
	$j = 0;

	#�L�����e���̐����B
	foreach (@storycomment){

		local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_cmt3,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
		local($t_dsn8,$t_dsn7,$t_cmt5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20);

		#�L�����e���̕����B
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#�L���\���̈ꎞ��~�v�ہB
		if($cmt6 eq "on"){
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

		#���e�\���B
		&list1_view;

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

			if($rls24 ne ""){
				$backName = $rls24;
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

			if($rls25 ne ""){
				$nextName = $rls25;
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
# list1_search
# ���X�g1�̌��������B
##################################################
sub list1_search{

	#�������[�h�����̓G���[�B
	if($in{'word'} eq "" && $in{'word1'} eq "" && $in{'word2'} eq "" && $in{'word3'} eq ""){
		$error = 1;
	}

	#�G���[��ʕ\���B
	if($error ne ""){
		&errorSearch;
	}else{

		#�L�[���[�h�����t�H�[����\���B
		if($rls27 ne "" || $rls29 ne "" || $rls31 ne ""){

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

		#[font]���`���B
		if($rls17 ne "")                {$t_rls17  = " size=\"$rls17\"";}
		if($rls16 ne "")                {$t_rls16  = " color=\"$rls16\"";}
		if($rls17 ne "" || $rls16 ne ""){$t1_font1 = "<font$t_rls17$t_rls16>";}
		if($rls17 ne "" || $rls16 ne ""){$t1_font2 = "</font>";}

		#�\�����ڂ��`���B
		if($rls18 ne "" && $rls19 ne ""){

			$rls9 = "$t1_font1<strong><i>$rls9</i></strong>$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1<strong><i>$rls11</i></strong>$t1_font2";}
		}

		if($rls18 ne "" && $rls19 eq ""){

			$rls9 = "$t1_font1<strong>$rls9</strong>$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1<strong>$rls11</strong>$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1<strong>$rls13</strong>$t1_font2";}
		}

		if($rls18 eq "" && $rls19 ne ""){

			$rls9 = "$t1_font1<i>$rls9</i>$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1<i>$rls11</i>$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1<i>$rls13</i>$t1_font2";}
		}

		if($rls18 eq "" && $rls19 eq ""){

			$rls9 = "$t1_font1$rls9$t1_font2";
			if($rls11 ne ""){$rls11 = "$t1_font1$rls11$t1_font2";}
			if($rls13 ne ""){$rls13 = "$t1_font1$rls13$t1_font2";}
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
		if($rls1 ne ""){$t_rls1 = " width=\"$rls1\"";}
		if($rls2 ne ""){$t_rls2 = " height=\"$rls2\"";}

		#[td]���`���B
		if($rls21 ne ""){$t_rls21 = " bgcolor=\"$rls21\"";}
		if($rls20 ne ""){$t_rls20 = " bordercolor=\"$rls20\"";}
		if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
		if($rls15 ne ""){$t_rls15 = " height=\"$rls15\"";}

		if($rls12 ne ""){$t_rls12 = " width=\"$rls12\"";}
		if($rls14 ne ""){$t_rls14 = " width=\"$rls14\"";}

		#���X�g��\���B

print<<"EOM";
      <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
       <tr>
        <td background="$page_imgdir/$rls22"$t_rls21$t_rls20$t_rls10$t_rls15 align="center" valign="middle">$rls9</td>
EOM

		if($rls11 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls12$t_rls15 align=\"center\" valign=\"middle\">$rls11</td>\n";}
		if($rls13 ne ""){print"        <td background=\"$page_imgdir/$rls22\"$t_rls21$t_rls20$t_rls14$t_rls15 align=\"center\" valign=\"middle\">$rls13</td>\n";}

print<<"EOM";
       </tr>
EOM

		#�L�����e��񐔂̏������B
		$i = 0;

		#�L�����e���̐����B
		foreach (@storycomment){

			local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_cmt3,$t_dsn13,$t_dsn12,$t3_font1,$t3_font2,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
			local($t_dsn8,$t_dsn7,$t_cmt5,$t_dsn1,$t_dsn2,$t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20);

			#�L�����e���̕����B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

			#�L���\���̈ꎞ��~�v�ہB
			if($cmt6 eq "on"){
				next;
			}

			if($word eq ""){

				$flag = 0;

				if($word1 ne "" && $word2 eq "" && $word3 eq ""){if($cmt7 eq "$word1")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 eq ""){if($cmt7 eq "$word1" && $cmt8 eq "$word2")                      {$flag = 1;}}
				if($word1 ne "" && $word2 ne "" && $word3 ne ""){if($cmt7 eq "$word1" && $cmt8 eq "$word2" && $cmt9 eq "$word3"){$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 eq ""){if($cmt8 eq "$word2")                                            {$flag = 1;}}
				if($word1 eq "" && $word2 ne "" && $word3 ne ""){if($cmt8 eq "$word2" && $cmt9 eq "$word3")                      {$flag = 1;}}
				if($word1 eq "" && $word2 eq "" && $word3 ne ""){if($cmt9 eq "$word3")                                            {$flag = 1;}}
				if($word1 ne "" && $word2 eq "" && $word3 ne ""){if($cmt7 eq "$word1" && $cmt9 eq "$word3")                      {$flag = 1;}}

			}else{

				$flag = 0;

				$line_tmp = "$title,$msg,$cmt4";

				#�������s�B
				foreach $pair(@pairs){

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

			#���������Ƀ}�b�`���Ă����ꍇ�B
			if($flag == 1){

				$i++;

				#���e�\���B
				&list1_view;

			}
		}

print<<"EOM";
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
# list1_view
# ���e�\���B
##################################################
sub list1_view{

	local($t_dsn4,$t_dsn3,$t2_font1,$t2_font2,$t_cmt3,$t_dsn13,$t_dsn12);
	local($t3_font1,$t3_font2,$t_dsn22,$t_dsn21,$t4_font1,$t4_font2);
	local($t_dsn8,$t_dsn7,$t_cmt5,$t_dsn1,$t_dsn2,$t_dsn2);
	local($t_dsn17,$t_dsn16,$t_dsn10,$t_dsn11,$t_dsn11);
	local($t_dsn26,$t_dsn25,$t_dsn19,$t_dsn20,$t_dsn20);

	#�摜���`���B
	if($cmt1 ne ""){$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}

	#[font]���`���B
	if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
	if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font1 = "<font$t_dsn4$t_dsn3>";}
	if($dsn4 ne "" || $dsn3 ne ""){$t2_font2 = "</font>";}

	#�����������`���B
	if($dsn5 ne "" && $dsn6 ne ""){$title = "$t2_font1<strong><i>$title</i></strong>$t2_font2";}
	if($dsn5 ne "" && $dsn6 eq ""){$title = "$t2_font1<strong>$title</strong>$t2_font2";}
	if($dsn5 eq "" && $dsn6 ne ""){$title = "$t2_font1<i>$title</i>$t2_font2";}
	if($dsn5 eq "" && $dsn6 eq ""){$title = "$t2_font1$title$t2_font2";}

	#�^�C�g�������N����`���B
	if($cmt2 ne ""){
		if($cmt3 ne ""){$t_cmt3 = " target=\"_blank\"";}
		$title = "$cmt1<a href=\"$cmt2\"$t_cmt3>$title</a>";
	}elsif($cmt2 eq ""){
		$title = "$cmt1$title";
	}

	#�⑫���������`���B
	if($msg ne ""){

		#[font]���`���B
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

		if($cmt10 eq "on"){
			$msg =~ s/&lt;br&gt;/\n/g;
			$msg =~ s/&#44;/,/g;
		}

		#�⑫���������`���B
		if($dsn14 ne "" && $dsn15 ne ""){$msg = "$t3_font1<strong><i>$msg</i></strong>$t3_font2";}
		if($dsn14 ne "" && $dsn15 eq ""){$msg = "$t3_font1<strong>$msg</strong>$t3_font2";}
		if($dsn14 eq "" && $dsn15 ne ""){$msg = "$t3_font1<i>$msg</i>$t3_font2";}
		if($dsn14 eq "" && $dsn15 eq ""){$msg = "$t3_font1$msg$t3_font2";}
	}

	#�t���[���ڕ��͂��`���B
	if($cmt4 ne ""){

		#[font]���`���B
		if($dsn22 ne "")                {$t_dsn22  = " size=\"$dsn22\"";}
		if($dsn21 ne "")                {$t_dsn21  = " color=\"$dsn21\"";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font1 = "<font$t_dsn22$t_dsn21>";}
		if($dsn22 ne "" || $dsn21 ne ""){$t4_font2 = "</font>";}

		if($cmt11 eq "on"){
			$cmt4 =~ s/&lt;br&gt;/\n/g;
			$cmt4 =~ s/&#44;/,/g;
		}

		#�t���[���ڕ��͂��`���B
		if($dsn23 ne "" && $dsn24 ne ""){$cmt4 = "$t4_font1<strong><i>$cmt4</i></strong>$t4_font2";}
		if($dsn23 ne "" && $dsn24 eq ""){$cmt4 = "$t4_font1<strong>$cmt4</strong>$t4_font2";}
		if($dsn23 eq "" && $dsn24 ne ""){$cmt4 = "$t4_font1<i>$cmt4</i>$t4_font2";}
		if($dsn23 eq "" && $dsn24 eq ""){$cmt4 = "$t4_font1$cmt4$t4_font2";}
	}

	if($cmt10 eq ""){
		#�⑫�������̎��������N�B
		&auto_link;
	}

	if($cmt11 eq ""){
		#�⑫�������̎��������N�B
		&auto_cmt4;
	}

	#[td]���`���B
	if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
	if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
	if($cmt5 ne ""){$t_cmt5 = " height=\"$cmt5\"";}
	if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
	if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
	if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

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

	#���X�g����\���B

print<<"EOM";
       <tr>
        <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_rls10$t_cmt5$t_dsn1$t_dsn2>$title</td>
EOM

	if($rls11 ne ""){print"        <td background=\"$page_imgdir/$dsn18\"$t_dsn17$t_dsn16$t_rls12$t_cmt5$t_dsn10$t_dsn11>$msg</td>\n";}
	if($rls13 ne ""){print"        <td background=\"$page_imgdir/$dsn27\"$t_dsn26$t_dsn25$t_rls14$t_cmt5$t_dsn19$t_dsn20>$cmt4</td>\n";}

print<<"EOM";
       </tr>
EOM

}

1;
