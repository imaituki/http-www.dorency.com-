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
# cart_order2
# �z������͉�ʁB
##################################################
sub cart_order2{

	#�p�����[�^�����擾�B
	&shop_hidden_set;
	&user_hidden_set;
	&delivery_hidden_set;

	#�G���[��ʕ\���B
	if($#errorMsg != -1){
		&cart_error;
	}else{

		#�z����ǉ��G���[�̏ꍇ�̃f�t�H���g�l�p�ӁB
		$tmp0  = @r_delivery_address[0];
		$tmp1  = @r_delivery_address[1];
		$tmp2  = @r_delivery_address[2];
		$tmp3  = @r_delivery_address[3];
		$tmp4  = @r_delivery_address[4];
		$tmp5  = @r_delivery_address[5];
		$tmp6  = @r_delivery_address[6];
		$tmp7  = @r_delivery_address[7];
		$tmp8  = @r_delivery_address[8];
		$tmp9  = @r_delivery_address[9];
		$tmp10 = @r_delivery_address[10];
		$tmp11 = @r_delivery_address[11];

		if($tmp6 ne ""){

			#�z����̔���B
			if($tmp6 eq "�k�C��")  {$tmp6_1  = " selected";}
			if($tmp6 eq "�X��")  {$tmp6_2  = " selected";}
			if($tmp6 eq "�H�c��")  {$tmp6_3  = " selected";}
			if($tmp6 eq "��茧")  {$tmp6_4  = " selected";}
			if($tmp6 eq "�{�錧")  {$tmp6_5  = " selected";}
			if($tmp6 eq "�R�`��")  {$tmp6_6  = " selected";}
			if($tmp6 eq "������")  {$tmp6_6  = " selected";}
			if($tmp6 eq "�V����")  {$tmp6_8  = " selected";}
			if($tmp6 eq "���쌧")  {$tmp6_9  = " selected";}
			if($tmp6 eq "�R����")  {$tmp6_10 = " selected";}
			if($tmp6 eq "�Ȗ،�")  {$tmp6_11 = " selected";}
			if($tmp6 eq "�Q�n��")  {$tmp6_12 = " selected";}
			if($tmp6 eq "��錧")  {$tmp6_13 = " selected";}
			if($tmp6 eq "��ʌ�")  {$tmp6_14 = " selected";}
			if($tmp6 eq "��t��")  {$tmp6_15 = " selected";}
			if($tmp6 eq "�����s")  {$tmp6_16 = " selected";}
			if($tmp6 eq "�_�ސ쌧"){$tmp6_17 = " selected";}
			if($tmp6 eq "�x�R��")  {$tmp6_18 = " selected";}
			if($tmp6 eq "�ΐ쌧")  {$tmp6_19 = " selected";}
			if($tmp6 eq "���䌧")  {$tmp6_20 = " selected";}
			if($tmp6 eq "�򕌌�")  {$tmp6_21 = " selected";}
			if($tmp6 eq "�É���")  {$tmp6_22 = " selected";}
			if($tmp6 eq "���m��")  {$tmp6_23 = " selected";}
			if($tmp6 eq "�O�d��")  {$tmp6_24 = " selected";}
			if($tmp6 eq "���ꌧ")  {$tmp6_25 = " selected";}
			if($tmp6 eq "���s�{")  {$tmp6_26 = " selected";}
			if($tmp6 eq "���{")  {$tmp6_27 = " selected";}
			if($tmp6 eq "���Ɍ�")  {$tmp6_28 = " selected";}
			if($tmp6 eq "�ޗǌ�")  {$tmp6_29 = " selected";}
			if($tmp6 eq "�a�̎R��"){$tmp6_30 = " selected";}
			if($tmp6 eq "���挧")  {$tmp6_31 = " selected";}
			if($tmp6 eq "������")  {$tmp6_32 = " selected";}
			if($tmp6 eq "���R��")  {$tmp6_33 = " selected";}
			if($tmp6 eq "�L����")  {$tmp6_34 = " selected";}
			if($tmp6 eq "�R����")  {$tmp6_35 = " selected";}
			if($tmp6 eq "������")  {$tmp6_36 = " selected";}
			if($tmp6 eq "���쌧")  {$tmp6_37 = " selected";}
			if($tmp6 eq "���Q��")  {$tmp6_38 = " selected";}
			if($tmp6 eq "���m��")  {$tmp6_39 = " selected";}
			if($tmp6 eq "������")  {$tmp6_40 = " selected";}
			if($tmp6 eq "���ꌧ")  {$tmp6_41 = " selected";}
			if($tmp6 eq "���茧")  {$tmp6_42 = " selected";}
			if($tmp6 eq "�F�{��")  {$tmp6_43 = " selected";}
			if($tmp6 eq "�啪��")  {$tmp6_44 = " selected";}
			if($tmp6 eq "�{�茧")  {$tmp6_45 = " selected";}
			if($tmp6 eq "��������"){$tmp6_46 = " selected";}
			if($tmp6 eq "���ꌧ")  {$tmp6_47 = " selected";}
			if($tmp6 eq "���̑�")  {$tmp6_48 = " selected";}

		}

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

		if($cri1 eq "1" || $cri1 eq "2"){
			$kana = "($cart_user2 $cart_user3)";
		}

print<<"EOM";
      <div align="center">
EOM

		#���i����\���B
		&cart1;

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�o�^����Ă���z����͈ȉ��̒ʂ�ł��B$t1_font2</td>
       </tr>
      </table>
      <br>
EOM

		my $d_count = 0;

		#�z����̐����B
		foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

			$d_count++;

		}

		if($d_count == 0){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���݂��͂���̎w�肪����܂���B$t1_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		#�z���搔�������B
		$address_no = 0;

		#�z����̐����B
		foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

			#�z����̃J�E���g�A�b�v�B
			$address_no++;

			#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
			local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$DELIVERY_DATA{$cd});

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 colspan="2">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="del">
         <input type="hidden" name="total" value="$in{'total'}">
         <input type="hidden" name="address" value="$in{'address'}">
         <input type="hidden" name="clear" value="$t_code">
$hidden
         <input type="submit" name="submit" value="�폜">
         $t1_font1�ǉ��z����$address_no$t1_font2</form>
        </td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 width="150">$t1_font1�����O$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$t_name1 $t_name2($t_kana1 $t_kana2)�l$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		#���ݓ��t�擾�B
		&get_time;

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
EOM

		if($cart_user0 ne "" 
		&& $cart_user1 ne "" 
		&& $cart_user2 ne "" 
		&& $cart_user3 ne "" 
		&& $cart_user4 ne "" 
		&& $cart_user5 ne "" 
		&& $cart_user6 ne "" 
		&& $cart_user7 ne "" 
		&& $cart_user8 ne "" 
		&& $cart_user9 ne "" 
		&& $cart_user10 ne "" 
		&& $cart_user11 ne "" 
		&& $cart_user12 ne "" 
		&& $cart_user13 ne ""){

print<<"EOM";
        <td>
<form action="$script" method="post" style="margin-bottom:0">
<input type="hidden" name="category" value="$in{'category'}">
<input type="hidden" name="page" value="$in{'page'}">
<input type="hidden" name="view" value="$in{'view'}">
<input type="hidden" name="cart" value="add">
<input type="hidden" name="total" value="$in{'total'}">
<input type="hidden" name="address" value="$in{'address'}">
<input type="hidden" name="code" value="1$times">
$hidden
<input type="hidden" name="delivery_address" value="$cart_user0">
<input type="hidden" name="delivery_address" value="$cart_user1">
<input type="hidden" name="delivery_address" value="$cart_user2">
<input type="hidden" name="delivery_address" value="$cart_user3">
<input type="hidden" name="delivery_address" value="$cart_user4">
<input type="hidden" name="delivery_address" value="$cart_user5">
<input type="hidden" name="delivery_address" value="$cart_user6">
<input type="hidden" name="delivery_address" value="$cart_user7">
<input type="hidden" name="delivery_address" value="$cart_user8">
<input type="hidden" name="delivery_address" value="$cart_user9">
<input type="hidden" name="delivery_address" value="$cart_user10">
<input type="hidden" name="delivery_address" value="$cart_user11">
<input type="submit" name="submit" value="�����҂�z����ɒǉ�����" style="width:150px">
</form>
        </td>
EOM

		}

print<<"EOM";
        <td>
<form action="$script" method="post" style="margin-bottom:0">
<input type="hidden" name="category" value="$in{'category'}">
<input type="hidden" name="page" value="$in{'page'}">
<input type="hidden" name="view" value="$in{'view'}">
<input type="hidden" name="cart" value="order3">
<input type="hidden" name="total" value="$in{'total'}">
<input type="hidden" name="address" value="$in{'address'}">
$hidden
<input type="submit" name="submit" value="�����ғ��͉�ʂɖ߂�" style="width:150px">
</form>
        </td>
        <td>
EOM

		if($d_count == 0){

print<<"EOM";
<input type="button" name="submit" value="���i�z���ݒ��ʂɐi��" style="width:150px" disabled>
EOM

		}else{

print<<"EOM";
<form action="$script" method="post" style="margin-bottom:0">
<input type="hidden" name="category" value="$in{'category'}">
<input type="hidden" name="page" value="$in{'page'}">
<input type="hidden" name="view" value="$in{'view'}">
<input type="hidden" name="cart" value="order3">
<input type="hidden" name="total" value="$in{'total'}">
<input type="hidden" name="address" value="$in{'address'}">
$hidden
<input type="submit" name="submit" value="���i�z���ݒ��ʂɐi��" style="width:150px">
</form>
EOM

		}

print<<"EOM";
        </td>
       </tr>
      </table>
      <br>
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="add">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="code" value="1$times">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle" colspan="2">$t1_font1�ǉ�����z����̏�����͂��Ă��������B$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�����O(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp0"> ��<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp1"><br>(��)�R�c ���Y$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�t���K�i(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1��<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp2"> ��<input type="text" name="delivery_address" size="10" maxlength="100" value="$tmp3"><br>(��)���}�_ �^���E$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�X�֔ԍ�(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="delivery_address" size="3" style="ime-mode:disabled" maxlength="3" value="$tmp4"> �| <input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="4" value="$tmp5">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�s���{��(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <select name="delivery_address">
        <option></option>
        <option value="�k�C��"$tmp6_1>�k�C��</option>
        <option value="�X��"$tmp6_2>�X���|�k���k</option>
        <option value="�H�c��"$tmp6_3>�H�c���|�k���k</option>
        <option value="��茧"$tmp6_4>��茧�|�k���k</option>
        <option value="�{�錧"$tmp6_5>�{�錧�|�쓌�k</option>
        <option value="�R�`��"$tmp6_6>�R�`���|�쓌�k</option>
        <option value="������"$tmp6_7>�������|�쓌�k</option>
        <option value="�V����"$tmp6_8>�V�����|�M�z</option>
        <option value="���쌧"$tmp6_9>���쌧�|�M�z</option>
        <option value="�R����"$tmp6_10>�R�����|�M�z</option>
        <option value="�Ȗ،�"$tmp6_11>�Ȗ،��|�k�֓�</option>
        <option value="�Q�n��"$tmp6_12>�Q�n���|�k�֓�</option>
        <option value="��錧"$tmp6_13>��錧�|�k�֓�</option>
        <option value="��ʌ�"$tmp6_14>��ʌ��|��֓�</option>
        <option value="��t��"$tmp6_15>��t���|��֓�</option>
        <option value="�����s"$tmp6_16>�����s�|��֓�</option>
        <option value="�_�ސ쌧"$tmp6_17>�_�ސ쌧�|��֓�</option>
        <option value="�x�R��"$tmp6_18>�x�R���|�k��</option>
        <option value="�ΐ쌧"$tmp6_19>�ΐ쌧�|�k��</option>
        <option value="���䌧"$tmp6_20>���䌧�|�k��</option>
        <option value="�򕌌�"$tmp6_21>�򕌌��|����</option>
        <option value="�É���"$tmp6_22>�É����|����</option>
        <option value="���m��"$tmp6_23>���m���|����</option>
        <option value="�O�d��"$tmp6_24>�O�d���|����</option>
        <option value="���ꌧ"$tmp6_25>���ꌧ�|�֐�</option>
        <option value="���s�{"$tmp6_26>���s�{�|�֐�</option>
        <option value="���{"$tmp6_27>���{�|�֐�</option>
        <option value="���Ɍ�"$tmp6_28>���Ɍ��|�֐�</option>
        <option value="�ޗǌ�"$tmp6_29>�ޗǌ��|�֐�</option>
        <option value="�a�̎R��"$tmp6_30>�a�̎R���|�֐�</option>
        <option value="���挧"$tmp6_31>���挧�|����</option>
        <option value="������"$tmp6_32>�������|����</option>
        <option value="���R��"$tmp6_33>���R���|����</option>
        <option value="�L����"$tmp6_34>�L�����|����</option>
        <option value="�R����"$tmp6_35>�R�����|����</option>
        <option value="������"$tmp6_36>�������|�l��</option>
        <option value="���쌧"$tmp6_37>���쌧�|�l��</option>
        <option value="���Q��"$tmp6_38>���Q���|�l��</option>
        <option value="���m��"$tmp6_39>���m���|�l��</option>
        <option value="������"$tmp6_40>�������|��B</option>
        <option value="���ꌧ"$tmp6_41>���ꌧ�|��B</option>
        <option value="���茧"$tmp6_42>���茧�|��B</option>
        <option value="�F�{��"$tmp6_43>�F�{���|��B</option>
        <option value="�啪��"$tmp6_44>�啪���|��B</option>
        <option value="�{�茧"$tmp6_45>�{�茧�|��B</option>
        <option value="��������"$tmp6_46>���������|��B</option>
        <option value="���ꌧ"$tmp6_47>���̑��|���ꌧ</option>
        <option value="���̑�"$tmp6_48>���̑��|���̑�</option>
        </select>
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�S�s�撬��(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="delivery_address" size="50" maxlength="200" value="$tmp7">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1����ȍ~�̏Z��(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        <input type="text" name="delivery_address" size="50" maxlength="200" value="$tmp8"><br>
        (��j�a�J1-1-1<br>
        (��j�a�J1-1-1 **�r��29F �������**** **��<br>
        ���}���V�����A�p�[�g���͕K�����͂��Ă��������B<br>
        ���Z�����Ζ���̏ꍇ�͍Ō�Ɂu��Ж��E�������v�Ȃǂ����͂��Ă��������B
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�d�b�ԍ�(�K�{)$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="10" value="$tmp9"> �| <input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="10" value="$tmp10"> �| <input type="text" name="delivery_address" size="4" style="ime-mode:disabled" maxlength="10" value="$tmp11">$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap colspan="2" align="center">$t1_font1<input type="submit" name="submit" value="�z�����o�^����">$t1_font2</td>
       </tr>
      </table>
      </form>
      <br>
EOM

		#������\���B
		&carriage;

		#�A��������\���B
		&reports;

print<<"EOM";
      </div>
EOM

	}
}

1;

