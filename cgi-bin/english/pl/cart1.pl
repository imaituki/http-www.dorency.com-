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
# cart_order1
# �����ғ��͉�ʁB
##################################################
sub cart_order1{

	#�p�����[�^�����擾�B
	&shop_hidden_set;

	#[table]���`���B
	if($cds6 ne ""){$t_cds6 = " bgcolor=\"$cds6\"";}
	if($cds2 ne ""){$t_cds2 = " border=\"$cds2\"";}
	if($cds2 eq ""){$t_cds2 = " border=\"0\"";}
	if($cds5 ne ""){$t_cds5 = " bordercolor=\"$cds5\"";}
	if($cds3 ne ""){$t_cds3 = " cellspacing=\"$cds3\"";}
	if($cds3 eq ""){$t_cds3 = " cellspacing=\"0\"";}
	if($cds4 ne ""){$t_cds4 = " cellpadding=\"$cds4\"";}
	if($cds4 eq ""){$t_cds4 = " cellpadding=\"0\"";}
	if($cds1 ne ""){$t_cds1 = " width=\"$cds1\"";}

	#[td]���`���B
	if($cds11 ne ""){$t_cds11 = " bgcolor=\"$cds11\"";}
	if($cds10 ne ""){$t_cds10 = " bordercolor=\"$cds10\"";}

	if($cds16 ne ""){$t_cds16 = " bgcolor=\"$cds16\"";}
	if($cds15 ne ""){$t_cds15 = " bordercolor=\"$cds15\"";}

	#[font]���`���B
	if($cds9 ne "")               {$t_cds9   = " size=\"$cds9\"";}
	if($cds8 ne "")               {$t_cds8   = " color=\"$cds8\"";}
	if($cds9 ne "" || $cds8 ne ""){$t1_font1 = "<font$t_cds9$t_cds8>";}
	if($cds9 ne "" || $cds8 ne ""){$t1_font2 = "</font>";}

	if($cds14 ne "")                {$t_cds14  = " size=\"$cds14\"";}
	if($cds13 ne "")                {$t_cds13  = " color=\"$cds13\"";}
	if($cds14 ne "" || $cds13 ne ""){$t2_font1 = "<font$t_cds14$t_cds13>";}
	if($cds14 ne "" || $cds13 ne ""){$t2_font2 = "</font>";}

print<<"EOM";
      <div align="center">
<script type="text/javascript">
<!--

window.onload=changeButtonCheck;

//-->
</script>
EOM

	#���i����\���B
	&cart1;

	#�z����̔���B
	if($cart_user6 eq "�k�C��")  {$ckeck6_1  = " selected";}
	if($cart_user6 eq "�X��")  {$ckeck6_2  = " selected";}
	if($cart_user6 eq "�H�c��")  {$ckeck6_3  = " selected";}
	if($cart_user6 eq "��茧")  {$ckeck6_4  = " selected";}
	if($cart_user6 eq "�{�錧")  {$ckeck6_5  = " selected";}
	if($cart_user6 eq "�R�`��")  {$ckeck6_6  = " selected";}
	if($cart_user6 eq "������")  {$ckeck6_6  = " selected";}
	if($cart_user6 eq "�V����")  {$ckeck6_8  = " selected";}
	if($cart_user6 eq "���쌧")  {$ckeck6_9  = " selected";}
	if($cart_user6 eq "�R����")  {$ckeck6_10 = " selected";}
	if($cart_user6 eq "�Ȗ،�")  {$ckeck6_11 = " selected";}
	if($cart_user6 eq "�Q�n��")  {$ckeck6_12 = " selected";}
	if($cart_user6 eq "��錧")  {$ckeck6_13 = " selected";}
	if($cart_user6 eq "��ʌ�")  {$ckeck6_14 = " selected";}
	if($cart_user6 eq "��t��")  {$ckeck6_15 = " selected";}
	if($cart_user6 eq "�����s")  {$ckeck6_16 = " selected";}
	if($cart_user6 eq "�_�ސ쌧"){$ckeck6_17 = " selected";}
	if($cart_user6 eq "�x�R��")  {$ckeck6_18 = " selected";}
	if($cart_user6 eq "�ΐ쌧")  {$ckeck6_19 = " selected";}
	if($cart_user6 eq "���䌧")  {$ckeck6_20 = " selected";}
	if($cart_user6 eq "�򕌌�")  {$ckeck6_21 = " selected";}
	if($cart_user6 eq "�É���")  {$ckeck6_22 = " selected";}
	if($cart_user6 eq "���m��")  {$ckeck6_23 = " selected";}
	if($cart_user6 eq "�O�d��")  {$ckeck6_24 = " selected";}
	if($cart_user6 eq "���ꌧ")  {$ckeck6_25 = " selected";}
	if($cart_user6 eq "���s�{")  {$ckeck6_26 = " selected";}
	if($cart_user6 eq "���{")  {$ckeck6_27 = " selected";}
	if($cart_user6 eq "���Ɍ�")  {$ckeck6_28 = " selected";}
	if($cart_user6 eq "�ޗǌ�")  {$ckeck6_29 = " selected";}
	if($cart_user6 eq "�a�̎R��"){$ckeck6_30 = " selected";}
	if($cart_user6 eq "���挧")  {$ckeck6_31 = " selected";}
	if($cart_user6 eq "������")  {$ckeck6_32 = " selected";}
	if($cart_user6 eq "���R��")  {$ckeck6_33 = " selected";}
	if($cart_user6 eq "�L����")  {$ckeck6_34 = " selected";}
	if($cart_user6 eq "�R����")  {$ckeck6_35 = " selected";}
	if($cart_user6 eq "������")  {$ckeck6_36 = " selected";}
	if($cart_user6 eq "���쌧")  {$ckeck6_37 = " selected";}
	if($cart_user6 eq "���Q��")  {$ckeck6_38 = " selected";}
	if($cart_user6 eq "���m��")  {$ckeck6_39 = " selected";}
	if($cart_user6 eq "������")  {$ckeck6_40 = " selected";}
	if($cart_user6 eq "���ꌧ")  {$ckeck6_41 = " selected";}
	if($cart_user6 eq "���茧")  {$ckeck6_42 = " selected";}
	if($cart_user6 eq "�F�{��")  {$ckeck6_43 = " selected";}
	if($cart_user6 eq "�啪��")  {$ckeck6_44 = " selected";}
	if($cart_user6 eq "�{�茧")  {$ckeck6_45 = " selected";}
	if($cart_user6 eq "��������"){$ckeck6_46 = " selected";}
	if($cart_user6 eq "���ꌧ")  {$ckeck6_47 = " selected";}
	if($cart_user6 eq "���̑�")  {$ckeck6_48 = " selected";}

	#���[�U�f�[�^���ʔ���B
	if($cart_user17 eq "")  {$select17_1 = " selected";}
	if($cart_user17 eq "�j"){$select17_2 = " selected";}
	if($cart_user17 eq "��"){$select17_3 = " selected";}

	#���R���͍��ڂ̉��s�u���B
	$cart_user21 =~ s/&lt;br&gt;/\n/g;

	#���̕ۑ�����B
	if($cart_user22 eq "on"){$ckeck22 = "checked";}

print<<"EOM";
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="order2">
      <input type="hidden" name="total" value="$in{'total'}">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���q�l������͂��Ă��������B$t1_font2</td>
       </tr>
      </table>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
EOM

	if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�����O(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="user_data" value="$cart_user0" size="10" maxlength="10"> ��<input type="text" name="user_data" value="$cart_user1" size="10" maxlength="10"><br>(��)�R�c ���Y$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�����O(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="user_data" value="$cart_user0" size="10" maxlength="100"> ��<input type="text" name="user_data" value="$cart_user1" size="10" maxlength="100"><br>(��)�R�c ���Y$t2_font2</td>
       </tr>
EOM

	}

	if($cri1 eq "1"){

		if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�t���K�i(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="7"> ��<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="8"><br>(��)���}�_ �^���E$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�t���K�i(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="100"> ��<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="100"><br>(��)���}�_ �^���E$t2_font2</td>
       </tr>
EOM

		}

	}elsif($cri1 eq "2"){

		if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�t���K�i$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="7"> ��<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="8"><br>(��)���}�_ �^���E$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�t���K�i$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="user_data" value="$cart_user2" size="10" maxlength="100"> ��<input type="text" name="user_data" value="$cart_user3" size="10" maxlength="100"><br>(��)���}�_ �^���E$t2_font2</td>
       </tr>
