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
# cart_order3
# ���i�z���ݒ��ʁB
##################################################
sub cart_order3{

	#�p�����[�^�����擾�B
	&shop_hidden_set;
	&user_hidden_set;
	&delivery_hidden_set;

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

	#�\�����ڂ�\���B

	my $count1    = 0;
	my $count2    = 0;
	my $data      = "";
	my $kanma_flg = 0;

	#�N�b�L�[�𐸍��B
	foreach $shop(@shop){

		#���i���𕪊��B
		local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

		if($t_unit =~ /\./){

			$kanma_flg = 1;

		}

	}

print<<"EOM";
      <div align="center">
EOM

	if($low50 eq "on"){

		my $new_width = $cds1 + 40;
print<<"EOM";
<input type="button" value="���菤����̕\\��" onclick="MM_openBrSpecificWindow('specific.cgi','specific','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=$new_width,height=530',$new_width,530);return(false);"><br><br>
EOM
	}

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�z����ʂɏ��i�̐��ʂ�U�蕪���Ă��������B$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1�u���E�U�̖߂�@�\\�͎g��Ȃ��ł��������B$t2_font2</td>
       </tr>
      </table>
      <br>
      <form action="$script" method="post" style="margin-bottom:0" id="form">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="order4">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
$hidden
EOM

	#�N�b�L�[�𐸍��B
	foreach $shop(@shop){

		#���i���𕪊��B
		local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

		if(-e "$rootdir/page_design/story/comment/$t_category$t_page.dat"){
			open(IN,"$rootdir/page_design/story/comment/$t_category$t_page.dat");
			flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
			@shop_storycomment = <IN>;
			flock(IN,8);		# ���b�N�����B
			close(IN);
		}

		#�L�����e���̐����B
		foreach (@shop_storycomment){

			#�L�����e���̕����B
			local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

			$id = sprintf("%010d",$no);

			if($id eq $t_id){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���i��$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���l$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�P���i�ō��݁j$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1����$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���z�i�ō��݁j$t1_font2</td>
       </tr>
EOM

				#�\���ϐ��̏������B
				local($edit_code,$item,$unit_price,$type,$other1,$other2);

				#ID�����B
				$edit_code = $t_code;

				#���i�������B
				$item = $title;

				#���z�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
				$cmt2 =~ s/�F/:/g;
				$cmt2 =~ s/\&\#44\;//g;
				$cmt2 =~ s/�A//g;
				$cmt2 =~ s/�C//g;

				#���z�̕����B
				@PRICE = split(/<br>/,$cmt2);

				#���i���i��ID���������B
				$o0 = 1;

				foreach $x(@PRICE){

					if($o0 == $t_unit_price){

						($unit_price,$type) = split(/:/,$x);
						$unit_price         =~ s/�O/0/g;
						$unit_price         =~ s/�P/1/g;
						$unit_price         =~ s/�Q/2/g;
						$unit_price         =~ s/�R/3/g;
						$unit_price         =~ s/�S/4/g;
						$unit_price         =~ s/�T/5/g;
						$unit_price         =~ s/�U/6/g;
						$unit_price         =~ s/�V/7/g;
						$unit_price         =~ s/�W/8/g;
						$unit_price         =~ s/�X/9/g;

					}

					#���i���i��ID���J�E���g�A�b�v�B
					$o0++;

				}

				#���i�ڍ׏��̕����B
				@OTHER1 = split(/<br>/,$cmt3);

				#����1��ID���������B
				$o1 = 1;

				foreach $x(@OTHER1){

					if($o1 == $t_other1){
						$other1 = $x;
					}

					#����1��ID���J�E���g�A�b�v�B
					$o1++;

				}

				#���i�ڍ׏��̕����B
				@OTHER2 = split(/<br>/,$cmt4);

				#����2��ID���������B
				$o2 = 1;

				foreach $x(@OTHER2){

					if($o2 == $t_other2){
						$other2 = $x;
					}

					#����2��ID���J�E���g�A�b�v�B
					$o2++;

				}

				#���i���i��u���B
				$unit_price =~ s/,//g;

				#���i���~���i�P�������z�B
				$price = $t_unit * $unit_price;

				#���i�P���Q��ݒ�B
				$unit_price2 = $unit_price;

				#���i�P���Q���J���}�t���B
				$unit_price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#���z�Q��ݒ�B
				$price2 = $price;

				#���z�Q���J���}�t���B
				$price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#[���i��]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$item$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1
EOM

				#[���l]��\���B
				if($type ne "")  {print"        $type<br>\n";}
				if($other1 ne ""){print"        $other1<br>\n";}
				if($other2 ne ""){print"        $other2<br>\n";}
				if($type eq "" && $other1 eq "" && $other2 eq ""){
					print"        &nbsp;\n";
				}
				if($cri1 eq "1" || $cri1 eq "2"){
					$kana = "($cart_user2 $cart_user3)";
				}

				#[�P���i�ō��݁j][����][���z�i�ō��݁j]��\���B

				$data .= "data[$count1] = $t_unit\;\n";

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2�~$t2_font2</td>
       </tr>
EOM

				if($kanma_flg == 0){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" colspan="5">
         <table border="0" align="left" width="100%">
          <tr>
           <td align="left" width="50%">$t2_font1�c���F<span id="view$count1">$t_unit</span>$t2_font2</td>
EOM

					if($in{'submit'} eq "���i�z���ݒ��ʂɐi��" || $in{'submit'} eq "���͉�ʂɖ߂�"){

print<<"EOM";
           <td align="right" width="50%" nowrap><input name="review" type="button" id="review" value="�U�蕪�����̏�����" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

					}else{

print<<"EOM";
           <td align="right" width="50%" nowrap><input name="review" type="button" id="review" value="�U�蕪������߂�"   onClick="remake_back($count1)" style="width:150px;"><input name="review" type="button" id="review" value="�U�蕪�����̏�����" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

					}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

				}

				my $d_count = 0;

				#�z����̐����B
				foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

					$d_count++;

				}

				$count2 = 0;

				#�z����̐����B
				foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

					#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
					local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" colspan="5">
         <table border="0" align="left">
          <tr>
EOM

					if($kanma_flg == 0){

print<<"EOM";
           <td align="left">$t2_font1����$t2_font2
           <input type="hidden" name="back$edit_code\D$code" id="back$count1$count2" value="$in{"item$edit_code\D$code"}">
           <select name="item$edit_code\D$code" id="$count1$count2" onChange="remake('$count1',this.id)" style="width:50px;">
           </select>
           </td>
EOM

					}else{

print<<"EOM";
           <td align="left">$t2_font1����<input type="text" name="item$edit_code\D$code" size="2" maxlength="50" style="ime-mode:disabled" value="$in{"item$edit_code\D$code"}">$t2_font2</td>
EOM

					}

print<<"EOM";
           <td align="left">$t2_font1
           [���O]$name1 $name2($kana1 $kana2)�l<br>
           [�Z��]��$address1 �| $address2 $address3 $address4 $address5<br>
           [�d�b]$tel1 �| $tel2 �| $tel3<br>
EOM

					#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
					if($crt5 ne "0"){

						#�����̌v�Z�B
						&send;

						#�����Q��ݒ�B
						$send2 = $send;

						#�����Q���J���}�t���B
						$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
           [�����P��]$send2�~
EOM

					}

print<<"EOM";
           $t2_font2</td>
          </tr>
         </table>
        </td>
       </tr>
EOM

					$count2++;

				}

				$count1++;

print<<"EOM";
      </table>
      <br>
EOM

			}
		}
	}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="submit" value="�z������͉�ʂɖ߂�" style="width:150px"></td>
        <td><input type="submit" name="submit" value="���i�z���m�F��ʂɐi��" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
