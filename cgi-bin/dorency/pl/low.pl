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
# cart1
# ���i���B
##################################################
sub cart1{

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
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���i��$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���l$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�P���i�ō��݁j$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1����$t1_font2</td>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���z�i�ō��݁j$t1_font2</td>
       </tr>
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

				#�\���ϐ��̏������B
				local($unit_price,$type,$other1,$other2);

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

				#���i�P����u���B
				$unit_price =~ s/,//g;

				#���i���~���i�P�������z�B
				$price = $t_unit * $unit_price;

				#���i�P���Q��ݒ�B
				$unit_price2 = $unit_price;

				#���i�P���Q��u���B
				$unit_price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#���z�Q��ݒ�B
				$price2 = $price;

				#���z�Q��u���B
				$price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#[���i��]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$title$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1
EOM

				#[���l]��\���B
				if($type ne "")  {print"        $type<br>\n";}
				if($other1 ne ""){print"        $other1<br>\n";}
				if($other2 ne ""){print"        $other2<br>\n";}
				if($type eq "" && $other1 eq "" && $other2 eq ""){
					print"        &nbsp;\n";
				}

				#[�P���i�ō��݁j][����][���z�i�ō��݁j]��\���B

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2�~$t2_font2</td>
       </tr>
EOM
			}
		}
	}

print<<"EOM";
      </table>
      <br>
