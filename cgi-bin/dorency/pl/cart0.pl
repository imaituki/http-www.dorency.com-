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
# cart_order0
# �I�����i�ꗗ��ʁB
##################################################
sub cart_order0{

	#�p�����[�^�����擾�B
	&shop_hidden_set;

	#�x�������@�̓N���W�b�g�J�[�h�̏ꍇ�ɂ͌��σy�[�W��\���B
	if($in{'cart'} eq "payment"){
		&payment;

	}elsif($in{'cart'} eq "payment_nicos"){
		&payment_nicos;

	}else{

		#���ʂ�0�̏ꍇ�́u�I������Ă��鏤�i�͂���܂���v��\���B
		if($#shop == -1){

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td align="center" height="30"><font color="#FF0000"><strong>--- �I������Ă��鏤�i�͂���܂��� ---</strong></font></td>
       </tr>
       <tr>
        <td align="center">
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

		#���ʂ�0�ȏ�̏ꍇ�͑I�����i��\���B
		}else{

			if($#errorMsg != -1){
				&cart_error;
			}else{

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
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�I������Ă��鏤�i�͈ȉ��̒ʂ�ł��B$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1�u���E�U�̖߂�@�\\�͎g��Ȃ��ł��������B$t2_font2</td>
       </tr>
      </table>
      <br>
      <form action="$script" method="post" style="margin-bottom:0" name="form">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���i��$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���l$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�P���i�ō��݁j$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1����$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���z�i�ō��݁j$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�폜$t1_font2</td>
       </tr>
EOM

				#�����v���z�������B
				$subtotal = "0";

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

							#[�폜�{�^��][���i��]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$item$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle">$t2_font1
EOM

							#[���l]��\���B
							if($type ne "")  {print"        $type<br>\n";}
							if($other1 ne ""){print"        $other1<br>\n";}
							if($other2 ne ""){print"        $other2<br>\n";}
							if($type eq "" && $other1 eq "" && $other2 eq ""){
								print"        &nbsp;\n";
							}

print<<"EOM";
        $t2_font2</td>
EOM

							#[���ύX][���z�i�ō��݁j]��\���B

print<<"EOM";
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" nowrap>$t2_font1$unit_price2�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" nowrap>
EOM

							my $data = $t_unit;
							my $temp = $in{"$unit_price\,$type\,$other1\,$other2"};

							if($temp != ""){

								if($temp < $t_unit){

									$data = $temp;

								}

							}

print<<"EOM";
        <input type="text" name="edit$edit_code" size="2" maxlength="10" style="ime-mode:disabled" value="$data">
        </td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" nowrap>$t2_font1$price2�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" nowrap>
        <input type="checkbox" name="clear" value="edit$edit_code">
        </td>
       </tr>
EOM

							#�����v���z���v�Z�B
							$subtotal = $subtotal + $price;

						}
					}
				}

				#�����v���z�Q��ݒ�B
				$subtotal2 = $subtotal;

				#�����v���z�Q���J���}�t���B
				$subtotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#[���v���z�i�ō��݁j]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="right" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle"><input type="submit" name="submit" value="�ύX"></td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="right" valign="middle">&nbsp;</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle"><input type="submit" name="submit" value="�폜"></td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="right" valign="middle" colspan="6"><input type="button" name="checkButton" value="���ׂđI��" onclick="check();"></td>
       </tr>
      </table>
<script type="text/javascript">
<!--

var checkflg = 0;

function check() {

	for (var i = 0; i < document.form.elements.length; i++ ) {

		if (document.form.elements[i].type == "checkbox") {

			if(checkflg == 0){

				document.form.elements[i].checked = true;

			}else if(checkflg == 1){

				document.form.elements[i].checked = false;

			}

		}

	}

	if(checkflg == 0){

		checkflg = 1;
		document.form.checkButton.value = "���ׂĉ���";

	}else if(checkflg == 1){

		checkflg = 0;
		document.form.checkButton.value = "���ׂđI��";

	}
}
//-->
</script>
      </form>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���v���z�i�ō��݁j$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$subtotal2�~$t2_font2</td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="submit" value="���i�ꗗ�ɖ߂�" style="width:150px">
         </form>
        </td>
EOM

				if($low1 ne "" ||  $low2 ne "" || $low3 ne ""
					|| $low4 ne "" || $low5 ne "" || $low6 ne "" || $crt24 eq "on" 
					|| $low7 ne "" || $low8 ne "" || $low9 ne "" || $low10 ne "" 
					|| $low11 ne "" || $low12 ne "" || $low13 ne "" || $low14 ne "" || $low15 ne ""){

					if($location eq "up" && $crt42 eq "on" && $crt43 ne ""){

print<<"EOM";
        <td>
         <form action="$crt43\/$cgi_host\/$site_folder\/siteup.cgi" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="order1">
         <input type="hidden" name="total" value="$subtotal">
$hidden
         <input type="submit" name="submit" value="�����ғ��͉�ʂɐi��" style="width:150px">
         </form>
        </td>

EOM

					}else{

print<<"EOM";
        <td>
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="order1">
         <input type="hidden" name="total" value="$subtotal">
$hidden
         <input type="submit" name="submit" value="�����ғ��͉�ʂɐi��" style="width:150px">
         </form>
        </td>
EOM

					}

				}

print<<"EOM";
       </tr>
      </table>
EOM


#SSL���ς̍��m�i�T�C�������H�j
				if($location eq "up" && $crt42 eq "on" && $crt43 ne ""){

print<<"EOM";
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="left" valign="middle">
        $t1_font1
        <span style="font-size:10pt;font-weight:bold;">
�E���T�C�g�́A���q�l�ɂ����S���ăV���b�s���O�����Ē������߁A�f�W�^��ID��p����<br>
&nbsp;&nbsp;SSL�Í����ɂ���ăC���^�[�l�b�g��ł̈��S�ȒʐM��i���m�ۂ��Ă���܂��B<br>
�E(���肢)���������r���ŉ����ؒf������u���E�U������肢�Ȃ��ł��������B<br>
&nbsp;&nbsp;�����������e�����Z�b�g�����ꍇ���������܂��B
        </span>
        $t1_font2
        </td>
       </tr>
      </table>
EOM

				}

print<<"EOM";
      <br>
EOM

				#�ʐM�̔��@��\���B
				&sales;

				#������\���B
				&carriage;

				#�A��������\���B
				&reports;

print<<"EOM";
      </div>
EOM

			}
		}
	}
}
##################################################
# payment
# ���σy�[�W�B
##################################################
sub payment{

	#���������猈�ώ葱�������܂ł̗L�������~24���ԁB
	$beforday = $crt31 * 24;

	#�^�C���]�[������{���ԂցB
	$ENV{'TZ'} = "JST-9";

	#�L�������Z�b�g�B
	$times = time - $beforday * 3600;

	#�b�A���A���A���A���A�N�A�j���A�_�~�[�A�_�~�[
	($sec,$min,$hour,$mday,$mon,$year,$wday,$dummy,$dummy) = localtime($times);

	#�j���z��̍쐬�B
	@week = ('��','��','��','��','��','��','�y');

	#�����̃t�H�[�}�b�g�B
	$date = sprintf("%04d\%02d\%02d",$year + 1900,$mon + 1,$mday);

	#�L�������͈͓��B
	if($date < $in{'date'} ){

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle"><strong>���������肪�Ƃ��������܂����B</strong></td>
       </tr>
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><font size="-1">���L�́uZEUS�N���W�b�g���σy�[�W�ցv���N���b�N����,<br>ZEUS�N���W�b�g���σV�X�e���ɂČ��ώ葱�����s���Ă��������B</font></td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
         <form action="./zeus.cgi" method="post" style="margin-bottom:0" name="settlement">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="cart" value="payment">
         <input type="hidden" name="money" value="$in{'money'}">
         <input type="hidden" name="usrmail" value="$in{'usrmail'}">
         <input type="submit" name="go" value="ZEUS�N���W�b�g���σy�[�W��" style="display:none">
         </form>
         <noscript><strong>[���ς��s�����߂ɂ�JavaScript�𗘗p\��\�\\�ɂ��Ă��������B]</strong></noscript>
        </td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><a href="http://www.cardservice.co.jp" target="_blank"><img src="$imgdir/zeus.gif" border="0" alt="ZEUS�N���W�b�g���σV�X�e��"></a></td>
EOM

		#�N���W�b�g���p�\�ȃJ�[�h��ނ̔��ʁB
		#visa
		if($crt26 eq "on"){print"        <td><img src=\"$imgdir/visa.gif\" border=\"0\"></td>\n";}
		#master
		if($crt27 eq "on"){print"        <td><img src=\"$imgdir/master.gif\" border=\"0\"></td>\n";}
		#amex
		if($crt28 eq "on"){print"        <td><img src=\"$imgdir/amex.gif\" border=\"0\"></td>\n";}
		#jcb
		if($crt29 eq "on"){print"        <td><img src=\"$imgdir/jcb.gif\" border=\"0\"></td>\n";}
		#diners
		if($crt30 eq "on"){print"        <td><img src=\"$imgdir/diners.gif\" border=\"0\"></td>\n";}

print<<"EOM";
       </tr>
      </table>
      <br>
      </div>
EOM

	#�L�������͈͊O�B
	}else{

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><strong>���ώ葱�����s���܂���B</strong></td>
       </tr>
       <tr>
        <td><font size="-1">���ώ葱�������܂ł̗L�������߂��Ă��邽�߂ɖ����ɂȂ��Ă���܂��B</font></td>
       </tr>
      </table>
      </div>
EOM

	}
}

##################################################
# payment
# ���σy�[�W�B
##################################################
sub payment_nicos{

print<<"EOM";
      <div align="center">
      <form name="page_end">
      <input type="hidden" name="address_go" value="same">
      <input type="hidden" name="address_save_go" value="">
      </form>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle"><strong>���������肪�Ƃ��������܂����B</strong></td>
       </tr>
      </table>
      <br>
      </div>
EOM


}

1;