EOM

	if($kanma_flg == 0){

print<<"EOM";
<script type="text/javascript">
<!--
//////////////////////////////////////////////////
// �����ݒ�
//////////////////////////////////////////////////
var count1 = $count1;														// ���i��ސ�
var count2 = $count2;														// �z���搔
var data   = new Array();													// ���i��ޕʍw����
$data
//////////////////////////////////////////////////
// id�f�[�^����
// ���O�ɑI��value�f�[�^����
//////////////////////////////////////////////////
var select_list = new Array(count1);
var dammy_list  = new Array(count1);
for (var i0 = 0 ; i0 < count1 ; i0++) {

	select_list[i0] = new Array(count2);
	dammy_list[i0]  = new Array(count2);

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		select_list[i0][i1] = i0 + '' + i1;
		dammy_list[i0][i1]  = '';

	}

}
//////////////////////////////////////////////////
// option�f�[�^����
//////////////////////////////////////////////////
var value_list = new Array();
for (var i0 = 0 ; i0 < count1 ; i0++) {

	value_list[i0] = new Array(data[i0] + 1);

	for (var i1 = 0 ; i1 < data[i0] + 1 ; i1++) {

		if (i1 == 0) {

			value_list[i0][i1] = '';

		} else {

			value_list[i0][i1] = i1;

		}

	}

}
//////////////////////////////////////////////////
// �Ď��f�[�^����
// �i�v���_�E�����Ƃ�2�����z��ō쐬�j
//////////////////////////////////////////////////
var watch_list = new Array();
for (var i0 = 0 ; i0 < count1 ; i0++) {

	watch_list[i0] = new Array(count2);

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		watch_list[i0][i1] = new Array(data[i0] + 1);

		for (var i2 = 0 ; i2 < data[i0] + 1 ; i2 ++) {

			if (i2  == 0) {

				watch_list[i0][i1][i2]  = "";

			} else {

				watch_list[i0][i1][i2]  = i2;

			}

		}

	}

}
//////////////////////////////////////////////////
// �����\��
// iniset()
//////////////////////////////////////////////////
function iniset() {
EOM

	if($in{'submit'} eq "���i�z���ݒ��ʂɐi��"){
print<<"EOM";

	for (var i0 = 0 ; i0 < count1 ; i0++) {

		for (var i1 = 0 ; i1 < count2 ; i1++) {

			set_main_select(document.getElementById(select_list[i0][i1]),i0,i1);

		}

	}

EOM

	}else{


print<<"EOM";

	for (var i0 = 0 ; i0 < count1 ; i0++) {

		for (var i1 = 0 ; i1 < count2 ; i1++) {

			set_main_select(document.getElementById(select_list[i0][i1]),i0,i1);

		}

	}

EOM
	}

print<<"EOM";

}
//////////////////////////////////////////////////
// �v���_�E���`��̃��C���֐�
// �Ď��z������i0�ŏƍ����A������cnt���g�����Ƃɒ��ӁI
// set_main(obj_pass,id1,id2)
//////////////////////////////////////////////////
function set_main_select(obj,id1,id2) {

	var cnt1 = 0;

	var selected_data = document.getElementById('back' + id1 + '' + id2).value;

	for (var i0 = 0 ; i0 < watch_list[id1][id2].length ; i0++) {

		if (watch_list[id1][id2][i0] != "" || i0 == 0) {								// �Ď��z��̒l��null�ł͂Ȃ����A�܂��͏����l�̏ꍇ

			addo = document.createElement('option');								// option�v�f�𐶐�

			if (obj.childNodes[cnt1] != undefined) {

				obj.removeChild(obj.childNodes[cnt1]);								// option�v�f��e�v�f�iselect�j�֒ǉ�����O�ɃS�~������

			}

			obj.appendChild(addo);											// option�v�f��e�v�f�iselect�j�֒ǉ�

			obj.childNodes[cnt1].setAttribute('value',watch_list[id1][id2][i0]);					// option�v�f��value��ݒ�

//			if (selected_data != '') {
//
//				if (selected_data == cnt1) {
//
//					obj.childNodes[cnt1].setAttribute('selected','true');					// option�v�f��selected��ݒ�
//
//				} else {
//
//					obj.childNodes[cnt1].setAttribute('selected','');					// option�v�f��selected��ݒ�
//
//				}
//
//			} else {
//
//				obj.childNodes[cnt1].setAttribute('selected','');						// option�v�f��selected��ݒ�
//
//			}

			addo_txt = document.createTextNode(value_list[id1][i0]);						// option�v�f��text�𐶐�

			if (obj.childNodes[cnt1].firstChild != undefined) {
				obj.childNodes[cnt1].removeChild(obj.childNodes[cnt1].firstChild);				// option�v�f��text��ݒ肷��O�ɃS�~������
			}

			obj.childNodes[cnt1].appendChild(addo_txt);								// option�v�f��text��ݒ�

			cnt1++;													// ���X�g�̒�����ߑ�

		}

	}

	obj.length = cnt1;													// �\�����X�g�̒�������

}
//////////////////////////////////////////////////
// ���l�I��
// remake(id1,id2)
//////////////////////////////////////////////////
function remake(id1,id2) {

	var crnum  = document.getElementById(id2).childNodes[document.getElementById(id2).selectedIndex].getAttribute('value');

	var oldnum = dammy_list[id1][this_id_num(id2)];

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		for (var i2 = 0 ; i2 < data[id1] + 1 ; i2 ++) {

			if (oldnum != "") {

				watch_list[id1][i1][oldnum]  = oldnum;

			}

		}

	}

	var max_data1 = data[id1];

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		var select_data = document.getElementById(id1 + '' + i1).childNodes[document.getElementById(id1 + '' + i1).selectedIndex].getAttribute('value');

		max_data1       = max_data1 - select_data;

	}

	document.getElementById('view' + id1).innerHTML = max_data1;

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		if (select_list[id1][i1] != id2) {

			if (dammy_list[id1][i1] == "") {

				set_main_select_custom(document.getElementById(select_list[id1][i1]),id1,i1,max_data1);		// null���I�΂�Ă����ꍇ�A���X�g�𐮌`

			} else {

				var max_data2 = 0;

				var max_data3 = 0;

				var listlng = document.getElementById(select_list[id1][i1]).length;				// �I�����Ȃ����i�ߋ����O�ƈ�v����value���v���_�E������T���đI����Ԃɂ���j

				for (var i2 = 0 ; i2 < listlng ; i2++) {

					if(document.getElementById(select_list[id1][i1]).childNodes[i2].selected){

						max_data2 = document.getElementById(select_list[id1][i1]).childNodes[i2].getAttribute('value');

					}

				}

				if (max_data1 != 0) {

					max_data3 = parseInt(max_data2) + parseInt(max_data1);

				} else {

					max_data3 = parseInt(max_data2);

				}

				set_main_select_custom(document.getElementById(select_list[id1][i1]),id1,i1,max_data3);		// �I���������̂�����ꍇ�A���X�g�𐮌`

				for (var i2 = 0 ; i2 < listlng ; i2++) {

					if (dammy_list[id1][i1] == document.getElementById(select_list[id1][i1]).childNodes[i2].getAttribute('value')) {

						document.getElementById(select_list[id1][i1]).childNodes[i2].selected = true;	// �ߋ����O�Ɠ���value�𔭌������ꍇ�A�I����Ԃɂ���
						break;

					}

				}

			}

		}

	}

	dammy_list[id1][this_id_num(id2)] = crnum;										// ���O�f�[�^���X�V

}
//////////////////////////////////////////////////
// �v���_�E���`��̃��C���֐�
// �Ď��z������i0�ŏƍ����A������cnt���g�����Ƃɒ��ӁI
// set_main(obj_pass,id1,id2)
//////////////////////////////////////////////////
function set_main_select_custom(obj,id1,id2,max) {

	var cnt2 = 0;

	for (var i0 = 0 ; i0 <= max ; i0++) {

		if (watch_list[id1][id2][i0] != "" || i0 == 0) {								// �Ď��z��̒l��null�ł͂Ȃ����A�܂��͏����l�̏ꍇ

			addo = document.createElement('option');								// option�v�f�𐶐�

			if (obj.childNodes[cnt2] != undefined) {

				obj.removeChild(obj.childNodes[cnt2]);								// option�v�f��e�v�f�iselect�j�֒ǉ�����O�ɃS�~������

			}

			obj.appendChild(addo);											// option�v�f��e�v�f�iselect�j�֒ǉ�

			obj.childNodes[cnt2].setAttribute('value',watch_list[id1][id2][i0]);					// option�v�f��value��ݒ�

			addo_txt = document.createTextNode(value_list[id1][i0]);						// option�v�f��text�𐶐�

			if (obj.childNodes[cnt2].firstChild != undefined) {
				obj.childNodes[cnt2].removeChild(obj.childNodes[cnt2].firstChild);				// option�v�f��text��ݒ肷��O�ɃS�~������
			}

			obj.childNodes[cnt2].appendChild(addo_txt);								// option�v�f��text��ݒ�

			cnt2++;													// ���X�g�̒�����ߑ�

		}

	}

	obj.length = cnt2;													// �\�����X�g�̒�������

}
//////////////////////////////////////////////////
// ���l�I��
// remake_back()
//////////////////////////////////////////////////
function remake_back(id1) {

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		var crnum  = document.getElementById('back' + id1 + i1).value;

		var listlng = document.getElementById(select_list[id1][i1]).length;						// �I�����Ȃ����i�ߋ����O�ƈ�v����value���v���_�E������T���đI����Ԃɂ���j

		if (crnum != '' && listlng != 0) {

			document.getElementById(select_list[id1][i1]).childNodes[crnum].selected = true;

			remake(id1,id1 + '' + i1);

		}

	}

}
//////////////////////////////////////////////////
// ��蒼��
// restart(id)
//////////////////////////////////////////////////
function restart(id) {

	document.getElementById('view' + id).innerHTML = data[id];

	watch_list[id] = new Array(count2);

	for (var i1 = 0 ; i1 < count2 ; i1++) {

		watch_list[id][i1] = new Array(data[id] + 1);

		for (var i2 = 0 ; i2 < data[id] + 1 ; i2 ++) {

			if (i2  == 0) {

				watch_list[id][i1][i2]  = "";

			} else {

				watch_list[id][i1][i2]  = i2;

			}

		}

		document.getElementById(select_list[id][i1]).childNodes[0].selected = true;					// �t�H�[�J�X��������
		dammy_list[id][i1]                                                  = "";					// ���O��������
		set_main_select(document.getElementById(select_list[id][i1]),id,i1);

	}

}
//////////////////////////////////////////////////
// id���牽�Ԗڂ̐ݖ�i�Y�����j�����}�X�^�[���ƍ����Ċ���o���֐�
// this_id_num(str)
//////////////////////////////////////////////////
function this_id_num(str) {

	for (var i0 = 0 ; i0 < count1 ; i0++) {

		for (var i1 = 0 ; i1 < count2 ; i1++) {

			if (select_list[i0][i1] == str) {

				return i1;
				break;

			}

		}

	}

}
//////////////////////////////////////////////////
// �I�����[�h�Ŋ֐��Ăяo��
//////////////////////////////////////////////////
window.onload = iniset;
//////////////////////////////////////////////////
//-->
</script>
EOM

	}

print<<"EOM";
      </div>
EOM

}

1;

