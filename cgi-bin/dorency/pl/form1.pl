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
# form1
# �t�H�[��1�̋L���̕\�����s���B
##################################################
sub form1{

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

	#[table]��\���B

print<<"EOM";
     <form action="$script" method="post" style="margin-bottom:0">
     <input type="hidden" name="form" value="check">
     <input type="hidden" name="category" value="$in{'category'}">
     <input type="hidden" name="page" value="$in{'page'}">
     <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
EOM

	#�p�����[�^�ԍ��Z�b�g�B
	$n = 0;

	#�L�����e���̐����B
	foreach (@storycomment){

		if($n < 10){
			$i = "00" . $n;
		}elsif($n < 100){
			$i = "0" . $n;
		}else{
			$i = $n;
		}

		local($t_dsn4,$t_dsn3,$t1_font1,$t1_font2,$t_dsn13,$t_dsn12,$t2_font1,$t2_font2);
		local($t_dsn8,$t_dsn7,$t_rls9,$t_cmt7,$t_dsn1,$t_dsn2);
		local($t_dsn17,$t_dsn16,$t_rls10,$t_cmt7,$t_dsn10,$t_dsn11);
		local($t_dsn13,$t_dsn12,$t3_font1,$t3_font2);

		#�L�����e���𕪊��B
		local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$times) = split(/,/,$_);

		#�L���\���̈ꎞ��~�v�ہB
		if($cmt8 eq "on"){
			next;
		}

		#�K�{�ݒ�B
		if($cmt6 ne ""){
			if($cmt2 eq "checkbox"){$need = "";}
			elsif($cmt2 eq "radio"){$need = "";}
			else                   {$need = "�i�K�{�j";}
		}else{
			$need = "";
		}

		#�摜���`���B
		if($cmt1 ne ""){$cmt1 = "<img src=\"$page_imgdir/$cmt1\" align=\"absmiddle\">";}

		#[font]���`���B
		if($dsn4 ne "")               {$t_dsn4   = " size=\"$dsn4\"";}
		if($dsn3 ne "")               {$t_dsn3   = " color=\"$dsn3\"";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font1 = "<font$t_dsn4$t_dsn3>";}
		if($dsn4 ne "" || $dsn3 ne ""){$t1_font2 = "</font>";}

		#�����������`���B
		if($dsn5 ne "" && $dsn6 ne ""){$sub = "$t1_font1<strong><i>$title$need</i></strong>$t1_font2";}
		if($dsn5 ne "" && $dsn6 eq ""){$sub = "$t1_font1<strong>$title$need</strong>$t1_font2";}
		if($dsn5 eq "" && $dsn6 ne ""){$sub = "$t1_font1<i>$title$need</i>$t1_font2";}
		if($dsn5 eq "" && $dsn6 eq ""){$sub = "$t1_font1$title$need$t1_font2";}

		#�⑫���������`���B
		if($msg ne ""){

			#[font]���`���B
			if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
			if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
			if($dsn13 ne "" || $dsn12 ne ""){$t2_font1 = "<font$t_dsn13$t_dsn12>";}
			if($dsn13 ne "" || $dsn12 ne ""){$t2_font2 = "</font>";}

			#�⑫���������`���B
			if($dsn14 ne "" && $dsn15 ne ""){$msg = "$t2_font1<strong><i>$msg</i></strong>$t2_font2";}
			if($dsn14 ne "" && $dsn15 eq ""){$msg = "$t2_font1<strong>$msg</strong>$t2_font2";}
			if($dsn14 eq "" && $dsn15 ne ""){$msg = "$t2_font1<i>$msg</i>$t2_font2";}
			if($dsn14 eq "" && $dsn15 eq ""){$msg = "$t2_font1$msg$t2_font2";}
		}

		#�⑫�������̎��������N�B
		&auto_link;

		#[td]���`���B
		if($dsn8 ne ""){$t_dsn8 = " bgcolor=\"$dsn8\"";}
		if($dsn7 ne ""){$t_dsn7 = " bordercolor=\"$dsn7\"";}
		if($rls9 ne ""){$t_rls9 = " width=\"$rls9\"";}
		if($cmt7 ne ""){$t_cmt7 = " height=\"$cmt7\"";}
		if($dsn1 ne ""){$t_dsn1 = " align=\"$dsn1\"";}
		if($dsn2 ne ""){$t_dsn2 = " valign=\"$dsn2\"";}
		if($dsn2 eq ""){$t_dsn2 = " valign=\"top\"";}

		if($dsn17 ne ""){$t_dsn17 = " bgcolor=\"$dsn17\"";}
		if($dsn16 ne ""){$t_dsn16 = " bordercolor=\"$dsn16\"";}
		if($rls10 ne ""){$t_rls10 = " width=\"$rls10\"";}
		if($cmt7 ne "") {$t_cmt7  = " height=\"$cmt7\"";}
		if($dsn10 ne ""){$t_dsn10 = " align=\"$dsn10\"";}
		if($dsn11 ne ""){$t_dsn11 = " valign=\"$dsn11\"";}
		if($dsn11 eq ""){$t_dsn11 = " valign=\"top\"";}

		#[font]���`���B
		if($dsn13 ne "")                {$t_dsn13  = " size=\"$dsn13\"";}
		if($dsn12 ne "")                {$t_dsn12  = " color=\"$dsn12\"";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font1 = "<font$t_dsn13$t_dsn12>";}
		if($dsn13 ne "" || $dsn12 ne ""){$t3_font2 = "</font>";}

print<<"EOM";
      <tr>
       <td background="$page_imgdir/$dsn9"$t_dsn8$t_dsn7$t_rls9$t_cmt7$t_dsn1$t_dsn2>$cmt1$sub</td>
       <td background="$page_imgdir/$dsn18"$t_dsn17$t_dsn16$t_rls10$t_cmt7$t_dsn10$t_dsn11>$t3_font1
EOM

		#���͗����[�Z��]��\���B
		if($cmt2 eq "address"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       �X�֔ԍ�<br>
       <input type="text" name="$cmt6$i$title" size="3" style="ime-mode:disabled" maxlength="3" value="">
       <input type="hidden" name="$cmt6$i$title" value="-">-
       <input type="text" name="$cmt6$i$title" size="4" style="ime-mode:disabled" maxlength="4" value=""><br>
       <input type="hidden" name="$cmt6$i$title" value=" ">
       �s���{��<br>
       <select name="$cmt6$i$title">
       <option></option>
       <option value="�k�C��">�k�C��</option>
       <option value="�X��">�X��</option>
       <option value="��茧">��茧</option>
       <option value="�{�錧">�{�錧</option>
       <option value="�H�c��">�H�c��</option>
       <option value="�R�`��">�R�`��</option>
       <option value="������">������</option>
       <option value="��錧">��錧</option>
       <option value="�Ȗ،�">�Ȗ،�</option>
       <option value="�Q�n��">�Q�n��</option>
       <option value="��ʌ�">��ʌ�</option>
       <option value="��t��">��t��</option>
       <option value="�����s">�����s</option>
       <option value="�_�ސ쌧">�_�ސ쌧</option>
       <option value="�R����">�R����</option>
       <option value="�É���">�É���</option>
       <option value="���쌧">���쌧</option>
       <option value="�V����">�V����</option>
       <option value="�x�R��">�x�R��</option>
       <option value="�ΐ쌧">�ΐ쌧</option>
       <option value="���䌧">���䌧</option>
       <option value="�򕌌�">�򕌌�</option>
       <option value="���m��">���m��</option>
       <option value="�O�d��">�O�d��</option>
       <option value="���ꌧ">���ꌧ</option>
       <option value="���s�{">���s�{</option>
       <option value="���{">���{</option>
       <option value="���Ɍ�">���Ɍ�</option>
       <option value="�ޗǌ�">�ޗǌ�</option>
       <option value="�a�̎R��">�a�̎R��</option>
       <option value="���挧">���挧</option>
       <option value="������">������</option>
       <option value="���R��">���R��</option>
       <option value="�L����">�L����</option>
       <option value="�R����">�R����</option>
       <option value="������">������</option>
       <option value="���쌧">���쌧</option>
       <option value="���Q��">���Q��</option>
       <option value="���m��">���m��</option>
       <option value="������">������</option>
       <option value="���ꌧ">���ꌧ</option>
       <option value="���茧">���茧</option>
       <option value="�F�{��">�F�{��</option>
       <option value="�啪��">�啪��</option>
       <option value="�{�茧">�{�茧</option>
       <option value="��������">��������</option>
       <option value="���ꌧ">���ꌧ</option>
       </select><br>
       <input type="hidden" name="$cmt6$i$title" value=" ">
       �s�����ȉ�<br>
       <input type="text" name="$cmt6$i$title" size="60" maxlength="200" value="">
EOM

		}

		#���͗����[�N�����^�C�v�i�N���j]��\���B
		if($cmt2 eq "day1"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <select name="$cmt6$i$title">
       <option value="����">����</option>
       <option value="���a">���a</option>
       <option value="�吳">�吳</option>
       <option value="����">����</option>
       </select>
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">�N
       <input type="hidden" name="$cmt6$i$title" value="�N">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">��
       <input type="hidden" name="$cmt6$i$title" value="��">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">��
       <input type="hidden" name="$cmt6$i$title" value="��">
EOM

		}

		#���͗����[�N�����^�C�v�i����j]��\���B
		if($cmt2 eq "day2"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       ����<input type="hidden" name="$cmt6$i$title" value="����">
       <input type="text" size="4" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="4" value="">�N
       <input type="hidden" name="$cmt6$i$title" value="�N">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">��
       <input type="hidden" name="$cmt6$i$title" value="��">
       <input type="text" size="2" name="$cmt6$i$title" style="ime-mode:disabled" maxlength="2" value="">��
       <input type="hidden" name="$cmt6$i$title" value="��">
EOM

		}

		#���͗����[�e�L�X�g�^�C�v�i��s�j]��\���B
		if($cmt2 eq "text"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <input type="text" name="$cmt6$i$title" size="$cmt3" maxlength="300" value="">
EOM

		}

		#���͗����[���[���A�h���X�^�C�v]��\���B
		if($cmt2 eq "mail"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <input type="text" name="$cmt6$i$title" size="40" style="ime-mode:disabled" maxlength="200" value="">
EOM

		}

		#���͗����[�e�L�X�g�^�C�v�i�����s�j]��\���B
		if($cmt2 eq "textarea"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

print<<"EOM";
       <textarea name="$cmt6$i$title" cols="$cmt3" rows="$cmt4"></textarea>
EOM

		}

		#���͗����[�I���^�C�v�i���X�g�j]��\���B
		if($cmt2 eq "list"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

			@select = split(/<br>/,$cmt5);

print<<"EOM";
       <select name="$cmt6$i$title">
       <option></option>
EOM

			foreach $x(@select){

print<<"EOM";
       <option value="$x">$x</option>
EOM

			}

print<<"EOM";
       </select>
EOM

		}

		#���͗����[�I���^�C�v�i���W�I�{�^���j]��\���B
		if($cmt2 eq "radio"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

			@select = split(/<br>/,$cmt5);

			$count = 0;

			foreach $x(@select){

				if($count == 0){

print<<"EOM";
       <input type="radio" name="$cmt6$i$title" value="$x" checked>$x<br>
EOM

				}else{

print<<"EOM";
       <input type="radio" name="$cmt6$i$title" value="$x">$x<br>
EOM

				}

				#�J�E���g�A�b�v�B
				$count++;

			}
		}

		#���͗����[�I���^�C�v�i�`�F�b�N�{�b�N�X�j]��\���B
		if($cmt2 eq "checkbox"){

			#�⑫��������\���B
			if($msg ne ""){
				print"       $msg<br>\n";
			}

			@select = split(/<br>/,$cmt5);

			foreach $x(@select){

print<<"EOM";
       <input type="checkbox" name="$c5$i$title" value="$x<br>">$x<br>
EOM

			}
		}

print<<"EOM";
       $t3_font2</td>
      </tr>
EOM

		$n++;

		#�L����1000�ɒB�����ꍇ�̓��[�v�𔲂���B
		if($n == 1000){
			last;
		}
	}

	#���M�{�^���̕\���B

print<<"EOM";
     </table>
     <br>
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td><input type="submit" value="���͓��e�̊m�F"></td>
      </tr>
     </table>
     </form>
     <br>
EOM

	if($location eq "up" && $rls15 eq "on" && $rls16 ne ""){

		if($rls17 ne ""){
#				�i�N���X�T�C�g�X�N���v�g�΍�j 2009/09/07 SSL�T�C���\���p�ɏC��
			$rls17 =~ s/<br>/\n/g;
			$rls17 =~ s/&#44;/\,/g;
			$rls17 =~ s/&lt;/</g;
			$rls17 =~ s/&gt;/>/g;
			$rls17 =~ s/&lt;br&gt;/\n/g;
			$rls17 =~ s/&quot;/"/g;

print<<"EOM";
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td>
$rls17
       </td>
      </tr>
     </table>
     <br>
EOM

		}

print<<"EOM";
     <table background="$page_imgdir/$rls8"$t_rls7$t_rls3$t_rls6$t_rls4$t_rls5$t_rls1$t_rls2>
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

1;