EOM

}
##################################################
# order_edit
# �z������ҏW��ʁB
##################################################
sub order_edit{

	#�p�����[�^�����擾�B
	&shop_hidden_set;
	&user_hidden_set;
	&delivery_hidden_set;

	#�p�����[�^���擾�B
	while(($x,$y) = each %in){

		#�p�����[�^����item�̏ꍇ�B
		if($x =~ /^item/){

			$item_hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

		}
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

	my $count1 = 0;
	my $count2 = 0;
	my $data   = "";

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
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="order_edit">
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
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle" colspan="5">
         <table border="0" align="left" width="100%">
          <tr>
           <td align="left" width="50%">$t2_font1�c���F<span id="view$count1">$t_unit</span>$t2_font2</td>
EOM

				if($in{'submit'} eq "���͉�ʂɖ߂�"){

print<<"EOM";
           <td align="right" width="50%"><input name="review" type="button" id="review" value="�U�蕪�����̏�����" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

				}else{

print<<"EOM";
           <td align="right" width="50%"><input name="review" type="button" id="review" value="�U�蕪������߂�"   onClick="remake_back($count1)" style="width:150px;"><input name="review" type="button" id="review" value="�U�蕪�����̏�����" onClick="restart('$count1')"   style="width:150px;"></td>
EOM

				}

print<<"EOM";
          </tr>
         </table>
        </td>
       </tr>
EOM

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

           <td align="left">$t2_font1����$t2_font2
           <input type="hidden" name="back$edit_code\D$code" id="back$count1$count2" value="$in{"item$edit_code\D$code"}">
           <select name="item$edit_code\D$code" id="$count1$count2" onChange="remake('$count1',this.id)" style="width:50px;">
           </select>
           </td>

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
           [����]$send2�~
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
        <td><input type="submit" name="order_edit" value="�X�V����" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
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

	for (var i0 = 0 ; i0 < watch_list[id1][id2].length ; i0++) {

		if (watch_list[id1][id2][i0] != "" || i0 == 0) {								// �Ď��z��̒l��null�ł͂Ȃ����A�܂��͏����l�̏ꍇ

			addo = document.createElement('option');								// option�v�f�𐶐�

			if (obj.childNodes[cnt1] != undefined) {

				obj.removeChild(obj.childNodes[cnt1]);								// option�v�f��e�v�f�iselect�j�֒ǉ�����O�ɃS�~������

			}

			obj.appendChild(addo);											// option�v�f��e�v�f�iselect�j�֒ǉ�

			obj.childNodes[cnt1].setAttribute('value',watch_list[id1][id2][i0]);					// option�v�f��value��ݒ�

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
      </div>
EOM

}
##################################################
# user_edit
# �����ҏ��ҏW��ʁB
##################################################
sub user_edit{

	#�p�����[�^�����擾�B
	&shop_hidden_set;

	if($in{'address'} eq "other"){

		#�p�����[�^�����擾�B
		&delivery_hidden_set;

		#�p�����[�^���擾�B
		while(($x,$y) = each %in){

			#�p�����[�^����item�̏ꍇ�B
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
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

print<<"EOM";
      <div align="center">
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
	if($cart_user17 eq "")    {$select17_1 = " selected";}
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
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="user_edit">
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
        <input type="text" name="user_data" value="$cart_user15" size="40" style="ime-mode:disabled" maxlength="64"><br><br>
        ���m�F�̂��߂ɂ�����x���[���A�h���X����͂��Ă��������B<br>
        <input type="text" name="user_data" value="$cart_user16" size="40" style="ime-mode:disabled" maxlength="64">
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
        <input type="text" name="user_data" value="$cart_user16" size="40" style="ime-mode:disabled" maxlength="200">
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
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="user_edit" value="�X�V����" style="width:150px"></td>
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
##################################################
# payment_edit
# �x�����@�ҏW��ʁB
##################################################
sub payment_edit{

	#�p�����[�^�����擾�B
	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#�p�����[�^�����擾�B
		&delivery_hidden_set;

		#�p�����[�^���擾�B
		while(($x,$y) = each %in){

			#�p�����[�^����item�̏ꍇ�B
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
	}

	#�x�������@���I������Ă����ꍇ�B
	if($in{'payment'} eq "��s�U�荞��"){

		$checked1 = " checked";

	}elsif($in{'payment'} eq "�����"){

		$checked2 = " checked";

	}elsif($in{'payment'} eq "�X�֐U��"){

		$checked3 = " checked";

	}elsif($in{'payment'} eq "ZEUS����"){

		$checked4 = " checked";

	}elsif($in{'payment'} eq "NICOS����"){

		$checked5 = " checked";

	}elsif($in{'payment'} eq "NICOS���C�g����"){

		$checked6 = " checked";

	}elsif($in{'payment'} eq "���̑�"){

		$checked7 = " checked";

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

print<<"EOM";
      <div align="center">
EOM

	#���i����\���B
	&cart1;

	#�A��������\���B
	&reports;

print<<"EOM";
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="payment_edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���x�����v���z����т��x�����@ $t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        [���x�����̍��v���z] $in{'subtotal2'}�~<br>
        [���x�����̕��@]
EOM

	#�x�������@�̑I��\���B
	if($crt19 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"��s�U�荞��\"$checked1>��s�U�荞�� \n";}
	if($crt20 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"�����\"$checked2>����� \n";}
	if($crt21 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"�X�֐U��\"$checked3>�X�֐U�� \n";}
	if($crt24 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"ZEUS����\"$checked4>�N���W�b�g���� \n";}
	if($crt33 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"NICOS����\"$checked5>�N���W�b�g���� \n";}
	if($crt45 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"NICOS���C�g����\"$checked6>�N���W�b�g���� \n";}
	if($crt22 eq "on"){print"        <input type=\"radio\" name=\"payment\" value=\"���̑�\"$checked7>���̑� \n";}

	#�x�������@���N���W�b�g�J�[�h�̏ꍇ�B
	if($crt24 eq "on"){

print<<"EOM";
        <br><br>ZEUS�N���W�b�g���σV�X�e���������p�ɂȂ�܂��B
        <table border="0" cellpadding="1" cellspacing="1">
         <tr>
          <td><a href="http://www.cardservice.co.jp" target="_blank"><img src="$imgdir/zeus.gif" border="0" alt="ZEUS�N���W�b�g���σV�X�e��"></a></td>
EOM

		#�N���W�b�g�J�[�h�̑I��\���B
		if($crt26 eq "on"){print"          <td><img src=\"$imgdir/visa.gif\" border=\"0\"></td>\n";}
		if($crt27 eq "on"){print"          <td><img src=\"$imgdir/master.gif\" border=\"0\"></td>\n";}
		if($crt28 eq "on"){print"          <td><img src=\"$imgdir/amex.gif\" border=\"0\"></td>\n";}
		if($crt29 eq "on"){print"          <td><img src=\"$imgdir/jcb.gif\" border=\"0\"></td>\n";}
		if($crt30 eq "on"){print"          <td><img src=\"$imgdir/diners.gif\" border=\"0\"></td>\n";}

print<<"EOM";
         </tr>
        </table>
EOM

	}

	if($crt33 eq "on" || $crt45 eq "on"){

print<<"EOM";
        <br><br>NICOS�N���W�b�g���σV�X�e���������p�ɂȂ�܂��B
        <table border="0" cellpadding="1" cellspacing="1">
         <tr>
          <td><a href="http://www.cr.mufg.jp/" target="_blank"><img src="$imgdir/ufj_nicosl.gif" border="0" alt="NICOS�N���W�b�g���σV�X�e��"></a></td>
         </tr>
        </table>
EOM

	}

	if($crt38 ne ""){

print<<"EOM";
        <br>
        [���ӎ���]<br>
        $crt38
EOM

	}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="payment_edit" value="�X�V����" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
      </div>
EOM

}
##################################################
# delivery_day_edit
# �z����]���ҏW��ʁB
##################################################
sub delivery_day_edit{

	#�p�����[�^�����擾�B
	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#�p�����[�^�����擾�B
		&delivery_hidden_set;

		#�p�����[�^���擾�B
		while(($x,$y) = each %in){

			#�p�����[�^����item�̏ꍇ�B
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
	}

	#���̓T�C�Y�`�F�b�N�B�i�z����]���j
	if($in{'delivery_day'} eq ""){

		$delivery_day = "";

	}else{

		$delivery_day = $in{'delivery_day'};
		$delivery_day =~ s/&lt;br&gt;/\n/g;

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

print<<"EOM";
      <div align="center">
EOM

	#���i����\���B
	&cart1;

print<<"EOM";
      <form action="$script"  method="post" style="margin-bottom:0" name="calendar">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="message" value="$in{'message'}">
      <input type="hidden" name="type" value="delivery_day_edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
EOM

	if($cri6 eq "1"){

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�z����]��������ꍇ�͂��L����������(�K�{)$t1_font2</td>
EOM

	}else{

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�z����]��������ꍇ�͂��L����������$t1_font2</td>
EOM

	}

print<<"EOM";
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>
         <table border="0" cellspacing="0" cellpadding="0">
          <tr>
           <td valign="top">$t2_font1<textarea name="delivery_day" cols="40" rows="5">$delivery_day</textarea>$t2_font2</td>
           <td valign="top"><button id="btn1" style="height:24" onclick="MM_openBrCalendarWindow(btn1,'calendar.cgi','calendar','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=220,height=220');return(false);">�J�����_�[���I��</button></td>
          </tr>
         </table>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="delivery_day_edit" value="�X�V����" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
      </div>
EOM

}
##################################################
# message_edit
# ���ӌ��E�����z�E����]���ҏW��ʁB
##################################################
sub message_edit{

	#�p�����[�^�����擾�B
	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#�p�����[�^�����擾�B
		&delivery_hidden_set;

		#�p�����[�^���擾�B
		while(($x,$y) = each %in){

			#�p�����[�^����item�̏ꍇ�B
			if($x =~ /^item/){

				$hidden .= "<input type=\"hidden\" name=\"$x\" value=\"$y\">\n";

			}
		}
	}

	#���̓T�C�Y�`�F�b�N�B�i���ӌ��E�����z�E����]���j
	if($in{'message'} eq ""){

		$message = "";

	}else{

		$message = $in{'message'};
		$message =~ s/&lt;br&gt;/\n/g;

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

print<<"EOM";
      <div align="center">
EOM

	#���i����\���B
	&cart1;

print<<"EOM";
      <form action="$script" name="user_data" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="$in{'cart'}">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="type" value="message_edit">
$hidden
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
EOM

	if($cri6 eq "1"){

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���ӌ��E�����z�E����]��(�K�{)$t1_font2</td>
EOM

	}else{

print<<"EOM";
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���ӌ��E�����z�E����]��$t1_font2</td>
EOM

	}

print<<"EOM";
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<textarea name="message" cols="40" rows="5">$message</textarea>$t2_font2</td>
       </tr>
      </table>
      <br>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="message_edit" value="�X�V����" style="width:150px"></td>
       </tr>
      </table>
      </form>
      <br>
      </div>
EOM

}
##################################################
# sales
# �ʐM�̔��@�B
##################################################
sub sales{

	if($low50 eq ""){

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

		#�̔���̂�\���B
		if($low1 ne "" || $low2 ne "" || $low3 ne ""){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td colspan="2" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�̔���̂ɂ���$t1_font2</td>
       </tr>
EOM

			#[�̔��Ǝ�]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�̔��Ǝ�$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low1 ne ""){
				print"        $low1\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[�^�c�ӔC��]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�^�c�ӔC��$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low2 ne ""){
				print"        $low2\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[���ݒn�E�A����]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1���ݒn�E�A����$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low3 ne ""){
				print"        $low3\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		#�̔�������\���B
		if($low4 ne "" || $low5 ne "" || $low6 ne "" || $crt24 eq "on" 
			|| $low7 ne "" || $low8 ne "" || $low9 ne "" || $low10 ne "" 
			|| $low11 ne "" || $low12 ne "" || $low13 ne "" || $low14 ne "" || $low15 ne ""){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td colspan="2" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�̔������ɂ���$t1_font2</td>
       </tr>
EOM

			#[�\�����ݕ��@]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�\\�����ݕ��@ $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low4 ne ""){
				print"        $low4\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[�̔����i]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�̔����i$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low5 ne ""){
				print"        $low5\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[���x�����@]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1���x�����@ $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low6 ne ""){
				print"         $low6\n";
			}else{
				print"         &nbsp;\n";
			}

			#�J�[�h��ʂ�\���B
			if($crt24 eq "on"){

print<<"EOM";
         <br><br>ZEUS�N���W�b�g���σV�X�e���������p�ɂȂ�܂��B$t2_font2
         <table border="0" cellpadding="1" cellspacing="1">
          <tr>
           <td><a href="http://www.cardservice.co.jp" target="_blank"><img src="$imgdir/zeus.gif" border="0" alt="ZEUS�N���W�b�g���σV�X�e��"></a></td>
EOM

				if($crt26 eq "on"){print"           <td><img src=\"$imgdir/visa.gif\" border=\"0\"></td>\n";}
				if($crt27 eq "on"){print"           <td><img src=\"$imgdir/master.gif\" border=\"0\"></td>\n";}
				if($crt28 eq "on"){print"           <td><img src=\"$imgdir/amex.gif\" border=\"0\"></td>\n";}
				if($crt29 eq "on"){print"           <td><img src=\"$imgdir/jcb.gif\" border=\"0\"></td>\n";}
				if($crt30 eq "on"){print"           <td><img src=\"$imgdir/diners.gif\" border=\"0\"></td>\n";}

print<<"EOM";
          </tr>
         </table>
EOM

			}

			if($crt33 eq "on" || $crt45 eq "on"){

print<<"EOM";
        <br><br>NICOS�N���W�b�g���σV�X�e���������p�ɂȂ�܂��B$t2_font2
        <table border="0" cellpadding="1" cellspacing="1">
         <tr>
          <td><a href="http://www.cr.mufg.jp/" target="_blank"><img src="$imgdir/ufj_nicosl.gif" border="0" alt="NICOS�N���W�b�g���σV�X�e��"></a></td>
         </tr>
        </table>
EOM

			}

print<<"EOM";
        </td>
       </tr>
EOM

			#[���͂�����]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1���͂�����$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low7 ne ""){
				print"        $low7\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[�\�����ݗL������]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�\\�����ݗL������$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low8 ne ""){
				print"        $low8\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[�̔����ʂ̐���]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�̔����ʂ̐���$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low9 ne ""){
				print"        $low9\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[�ԕi�ƌ���]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�ԕi�ƌ���$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low10 ne ""){
				print"        $low10\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[�t�є�p]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�t�є�p$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low11 ne ""){
				print"        $low11\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[��������]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1��������$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low12 ne ""){
				print"        $low12\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[����ł̈���]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1����ł̈���$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low13 ne ""){
				print"        $low13\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[���i�ۏ�]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1���i�ۏ�$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low14 ne ""){
				print"        $low14\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

			#[�₢���킹����]��\���B

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle" width="140">$t2_font1�₢���킹����$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1
EOM

			if($low15 ne ""){
				print"        $low15\n";
			}else{
				print"        &nbsp;\n";
			}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

	}

}
##################################################
# carriage
# �����B
##################################################
sub carriage{

	#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
	if($crt5 ne "0"){

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

		#�����v�Z�ΏۊO����グ�Œ���z�B
		$free = $crt5;
		$free =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�k�C�������B
		$hokkaido = $crt6;
		$hokkaido =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�k���k�����B
		$kitatohoku = $crt7;
		$kitatohoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�쓌�k�����B
		$minamitohoku = $crt8;
		$minamitohoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�k�֓������B
		$kitakanto = $crt9;
		$kitakanto =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#��֓������B
		$minamikanto = $crt10;
		$minamikanto =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�M�z�����B
		$shinetsu = $crt11;
		$shinetsu =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�k�������B
		$hokuriku = $crt12;
		$hokuriku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#���������B
		$chubu = $crt13;
		$chubu =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�֐������B
		$kansai = $crt14;
		$kansai =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#���������B
		$chugoku = $crt15;
		$chugoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#�l�������B
		$shikoku = $crt16;
		$shikoku =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#��B�����B
		$kyushu = $crt17;
		$kyushu =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#���̑������B
		$sonota = $crt18;
		$sonota =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#������\���B

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td colspan="6" background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�z����ɉ����Ĉȉ��̑������K�v�ƂȂ�܂��B$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�k�C��$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$hokkaido�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�k���k$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kitatohoku�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�쓌�k$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$minamitohoku�~$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�k�֓�$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kitakanto�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1��֓�$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$minamikanto�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�M�z$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$shinetsu�~$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�k��$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$hokuriku�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1����$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$chubu�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�֐�$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kansai�~$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1����$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$chugoku�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�l��$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$shikoku�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1��B$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$kyushu�~$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1���̑�$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$sonota�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1&nbsp;$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1&nbsp;$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1&nbsp;$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1&nbsp;$t2_font2</td>
       </tr>
EOM

		#�����v�Z�ΏۊO����グ�Œ���z�����݂���ꍇ�B
		if($crt5 ne ""){

print<<"EOM";
       <tr>
        <td colspan="6" background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1�����w�����z��$free�~�ȏ�̒����̏ꍇ�͑��������B$t2_font2</td>
       </tr>
EOM

		}

print<<"EOM";
      </table>
      <br>
EOM

	}
}
##################################################
# reports
# �A�������B
##################################################
sub reports{

	#�A��������\���B
	if($crt23 ne ""){

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
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�A������$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 valign="middle">$t2_font1$crt23$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

	}
}
##################################################
# cart_error
# �G���[���b�Z�[�W�B
##################################################
sub cart_error{

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="30" align="center">-----------------<strong>�G���[���b�Z�[�W</strong>-----------------</td>
       </tr>
       <tr>
        <td align="center">
EOM

	#�G���[���b�Z�[�W�̕\���B
	for($i = 0 ; $i <= $#errorMsg ; $i++){
		print"        <font color=\"#FF0000\" size=\"-1\"><strong>$errorMsg[$i]</strong></font><br>\n";
	}

print<<"EOM";
        </td>
       </tr>
       <tr>
        <td align="center">
         <form action="$script" method="post" style="margin-bottom:0">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="cart" value="$in{'cart'}">
         <input type="hidden" name="total" value="$in{'total'}">
         <input type="hidden" name="address" value="$in{'address'}">
         <input type="hidden" name="payment" value="$in{'payment'}">
         <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
         <input type="hidden" name="message" value="$in{'message'}">
         <input type="hidden" name="type" value="$in{'type'}">
EOM

	if($in{'address'} eq "other"){

		#�N�b�L�[�𐸍��B
		foreach $shop(@shop){

			#���i���𕪊��B
			local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop);

			#���ʏ������B
			$total_count = "0";

			#���t�Ńp�����[�^��񂩂琔�ʏ����擾�B
			while(($m,$n) = each %in){

				#�p�����[�^�����i�Ɠ����ꍇ�B
				if($m eq "item$t1_code"){

					print"<input type=\"hidden\" name=\"$m\" value=\"$n\">\n"

				}
			}

			#�z����̐����B
			foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

				#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
				local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$DELIVERY_DATA{$cd});

				#���t�Ńp�����[�^��񂩂琔�ʏ����擾�B
				while(($m,$n) = each %in){

					#�p�����[�^�����i�Ɠ����ꍇ�B
					if($m eq "item$t1_code\D$t2_code"){

						print"<input type=\"hidden\" name=\"$m\" value=\"$n\">\n"

					}
				}
			}
		}
	}

print<<"EOM";
$hidden
<input type="hidden" name="r_delivery_address" value="@delivery_address[0]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[1]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[2]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[3]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[4]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[5]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[6]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[7]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[8]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[9]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[10]">
<input type="hidden" name="r_delivery_address" value="@delivery_address[11]">
         <input type="submit" name="submit" value="���͉�ʂɖ߂�">
         </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}

1;