EOM

		}

	}else{

print<<"EOM";
       <input type="hidden" name="user_data" value="$cart_user2">
       <input type="hidden" name="user_data" value="$cart_user3">
EOM

	}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�X�֔ԍ�(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user4" size="3" style="ime-mode:disabled" maxlength="3"> �| <input type="text" name="user_data" value="$cart_user5" size="4" style="ime-mode:disabled" maxlength="4">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�s���{��(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="user_data">
        <option></option>
        <option value="�k�C��"$ckeck6_1>�k�C��</option>
        <option value="�X��"$ckeck6_2>�X���|�k���k</option>
        <option value="�H�c��"$ckeck6_3>�H�c���|�k���k</option>
        <option value="��茧"$ckeck6_4>��茧�|�k���k</option>
        <option value="�{�錧"$ckeck6_5>�{�錧�|�쓌�k</option>
        <option value="�R�`��"$ckeck6_6>�R�`���|�쓌�k</option>
        <option value="������"$ckeck6_7>�������|�쓌�k</option>
        <option value="�V����"$ckeck6_8>�V�����|�M�z</option>
        <option value="���쌧"$ckeck6_9>���쌧�|�M�z</option>
        <option value="�R����"$ckeck6_10>�R�����|�M�z</option>
        <option value="�Ȗ،�"$ckeck6_11>�Ȗ،��|�k�֓�</option>
        <option value="�Q�n��"$ckeck6_12>�Q�n���|�k�֓�</option>
        <option value="��錧"$ckeck6_13>��錧�|�k�֓�</option>
        <option value="��ʌ�"$ckeck6_14>��ʌ��|��֓�</option>
        <option value="��t��"$ckeck6_15>��t���|��֓�</option>
        <option value="�����s"$ckeck6_16>�����s�|��֓�</option>
        <option value="�_�ސ쌧"$ckeck6_17>�_�ސ쌧�|��֓�</option>
        <option value="�x�R��"$ckeck6_18>�x�R���|�k��</option>
        <option value="�ΐ쌧"$ckeck6_19>�ΐ쌧�|�k��</option>
        <option value="���䌧"$ckeck6_20>���䌧�|�k��</option>
        <option value="�򕌌�"$ckeck6_21>�򕌌��|����</option>
        <option value="�É���"$ckeck6_22>�É����|����</option>
        <option value="���m��"$ckeck6_23>���m���|����</option>
        <option value="�O�d��"$ckeck6_24>�O�d���|����</option>
        <option value="���ꌧ"$ckeck6_25>���ꌧ�|�֐�</option>
        <option value="���s�{"$ckeck6_26>���s�{�|�֐�</option>
        <option value="���{"$ckeck6_27>���{�|�֐�</option>
        <option value="���Ɍ�"$ckeck6_28>���Ɍ��|�֐�</option>
        <option value="�ޗǌ�"$ckeck6_29>�ޗǌ��|�֐�</option>
        <option value="�a�̎R��"$ckeck6_30>�a�̎R���|�֐�</option>
        <option value="���挧"$ckeck6_31>���挧�|����</option>
        <option value="������"$ckeck6_32>�������|����</option>
        <option value="���R��"$ckeck6_33>���R���|����</option>
        <option value="�L����"$ckeck6_34>�L�����|����</option>
        <option value="�R����"$ckeck6_35>�R�����|����</option>
        <option value="������"$ckeck6_36>�������|�l��</option>
        <option value="���쌧"$ckeck6_37>���쌧�|�l��</option>
        <option value="���Q��"$ckeck6_38>���Q���|�l��</option>
        <option value="���m��"$ckeck6_39>���m���|�l��</option>
        <option value="������"$ckeck6_40>�������|��B</option>
        <option value="���ꌧ"$ckeck6_41>���ꌧ�|��B</option>
        <option value="���茧"$ckeck6_42>���茧�|��B</option>
        <option value="�F�{��"$ckeck6_43>�F�{���|��B</option>
        <option value="�啪��"$ckeck6_44>�啪���|��B</option>
        <option value="�{�茧"$ckeck6_45>�{�茧�|��B</option>
        <option value="��������"$ckeck6_46>���������|��B</option>
        <option value="���ꌧ"$ckeck6_47>���̑��|���ꌧ</option>
        <option value="���̑�"$ckeck6_48>���̑��|���̑�</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�S�s�撬��(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user7" size="50" maxlength="200">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1����ȍ~�̏Z��(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="user_data" value="$cart_user8" size="50" maxlength="200"><br>
        (��j�a�J1-1-1<br>
        (��j�a�J1-1-1 **�r��29F �������**** **��<br>
        ���}���V�����A�p�[�g���͕K�����͂��Ă��������B<br>
        ���Z�����Ζ���̏ꍇ�͍Ō�Ɂu��Ж��E�������v�Ȃǂ����͂��Ă��������B
        $t2_font2</td>
       </tr>
EOM

	if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�d�b�ԍ�(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user9" size="4" style="ime-mode:disabled" maxlength="4"> �| <input type="text" name="user_data" value="$cart_user10" size="4" style="ime-mode:disabled" maxlength="4"> �| <input type="text" name="user_data" value="$cart_user11" size="4" style="ime-mode:disabled" maxlength="4">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�d�b�ԍ�(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user9" size="4" style="ime-mode:disabled" maxlength="10"> �| <input type="text" name="user_data" value="$cart_user10" size="4" style="ime-mode:disabled" maxlength="10"> �| <input type="text" name="user_data" value="$cart_user11" size="4" style="ime-mode:disabled" maxlength="10">$t2_font2</td>
       </tr>
EOM

	}

	if($cri2 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�e�`�w�ԍ�(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user12" size="4" style="ime-mode:disabled" maxlength="10"> �| <input type="text" name="user_data" value="$cart_user13" size="4" style="ime-mode:disabled" maxlength="10"> �| <input type="text" name="user_data" value="$cart_user14" size="4" style="ime-mode:disabled" maxlength="10">$t2_font2</td>
       </tr>
EOM

	}elsif($cri2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�e�`�w�ԍ�$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" value="$cart_user12" size="4" style="ime-mode:disabled" maxlength="10"> �| <input type="text" name="user_data" value="$cart_user13" size="4" style="ime-mode:disabled" maxlength="10"> �| <input type="text" name="user_data" value="$cart_user14" size="4" style="ime-mode:disabled" maxlength="10">$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user12">
        <input type="hidden" name="user_data" value="$cart_user13">
        <input type="hidden" name="user_data" value="$cart_user14">
EOM

	}

	if($crt33 eq "on"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���[���A�h���X(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="user_data" value="$cart_user15" size="40" style="ime-mode:disabled" maxlength="60"><br><br>
        ���m�F�̂��߂ɂ�����x���[���A�h���X����͂��Ă��������B<br>
        <input type="text" name="user_data" value="" size="40" style="ime-mode:disabled" maxlength="60">
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���[���A�h���X(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="user_data" value="$cart_user15" size="40" style="ime-mode:disabled" maxlength="200"><br><br>
        ���m�F�̂��߂ɂ�����x���[���A�h���X����͂��Ă��������B<br>
        <input type="text" name="user_data" value="" size="40" style="ime-mode:disabled" maxlength="200">
        $t2_font2</td>
       </tr>
EOM

	}

	if($cri3 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1����(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="user_data">
        <option value=""$select17_1></option>
        <option value="�j"$select17_2>�j</option>
        <option value="��"$select17_3>��</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}elsif($cri3 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1����$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="user_data">
        <option value=""$select17_1></option>
        <option value="�j"$select17_2>�j</option>
        <option value="��"$select17_3>��</option>
        </select>
        $t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user17">
EOM

	}

	if($cri4 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���N����(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1����<input type="text" name="user_data" value="$cart_user18" size="4" style="ime-mode:disabled" maxlength="4">�N <input type="text" name="user_data" value="$cart_user19" size="2" style="ime-mode:disabled" maxlength="2">�� <input type="text" name="user_data" value="$cart_user20" size="2" style="ime-mode:disabled" maxlength="2">��$t2_font2</td>
       </tr>
EOM

	}elsif($cri4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���N����$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1����<input type="text" name="user_data" value="$cart_user18" size="4" style="ime-mode:disabled" maxlength="4">�N <input type="text" name="user_data" value="$cart_user19" size="2" style="ime-mode:disabled" maxlength="2">�� <input type="text" name="user_data" value="$cart_user20" size="2" style="ime-mode:disabled" maxlength="2">��$t2_font2</td>
       </tr>
EOM

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user18">
        <input type="hidden" name="user_data" value="$cart_user19">
        <input type="hidden" name="user_data" value="$cart_user20">
EOM

	}

	if($cri7 eq "1"){

		if($cri10 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" size="$cri9" value="$cart_user21">$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<textarea name="user_data" cols="$cri9" rows="$cri10">$cart_user21</textarea>$t2_font2</td>
       </tr>
EOM

		}

	}elsif($cri7 eq "2"){

		if($cri10 eq "1"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="user_data" size="$cri9" value="$cart_user21">$t2_font2</td>
       </tr>
EOM

		}else{

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<textarea name="user_data" cols="$cri9" rows="$cri10">$cart_user21</textarea>$t2_font2</td>
       </tr>
EOM

		}

	}else{

print<<"EOM";
        <input type="hidden" name="user_data" value="$cart_user21">
EOM

	}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���̕ۑ�$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="checkbox" name="user_data" value="on" $ckeck22>��L����ۑ����Ď��񂩂玩���I�ɕ\\���B$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���t��$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>
         <table border="0" align="left">
          <tr>
           <td align="left">$t2_font1<input type="radio" name="address" value="same" checked onClick="changeButton('���i�z���m�F��ʂɐi��')">$t2_font2</td>
           <td align="left">$t2_font1��L�̏Z���ɑ���B$t2_font2</td>
          </tr>
          <tr>
           <td align="left">$t2_font1<input type="radio" name="address" value="other" onClick="changeButton('�z������͉�ʂɐi��')">$t2_font2</td>
           <td align="left">$t2_font1�ʂ̏Z���ɑ���B�i�������t��Ή��j$t2_font2</td>
          </tr>
         </table>
        </td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="back" value="�I�����i�ꗗ��ʂɖ߂�" style="width:150px"></td>
        <td><input type="submit" name="submit" value="���i�z���m�F��ʂɐi��" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
EOM

	if($location eq "up" && $crt42 eq "on" && $crt43 ne ""){

		if($crt44 ne ""){

			$crt44 =~ s/<br>/\n/g;
			$crt44 =~ s/&#44;/\,/g;
			$crt44 =~ s/&lt;/</g;
			$crt44 =~ s/&gt;/>/g;
			$crt44 =~ s/&lt;br&gt;/\n/g;
			$crt44 =~ s/&quot;/"/g;

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
$crt44
        </td>
       </tr>
      </table>
      <br>
EOM

		}

	}

	#������\���B
	&carriage;

	#�A��������\���B
	&reports;

print<<"EOM";
      </div>
EOM

}

1;

