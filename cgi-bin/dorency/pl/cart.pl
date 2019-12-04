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
# shop_hidden_set
# �p�����[�^�����擾�B
##################################################
sub shop_hidden_set{

	#���i�f�[�^�����`���B
	foreach $shop(@shop){

		#���i���𕪊��B
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop);

		#���i�f�[�^�����`���B
		$hidden .= "<input type=\"hidden\" name=\"$t1_code\" value=\"$shop\">\n";

	}

}
##################################################
# user_hidden_set
# �p�����[�^�����擾�B
##################################################
sub user_hidden_set{

$data_check = "No";

	#���q�l�f�[�^�����`���B
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user0\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user1\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user2\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user3\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user4\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user5\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user6\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user7\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user8\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user9\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user10\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user11\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user12\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user13\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user14\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user15\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user16\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user17\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user18\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user19\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user20\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user21\">\n";
	$hidden .= "<input type=\"hidden\" name=\"user_data\" value=\"$cart_user22\">\n";



}
##################################################
# delivery_hidden_set
# �p�����[�^�����擾�B
##################################################
sub delivery_hidden_set{

	#�z����f�[�^�����`���B
	foreach $cd1(@cookie_delivery1){

		local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$cd1);
		$DELIVERY_DATA{$t_code} = $cd1;

		#�z����f�[�^�����`���B
		$hidden .= "<input type=\"hidden\" name=\"$t_code\" value=\"$cd1\">\n";

	}
	foreach $cd2(@cookie_delivery2){

		local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$cd2);
		$DELIVERY_DATA{$t_code} = $cd2;

		#�z����f�[�^�����`���B
		$hidden .= "<input type=\"hidden\" name=\"$t_code\" value=\"$cd2\">\n";

	}
	foreach $cd3(@cookie_delivery3){

		local($t_code,$t_name1,$t_name2,$t_kana1,$t_kana2,$t_address1,$t_address2,$t_address3,$t_address4,$t_address5,$t_tel1,$t_tel2,$t_tel3) = split(/:/,$cd3);
		$DELIVERY_DATA{$t_code} = $cd3;

		#�z����f�[�^�����`���B
		$hidden .= "<input type=\"hidden\" name=\"$t_code\" value=\"$cd3\">\n";

	}

}
##################################################
# item_cookie_get
# ���i�����N�b�L�[����擾�B
##################################################
sub item_cookie_get{

	#�N�b�L�[�����擾�B
	$cookie = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie);

	#�N�b�L�[�𐸍��B
	foreach $pair(@pairs){

		#�N�b�L�[���p�����[�^���A�f�[�^�ɕ����B
		local($name,$value) = split(/=/,$pair);

		#�p�����[�^������X�y�[�X���폜�B
		$name =~ s/\s//g;

		#���t�Ƀ}�b�`���f�[�^������ꍇ�B
		if($name =~ m/^COMMODITY$/ && $value ne ""){

			#���i���𕪊��B
			(@shop1) = split(/,/,$value);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $shop1(@shop1){

		#���i���𕪊��B
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop1);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_category   ne "" 
		&& $t1_page       ne "" 
		&& $t1_code       ne "" 
		&& $t1_id         ne "" 
		&& $t1_unit       ne "" 
		&& $t1_unit_price ne "" 
		&& $t1_other1     ne "" 
		&& $t1_other2     ne ""){

			#�L�����e�����擾�B
			if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
				open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				@shop_storycomment = <IN>;
				flock(IN,8);		# ���b�N�����B
				close(IN);
			}

			#�L�����e���𐸍��B
			foreach (@shop_storycomment){

				#�L�����e���𕪊��B
				local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

				$id = sprintf("%010d",$no);

				#��񂪑��݂��Ă����ꍇ�B
				if($id eq $t1_id){

					#���i�����N�b�L�[�f�[�^�Ɍ`���B
					$t_order .= "$shop1,";

					#���i����z��ɑ���B
					push(@shop,$shop1);

				}
			}
		}
	}


	#�N�b�L�[��ݒ�B
	print"Set-Cookie: COMMODITY=$t_order; path=/;\n";

}
##################################################
# item_get
# ���i�����擾�B
##################################################
sub item_get{

	#�N�b�L�[�����擾�B
	$cookie = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie);

	#�N�b�L�[�𐸍��B
	foreach $pair(@pairs){

		#�N�b�L�[���p�����[�^���A�f�[�^�ɕ����B
		local($name,$value) = split(/=/,$pair);

		#�p�����[�^������X�y�[�X���폜�B
		$name =~ s/\s//g;

		#���t�Ƀ}�b�`���f�[�^������ꍇ�B
		if($name =~ m/^COMMODITY$/ && $value ne ""){

			#���i���𕪊��B
			(@shop1) = split(/,/,$value);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $shop1(@shop1){

		#���i���𕪊��B
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop1);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_category   ne "" 
		&& $t1_page       ne "" 
		&& $t1_code       ne "" 
		&& $t1_id         ne "" 
		&& $t1_unit       ne "" 
		&& $t1_unit_price ne "" 
		&& $t1_other1     ne "" 
		&& $t1_other2     ne ""){

			#�L�����e�����擾�B
			if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
				open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				@shop_storycomment = <IN>;
				flock(IN,8);		# ���b�N�����B
				close(IN);
			}

			#�L�����e���𐸍��B
			foreach (@shop_storycomment){

				#�L�����e���𕪊��B
				local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

				$id = sprintf("%010d",$no);

				#��񂪑��݂��Ă����ꍇ�B
				if($id eq $t1_id){

					#�p�����[�^���擾�B
					while(($x,$y) = each %in){

						#�p�����[�^����10���̐����̏ꍇ�B
						if($x =~ /^\d{10}/){

							#���i���𕪊��B
							local($t2_category,$t2_page,$t2_code,$t2_id,$t2_unit,$t2_unit_price,$t2_other1,$t2_other2) = split(/:/,$y);

							#�p�����[�^�ƃN�b�L�[�������ꍇ�B
							if($t1_category   eq $t2_category 
							&& $t1_page       eq $t2_page 
							&& $t1_code       eq $t2_code 
							&& $t1_id         eq $t2_id 
							&& $t1_unit       eq $t2_unit 
							&& $t1_unit_price eq $t2_unit_price 
							&& $t1_other1     eq $t2_other1 
							&& $t1_other2     eq $t2_other2){

								#���i�����N�b�L�[�f�[�^�Ɍ`���B
								$t_order .= "$shop1,";

								#���i����z��ɑ���B
								push(@shop,$shop1);

							}
						}
					}
				}
			}
		}
	}


	#�N�b�L�[��ݒ�B
	print"Set-Cookie: COMMODITY=$t_order; path=/;\n";

}
##################################################
# item_get_ssl
# ���i�����擾�B
##################################################
sub item_get_ssl{

	#�p�����[�^���擾�B
	while(($x,$y) = each %in){

		#�p�����[�^����10���̐����̏ꍇ�B
		if($x =~ /^\d{10}/){

			#���i����z��ɑ���B
			push(@shop1,$y);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $shop1(@shop1){

		#���i���𕪊��B
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop1);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_category   ne "" 
		&& $t1_page       ne "" 
		&& $t1_code       ne "" 
		&& $t1_id         ne "" 
		&& $t1_unit       ne "" 
		&& $t1_unit_price ne "" 
		&& $t1_other1     ne "" 
		&& $t1_other2     ne ""){

			#�L�����e�����擾�B
			if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
				open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				@shop_storycomment = <IN>;
				flock(IN,8);		# ���b�N�����B
				close(IN);
			}

			#�L�����e���𐸍��B
			foreach (@shop_storycomment){

				#�L�����e���𕪊��B
				local($no,$dsp,$title,$msg,$img1,$wimg1,$himg1,$pimg1,$simg1,$img2,$wimg2,$himg2,$pimg2,$simg2,$img3,$wimg3,$himg3,$pimg3,$simg3,$cmt1,$cmt2,$cmt3,$cmt4,$cmt5,$cmt6,$cmt7,$cmt8,$cmt9,$cmt10,$cmt11,$cmt12,$cmt13,$cmt14,$cmt15,$dsn1,$dsn2,$dsn3,$dsn4,$dsn5,$dsn6,$dsn7,$dsn8,$dsn9,$dsn10,$dsn11,$dsn12,$dsn13,$dsn14,$dsn15,$dsn16,$dsn17,$dsn18,$dsn19,$dsn20,$dsn21,$dsn22,$dsn23,$dsn24,$dsn25,$dsn26,$dsn27,$dsn28,$dsn29,$dsn30,$dsn31,$dsn32,$dsn33,$dsn34,$dsn35,$dsn36,$dsn37,$dsn38,$dsn39,$dsn40,$date,$time) = split(/,/,$_);

				$id = sprintf("%010d",$no);

				#��񂪑��݂��Ă����ꍇ�B
				if($id eq $t1_id){

					#�p�����[�^���擾�B
					while(($x,$y) = each %in){

						#�p�����[�^����10���̐����̏ꍇ�B
						if($x =~ /^\d{10}/){

							#���i���𕪊��B
							local($t2_category,$t2_page,$t2_code,$t2_id,$t2_unit,$t2_unit_price,$t2_other1,$t2_other2) = split(/:/,$y);

							#�p�����[�^�ƃN�b�L�[�������ꍇ�B
							if($t1_category   eq $t2_category 
							&& $t1_page       eq $t2_page 
							&& $t1_code       eq $t2_code 
							&& $t1_id         eq $t2_id 
							&& $t1_unit       eq $t2_unit 
							&& $t1_unit_price eq $t2_unit_price 
							&& $t1_other1     eq $t2_other1 
							&& $t1_other2     eq $t2_other2){

								#���i�����N�b�L�[�f�[�^�Ɍ`���B
								$t_order .= "$shop1,";

								#���i����z��ɑ���B
								push(@shop,$shop1);

							}
						}
					}
				}
			}
		}
	}


	#�N�b�L�[��ݒ�B
	print"Set-Cookie: COMMODITY=$t_order; path=/;\n";

}
##################################################
# item_set
# ���i���𔭍s�B
##################################################
sub item_set{

	#���i�����擾�B
	&item_get;

	#���i�ǉ��t���O���������B
	$add_flg = 0;

	#���i�����������B
	$item = 0;

	#���i�f�[�^�����B
	@shop2 = @shop;

	#���i�f�[�^���𐸍��B
	foreach $shop2(@shop2){

		#���i���𕪊��B
		local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop2);

		#�������i��I�������ꍇ�B
		if($t1_category   eq $in{'category'} 
		&& $t1_page       eq $in{'page'} 
		&& $t1_id         eq $in{'id'} 
		&& $t1_unit_price eq $in{'unit_price'} 
		&& $t1_other1     eq $in{'other1'} 
		&& $t1_other2     eq $in{'other2'}){

			#���i�ǉ��t���O���āB
			$add_flg = 1;

			#���i����ݒ�B
			$t1_unit = $t1_unit + 1;

		}

		#���i�����`���B
		$shop3 = "$t1_category:$t1_page:$t1_code:$t1_id:$t1_unit:$t1_unit_price:$t1_other1:$t1_other2";

		#���i�����N�b�L�[�f�[�^�Ɍ`���B
		$tmp .= "$shop3,";

		#���i����z��ɑ���B
		push(@shop3,$shop3);

		#���i�����J�E���g�A�b�v�B
		$item++;

	}

	#�Ⴄ���i�̏ꍇ�B
	if($add_flg == 0){

		#�I�����i�����`�F�b�N�B
		if($item < 50){

			#���i�����`���B
			$shop3 = "$in{'category'}:$in{'page'}:$in{'code'}:$in{'id'}:$in{'unit'}:$in{'unit_price'}:$in{'other1'}:$in{'other2'}";

			#���i�����N�b�L�[�f�[�^�Ɍ`���B
			$tmp .= "$shop3,";

			#���i����z��ɑ���B
			push(@shop3,$shop3);

		}else{

			push(@errorMsg,"�I���ł��鏤�i�͍ő�50��ނł��B");

		}
	}

	#���i�f�[�^�����B
	@shop = @shop3;

	#�N�b�L�[��ݒ�B
	print"Set-Cookie: COMMODITY=$tmp; path=/;\n";

}
##################################################
# item_edit
# ���i����ύX�B
##################################################
sub item_edit{

	#���i�����擾�B
	&item_get;

	#���i�f�[�^�����B
	@shop2 = @shop;

	#���i�f�[�^���𐸍��B
	foreach $shop2(@shop2){

		#���i���𕪊��B
		local($t3_category,$t3_page,$t3_code,$t3_id,$t3_unit,$t3_unit_price,$t3_other1,$t3_other2) = split(/:/,$shop2);

		if($in{'submit'} eq "�폜"){

			#�폜�t���O���������B
			$del_flg = 0;

			foreach $clear(@clear){

				if($clear eq "edit$t3_code"){

					#�t���O���āB
					$del_flg = 1;

				}
			}

			if($del_flg == 0){

				#���i�����`���B
				$shop3 = "$t3_category:$t3_page:$t3_code:$t3_id:$t3_unit:$t3_unit_price:$t3_other1:$t3_other2";

				#���i�����N�b�L�[�f�[�^�Ɍ`���B
				$tmp .= "$shop3,";

				#���i����z��ɑ���B
				push(@shop3,$shop3);

			}

		}elsif($in{'submit'} eq "�ꊇ�폜"){

			#���ׂč폜�Ȃ̂łȂɂ����Ȃ�

		}elsif($in{'submit'} eq "�ύX" || $in{'submit'} eq ""){

			my @itemStock = ();

			#�T�C�g�T�[�o�[�ݒ���̓ǂݍ��݁B
			if(-e "./itemStock.dat"){

				open(IN,"./itemStock.dat");
				flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
				@itemStock = <IN>;
				flock(IN,8);		# ���b�N�����B
				close(IN);

			}

			my @data = ();

			#�p�����[�^���擾�B
			while(($x,$y) = each %in){

				#�p�����[�^����edit+10���̐����̏ꍇ�B
				if($x =~ /^edit\d{10}/){

					#�������i��I�������ꍇ�B
					if($x eq "edit$t3_code"){

						#���ʃG���[�̏������B
						$errorFlg1 = "";
						$errorFlg2 = "";
						$errorMsg  = "";

						#���l���͂��`�F�b�N�B
						if($y =~ /[^0-9\.]+/){
							$errorFlg1 = 1;
						}else{

							@data = split(/\./,$y);

							if($#data > 1){
								$errorFlg1 = 1;
							}
							if($y <= 0){
								$errorFlg1 = 1;
							}
						}

						if($#itemStock != -1){

							my $data_id0 = "";
							my $data_id1 = "";
							my $data_id2 = "";
							my $data_id3 = "";
							my $data_id4 = "";

							if(-e "$rootdir/page_design/story/comment/$t3_category$t3_page.dat"){
								open(IN,"$rootdir/page_design/story/comment/$t3_category$t3_page.dat");
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

								if($id eq $t3_id){

									$data_id0 = $title;

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

										if($o0 eq $t3_unit_price){

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

											$data_id1 = $unit_price;
											$data_id2 = $type;

										}

										#���i���i��ID���J�E���g�A�b�v�B
										$o0++;

									}

									#���i�ڍ׏��̕����B
									@OTHER1 = split(/<br>/,$cmt3);

									#����1��ID���������B
									$o1 = 1;

									foreach $x(@OTHER1){

										if($o1 eq $t3_other1){
											$data_id3 = $x;
										}

										#����1��ID���J�E���g�A�b�v�B
										$o1++;

									}

									#���i�ڍ׏��̕����B
									@OTHER2 = split(/<br>/,$cmt4);

									#����2��ID���������B
									$o2 = 1;

									foreach $x(@OTHER2){

										if($o2 eq $t3_other2){
											$data_id4 = $x;
										}

										#����2��ID���J�E���g�A�b�v�B
										$o2++;

									}

								}

							}

							foreach my $itemStock(@itemStock){

								my(@is_data) = split(/\,/,$itemStock);

								$is_data[7] = sprintf("%010d",$is_data[7]);

								$is_data[4] =~ s/�F/:/g;
								$is_data[4] =~ s/\&\#44\;//g;
								$is_data[4] =~ s/�A//g;
								$is_data[4] =~ s/�C//g;

								$is_data[1] =~ s/�F/:/g;
								$is_data[1] =~ s/\&\#44\;//g;
								$is_data[1] =~ s/�A//g;
								$is_data[1] =~ s/�C//g;

								if($is_data[0] eq $data_id0 
								&& $is_data[1] eq $data_id2 
								&& $is_data[2] eq $data_id3 
								&& $is_data[3] eq $data_id4 
								&& $is_data[4] eq $data_id1 
								&& $is_data[7] eq $t3_id 
								&& $is_data[8] eq "$t3_category$t3_page"){

									if($is_data[6]){

										if($is_data[6] < $y){

											$errorFlg2 = 1;
											$errorMsg  = "$data_id0/$is_data[1]/$is_data[2]/$is_data[3]�̐��ʂ͍݌ɐ��������Ă��܂��B<br>$is_data[6]�ȉ�����͂��Ă��������B";

										}

									}

								}

							}

						}

						if($errorFlg1 eq "" && $errorFlg2 eq ""){

							#���i�����`���B
							$shop3 = "$t3_category:$t3_page:$t3_code:$t3_id:$y:$t3_unit_price:$t3_other1:$t3_other2";

						}else{

							#���i�����`���B
							$shop3 = "$t3_category:$t3_page:$t3_code:$t3_id:$t3_unit:$t3_unit_price:$t3_other1:$t3_other2";

							if(-e "$rootdir/page_design/story/comment/$t3_category$t3_page.dat"){
								open(IN,"$rootdir/page_design/story/comment/$t3_category$t3_page.dat");
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

								if($id eq $t3_id){

									if($errorFlg1 == 1){
										push(@errorMsg,"$title�̐��ʂ͔��p��������͂��Ă��������B");
									}

									if($errorFlg2 == 1){
										push(@errorMsg,$errorMsg);
									}

								}
							}
						}

						#���i�����N�b�L�[�f�[�^�Ɍ`���B
						$tmp .= "$shop3,";

						#���i����z��ɑ���B
						push(@shop3,$shop3);

					}
				}
			}

			undef(@itemStock);

		}
	}

	#���i�f�[�^�����B
	@shop = @shop3;

	#�N�b�L�[��ݒ�B
	print"Set-Cookie: COMMODITY=$tmp; path=/;\n";

}
##################################################
# cart_user_cookie_get
# ���[�U�[�����N�b�L�[����擾�B
##################################################
sub cart_user_cookie_get{

	#�N�b�L�[�����擾�B
	$cookie = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie);

	#�N�b�L�[���𐸍��B
	foreach $pair(@pairs){

		#���[�J���ϐ���ݒ�B
		local($name,$value) = split(/=/,$pair);

		#�p�����[�^������X�y�[�X���폜�B
		$name =~ s/\s//g;

		#���t�Ƀ}�b�`���f�[�^������ꍇ�B
		if($name =~ m/^BUYER$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#���i���𕪊��B
			(@user_data) = split(/,/,$value);

		}
	}

	#�J���}��ϊ��B
	$user_data[0]  =~ s/&#44;/,/g;
	$user_data[1]  =~ s/&#44;/,/g;
	$user_data[2]  =~ s/&#44;/,/g;
	$user_data[3]  =~ s/&#44;/,/g;
	$user_data[4]  =~ s/&#44;/,/g;
	$user_data[5]  =~ s/&#44;/,/g;
	$user_data[6]  =~ s/&#44;/,/g;
	$user_data[7]  =~ s/&#44;/,/g;
	$user_data[8]  =~ s/&#44;/,/g;
	$user_data[9]  =~ s/&#44;/,/g;
	$user_data[10] =~ s/&#44;/,/g;
	$user_data[11] =~ s/&#44;/,/g;
	$user_data[12] =~ s/&#44;/,/g;
	$user_data[13] =~ s/&#44;/,/g;
	$user_data[14] =~ s/&#44;/,/g;
	$user_data[15] =~ s/&#44;/,/g;
	$user_data[16] =~ s/&#44;/,/g;
	$user_data[17] =~ s/&#44;/,/g;
	$user_data[18] =~ s/&#44;/,/g;
	$user_data[19] =~ s/&#44;/,/g;
	$user_data[20] =~ s/&#44;/,/g;
	$user_data[21] =~ s/&#44;/,/g;
	$user_data[22] =~ s/&#44;/,/g;

	#���O�A���[���AURL���`�B
	$cart_user0  = $user_data[0];
	$cart_user1  = $user_data[1];
	$cart_user2  = $user_data[2];
	$cart_user3  = $user_data[3];
	$cart_user4  = $user_data[4];
	$cart_user5  = $user_data[5];
	$cart_user6  = $user_data[6];
	$cart_user7  = $user_data[7];
	$cart_user8  = $user_data[8];
	$cart_user9  = $user_data[9];
	$cart_user10 = $user_data[10];
	$cart_user11 = $user_data[11];
	$cart_user12 = $user_data[12];
	$cart_user13 = $user_data[13];
	$cart_user14 = $user_data[14];
	$cart_user15 = $user_data[15];
	$cart_user16 = $user_data[16];
	$cart_user17 = $user_data[17];
	$cart_user18 = $user_data[18];
	$cart_user19 = $user_data[19];
	$cart_user20 = $user_data[20];
	$cart_user21 = $user_data[21];
	$cart_user22 = $user_data[22];

}
##################################################
# cart_user_get
# ���[�U�[�����擾�B
##################################################
sub cart_user_get{

	#�N�b�L�[�����擾�B
	$cookie = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie);

	#�N�b�L�[���𐸍��B
	foreach $pair(@pairs){

		#���[�J���ϐ���ݒ�B
		local($name,$value) = split(/=/,$pair);

		#�p�����[�^������X�y�[�X���폜�B
		$name =~ s/\s//g;

		#���t�Ƀ}�b�`���f�[�^������ꍇ�B
		if($name =~ m/^BUYER$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#���i���𕪊��B
			(@buyer) = split(/,/,$value);

		}
	}

	#���O�A���[���AURL���`�B
	if(@user_data[0]  eq $buyer[0] ){$cart_user0  = $buyer[0]; }
	if(@user_data[1]  eq $buyer[1] ){$cart_user1  = $buyer[1]; }
	if(@user_data[2]  eq $buyer[2] ){$cart_user2  = $buyer[2]; }
	if(@user_data[3]  eq $buyer[3] ){$cart_user3  = $buyer[3]; }
	if(@user_data[4]  eq $buyer[4] ){$cart_user4  = $buyer[4]; }
	if(@user_data[5]  eq $buyer[5] ){$cart_user5  = $buyer[5]; }
	if(@user_data[6]  eq $buyer[6] ){$cart_user6  = $buyer[6]; }
	if(@user_data[7]  eq $buyer[7] ){$cart_user7  = $buyer[7]; }
	if(@user_data[8]  eq $buyer[8] ){$cart_user8  = $buyer[8]; }
	if(@user_data[9]  eq $buyer[9] ){$cart_user9  = $buyer[9]; }
	if(@user_data[10] eq $buyer[10]){$cart_user10 = $buyer[10];}
	if(@user_data[11] eq $buyer[11]){$cart_user11 = $buyer[11];}
	if(@user_data[12] eq $buyer[12]){$cart_user12 = $buyer[12];}
	if(@user_data[13] eq $buyer[13]){$cart_user13 = $buyer[13];}
	if(@user_data[14] eq $buyer[14]){$cart_user14 = $buyer[14];}
	if(@user_data[15] eq $buyer[15]){$cart_user15 = $buyer[15];}
	if(@user_data[16] eq $buyer[16]){$cart_user16 = $buyer[16];}
	if(@user_data[17] eq $buyer[17]){$cart_user17 = $buyer[17];}
	if(@user_data[18] eq $buyer[18]){$cart_user18 = $buyer[18];}
	if(@user_data[19] eq $buyer[19]){$cart_user19 = $buyer[19];}
	if(@user_data[20] eq $buyer[20]){$cart_user20 = $buyer[20];}
	if(@user_data[21] eq $buyer[21]){$cart_user21 = $buyer[21];}
	if(@user_data[22] eq $buyer[22]){$cart_user22 = $buyer[22];}

	#�J���}��ϊ��B
	$cart_user0  =~ s/&#44;/,/g;
	$cart_user1  =~ s/&#44;/,/g;
	$cart_user2  =~ s/&#44;/,/g;
	$cart_user3  =~ s/&#44;/,/g;
	$cart_user4  =~ s/&#44;/,/g;
	$cart_user5  =~ s/&#44;/,/g;
	$cart_user6  =~ s/&#44;/,/g;
	$cart_user7  =~ s/&#44;/,/g;
	$cart_user8  =~ s/&#44;/,/g;
	$cart_user9  =~ s/&#44;/,/g;
	$cart_user10 =~ s/&#44;/,/g;
	$cart_user11 =~ s/&#44;/,/g;
	$cart_user12 =~ s/&#44;/,/g;
	$cart_user13 =~ s/&#44;/,/g;
	$cart_user14 =~ s/&#44;/,/g;
	$cart_user15 =~ s/&#44;/,/g;
	$cart_user16 =~ s/&#44;/,/g;
	$cart_user17 =~ s/&#44;/,/g;
	$cart_user18 =~ s/&#44;/,/g;
	$cart_user19 =~ s/&#44;/,/g;
	$cart_user20 =~ s/&#44;/,/g;
	$cart_user21 =~ s/&#44;/,/g;
	$cart_user22 =~ s/&#44;/,/g;

}
##################################################
# cart_user_set
# ���[�U�[���𔭍s�B
##################################################
sub cart_user_set{

	#�N�b�L�[�͍��ێ��Ԃ��L�[�Ƃ��A�ۑ�������365���ԁB�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#�j�����ƏT�����p��\���̔z��Œ�`�B
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365����̍��ێ��Ԃ��w��t�H�[�}�b�g���B[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	#���[�U�[���̃`�F�b�N�B
	if(@user_data[0] eq "")                              {push(@errorMsg,"�������Җ��i���j�����͂���Ă��܂���B");}
	if(@user_data[1] eq "")                              {push(@errorMsg,"�������Җ��i���j�����͂���Ă��܂���B");}
	if($cri1 eq "1" && @user_data[2] eq "")              {push(@errorMsg,"�������Җ��̃t���K�i�i���j�����͂���Ă��܂���B");}
	if($cri1 eq "1" && @user_data[3] eq "")              {push(@errorMsg,"�������Җ��̃t���K�i�i���j�����͂���Ă��܂���B");}
	if(@user_data[4] eq "" || length(@user_data[4]) != 3){push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�����������͂���Ă��܂���B");}
	if(@user_data[4] =~ /[^0-9]/)                        {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@user_data[5] eq "" || length(@user_data[5]) != 4){push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�����������͂���Ă��܂���B");}
	if(@user_data[5] =~ /[^0-9]/)                        {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@user_data[6] eq "")                              {push(@errorMsg,"�s���{�����I������Ă��܂���B");}
	if(@user_data[7] eq "")                              {push(@errorMsg,"�Z���i�S�s�撬���j�����͂���Ă��܂���B");}
	if(@user_data[8] eq "")                              {push(@errorMsg,"�Z���i����ȍ~�̏Z���j������Ă��܂���B");}
	if(@user_data[9] eq "")                              {push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if(@user_data[9] =~ /[^0-9]/)                        {push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@user_data[10] eq "")                             {push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if(@user_data[10] =~ /[^0-9]/)                       {push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@user_data[11] eq "")                             {push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if(@user_data[11] =~ /[^0-9]/)                       {push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}

	#�e�`�w�ԍ����̓G���[�B
	if($cri2 eq "1"){
		if(@user_data[12] eq "")      {push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�����������͂���Ă��܂���B");}
		if(@user_data[12] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[13] eq "")      {push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�����������͂���Ă��܂���B");}
		if(@user_data[13] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[14] eq "")      {push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�����������͂���Ă��܂���B");}
		if(@user_data[14] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	}elsif($cri2 eq "2"){
		if(@user_data[12] ne "" && @user_data[12] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[13] ne "" && @user_data[13] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[14] ne "" && @user_data[14] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] ne ""){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
		if(@user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
		if(@user_data[12] ne "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�����͂���Ă��܂���B");}
		if(@user_data[12] eq "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�i�Q�ڂ̗��j�����͂���Ă��܂���B");}
		if(@user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�i�R�ڂ̗��j�����͂���Ă��܂���B");}
		if(@user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] eq ""){push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�i�R�ڂ̗��j�����͂���Ă��܂���B");}
	}

	#���[���A�h���X���̓G���[�B
	if(@user_data[15] ne @user_data[16]){
		push(@errorMsg,"���[���A�h���X�i�m�F�p�j����v���Ă܂���B");
	}else{
		$errorMail = mailCheck();
		if($errorMail eq "1"){
			push(@errorMsg,"���[���A�h���X�ɃR���}�u\,�v���܂܂�Ă��܂��B");
		}elsif($errorMail eq "2"){
			push(@errorMsg,"���[���A�h���X�ɃA�b�g�}�[�N�u\@�v���܂܂�Ă��܂���B");
		}elsif($errorMail eq "3"){
			push(@errorMsg,"���[���A�h���X�ɑS�p���܂܂�Ă��܂��B");
		}elsif($errorMail eq "4"){
			push(@errorMsg,"���[���A�h���X�𐳂������͂��ĉ������B");
		}elsif($errorMail eq "5"){
			push(@errorMsg,"���[���A�h���X�̏������s���ł��B");
		}elsif($errorMail eq "6"){
			push(@errorMsg,"���[���A�h���X�����͂���Ă��܂���B");
		}
	}

	#���ʓ��̓G���[�B
	if($cri3 eq "1" && @user_data[17] eq ""){push(@errorMsg,"���ʂ��I������Ă��܂���B");}

	#���N�������̓G���[�B
	if($cri4 eq "1"){
		if(@user_data[18] eq "")      {push(@errorMsg,"���N�����i�N�j�����͂���Ă��܂���B");}
		if(@user_data[19] eq "")      {push(@errorMsg,"���N�����i���j�����͂���Ă��܂���B");}
		if(@user_data[20] eq "")      {push(@errorMsg,"���N�����i���j�����͂���Ă��܂���B");}
		if(@user_data[18] =~ /[^0-9]/){push(@errorMsg,"���N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[19] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[20] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			$errorDate = dateCheck();
			if($errorDate eq "1"){
				push(@errorMsg,"���N�������s���ł��B");
			}
		}
	}elsif($cri4 eq "2"){
		if(@user_data[18] ne "" && @user_data[18] =~ /[^0-9]/){push(@errorMsg,"���N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[19] ne "" && @user_data[19] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[20] ne "" && @user_data[20] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			$errorDate = dateCheck();
			if($errorDate eq "1"){
				push(@errorMsg,"���N�������s���ł��B");
			}
		}
		if(@user_data[18] eq "" && @user_data[19] ne "" &&  @user_data[20] ne ""){push(@errorMsg,"���N�����i�N�j�����͂���Ă��܂���B");}
		if(@user_data[18] ne "" && @user_data[19] eq "" &&  @user_data[20] ne ""){push(@errorMsg,"���N�����i���j�����͂���Ă��܂���B");}
		if(@user_data[18] ne "" && @user_data[19] ne "" &&  @user_data[20] eq ""){push(@errorMsg,"���N�����i���j�����͂���Ă��܂���B");}
		if(@user_data[18] eq "" && @user_data[19] eq "" &&  @user_data[20] ne ""){push(@errorMsg,"���N�����i�N�j�i���j�����͂���Ă��܂���B");}
		if(@user_data[18] eq "" && @user_data[19] ne "" &&  @user_data[20] eq ""){push(@errorMsg,"���N�����i�N�j�i���j�����͂���Ă��܂���B");}
		if(@user_data[18] ne "" && @user_data[19] eq "" &&  @user_data[20] eq ""){push(@errorMsg,"���N�����i���j�i���j�����͂���Ă��܂���B");}
	}

	#���̓T�C�Y�`�F�b�N�B�i���R���͍��ځj
	if($cri7 eq "1"){
		if(@user_data[21] eq ""){
			push(@errorMsg,"$cri8�����͂���Ă��܂���B");
		}
	}
	if(length(@user_data[21]) > 1000){
		push(@errorMsg,"$cri8�̓��͂��������܂��B");
	}else{
		@user_data[21] =~ s/<br>/&lt;br&gt;/g;
	}

	if($#errorMsg == -1){

		#�ۑ�����N�b�L�[���𐮗�B
		$buyer = "@user_data[0],@user_data[1],@user_data[2],@user_data[3],@user_data[4],@user_data[5],@user_data[6],@user_data[7],@user_data[8],@user_data[9],@user_data[10],@user_data[11],@user_data[12],@user_data[13],@user_data[14],@user_data[15],@user_data[16],@user_data[17],@user_data[18],@user_data[19],@user_data[20],@user_data[21],@user_data[22]";

		$buyer =~ s/&quot;/&quot/g;
		$buyer =~ s/&lt;/&lt/g;
		$buyer =~ s/&gt;/&gt/g;
		$buyer =~ s/&#44;/&#44/g;

		if(@user_data[22] eq "on"){

			#user_data���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
			print"Set-Cookie: BUYER=$buyer; expires=$date_gmt path=/;\n";

		}else{

			#�N�b�L�[��ݒ�B
			print"Set-Cookie: BUYER=$buyer path=/;\n";

		}

	}

	#���O�A���[���AURL���`�B
	$cart_user0  = @user_data[0];
	$cart_user1  = @user_data[1];
	$cart_user2  = @user_data[2];
	$cart_user3  = @user_data[3];
	$cart_user4  = @user_data[4];
	$cart_user5  = @user_data[5];
	$cart_user6  = @user_data[6];
	$cart_user7  = @user_data[7];
	$cart_user8  = @user_data[8];
	$cart_user9  = @user_data[9];
	$cart_user10 = @user_data[10];
	$cart_user11 = @user_data[11];
	$cart_user12 = @user_data[12];
	$cart_user13 = @user_data[13];
	$cart_user14 = @user_data[14];
	$cart_user15 = @user_data[15];
	$cart_user16 = @user_data[16];
	$cart_user17 = @user_data[17];
	$cart_user18 = @user_data[18];
	$cart_user19 = @user_data[19];
	$cart_user20 = @user_data[20];
	$cart_user21 = @user_data[21];
	$cart_user22 = @user_data[22];

	#�J���}��ϊ��B
	$cart_user0  =~ s/&#44;/,/g;
	$cart_user1  =~ s/&#44;/,/g;
	$cart_user2  =~ s/&#44;/,/g;
	$cart_user3  =~ s/&#44;/,/g;
	$cart_user4  =~ s/&#44;/,/g;
	$cart_user5  =~ s/&#44;/,/g;
	$cart_user6  =~ s/&#44;/,/g;
	$cart_user7  =~ s/&#44;/,/g;
	$cart_user8  =~ s/&#44;/,/g;
	$cart_user9  =~ s/&#44;/,/g;
	$cart_user10 =~ s/&#44;/,/g;
	$cart_user11 =~ s/&#44;/,/g;
	$cart_user12 =~ s/&#44;/,/g;
	$cart_user13 =~ s/&#44;/,/g;
	$cart_user14 =~ s/&#44;/,/g;
	$cart_user15 =~ s/&#44;/,/g;
	$cart_user16 =~ s/&#44;/,/g;
	$cart_user17 =~ s/&#44;/,/g;
	$cart_user18 =~ s/&#44;/,/g;
	$cart_user19 =~ s/&#44;/,/g;
	$cart_user20 =~ s/&#44;/,/g;
	$cart_user21 =~ s/&#44;/,/g;
	$cart_user22 =~ s/&#44;/,/g;

}
##################################################
# delivery_cookie_get
# �z��������N�b�L�[����擾�B
##################################################
sub delivery_cookie_get{

	#�N�b�L�[�����擾�B
	$cookie = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie);

	#�N�b�L�[�𐸍��B
	foreach $pair(@pairs){

		#�N�b�L�[���p�����[�^���A�f�[�^�ɕ����B
		local($name,$value) = split(/=/,$pair);

		#�p�����[�^������X�y�[�X���폜�B
		$name =~ s/\s//g;

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY1$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery1) = split(/,/,$value);

		}

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY2$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery2) = split(/,/,$value);

		}

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY3$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery3) = split(/,/,$value);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery1(@t1_cookie_delivery1){

		#�z������𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery1);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�z��������N�b�L�[�f�[�^�Ɍ`���B
			$t_delivery1 .= "$t1_cookie_delivery1,";

			#�z�������z��ɑ���B
			push(@cookie_delivery1,$t1_cookie_delivery1);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery2(@t1_cookie_delivery2){

		#���i���𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery2);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�z��������N�b�L�[�f�[�^�Ɍ`���B
			$t_delivery2 .= "$t1_cookie_delivery2,";

			#�z�������z��ɑ���B
			push(@cookie_delivery2,$t1_cookie_delivery2);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery3(@t1_cookie_delivery3){

		#���i���𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery3);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�z��������N�b�L�[�f�[�^�Ɍ`���B
			$t_delivery3 .= "$t1_cookie_delivery3,";

			#�z�������z��ɑ���B
			push(@cookie_delivery3,$t1_cookie_delivery3);

		}
	}

}
##################################################
# delivery_get
# �z��������擾�B
##################################################
sub delivery_get{

	#�N�b�L�[�����擾�B
	$cookie = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie);

	#�N�b�L�[�𐸍��B
	foreach $pair(@pairs){

		#�N�b�L�[���p�����[�^���A�f�[�^�ɕ����B
		local($name,$value) = split(/=/,$pair);

		#�p�����[�^������X�y�[�X���폜�B
		$name =~ s/\s//g;

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY1$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery1) = split(/,/,$value);

		}

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY2$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery2) = split(/,/,$value);

		}

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY3$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery3) = split(/,/,$value);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery1(@t1_cookie_delivery1){

		#�z������𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery1);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�p�����[�^���擾�B
			while(($x,$y) = each %in){

				#�p�����[�^����11���̐����̏ꍇ�B
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#���i���𕪊��B
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#�p�����[�^�ƃN�b�L�[�������ꍇ�B
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#�z��������N�b�L�[�f�[�^�Ɍ`���B
						$t_delivery1 .= "$t1_cookie_delivery1,";

						#�z�������z��ɑ���B
						push(@cookie_delivery1,$t1_cookie_delivery1);

					}
				}
			}
		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery2(@t1_cookie_delivery2){

		#���i���𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery2);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�p�����[�^���擾�B
			while(($x,$y) = each %in){

				#�p�����[�^����11���̐����̏ꍇ�B
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#���i���𕪊��B
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#�p�����[�^�ƃN�b�L�[�������ꍇ�B
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#�z��������N�b�L�[�f�[�^�Ɍ`���B
						$t_delivery2 .= "$t1_cookie_delivery2,";

						#�z�������z��ɑ���B
						push(@cookie_delivery2,$t1_cookie_delivery2);

					}
				}
			}
		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery3(@t1_cookie_delivery3){

		#���i���𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery3);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�p�����[�^���擾�B
			while(($x,$y) = each %in){

				#�p�����[�^����11���̐����̏ꍇ�B
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#���i���𕪊��B
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#�p�����[�^�ƃN�b�L�[�������ꍇ�B
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#�z��������N�b�L�[�f�[�^�Ɍ`���B
						$t_delivery3 .= "$t1_cookie_delivery3,";

						#�z�������z��ɑ���B
						push(@cookie_delivery3,$t1_cookie_delivery3);

					}
				}
			}
		}
	}

	#�N�b�L�[�͍��ێ��Ԃ��L�[�Ƃ��A�ۑ�������365���ԁB�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#�j�����ƏT�����p��\���̔z��Œ�`�B
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365����̍��ێ��Ԃ��w��t�H�[�}�b�g���B[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	$t_delivery1 =~ s/&quot;/&quot/g;
	$t_delivery1 =~ s/&lt;/&lt/g;
	$t_delivery1 =~ s/&gt;/&gt/g;
	$t_delivery1 =~ s/&#44;/&#44/g;

	$t_delivery2 =~ s/&quot;/&quot/g;
	$t_delivery2 =~ s/&lt;/&lt/g;
	$t_delivery2 =~ s/&gt;/&gt/g;
	$t_delivery2 =~ s/&#44;/&#44/g;

	$t_delivery3 =~ s/&quot;/&quot/g;
	$t_delivery3 =~ s/&lt;/&lt/g;
	$t_delivery3 =~ s/&gt;/&gt/g;
	$t_delivery3 =~ s/&#44;/&#44/g;

	#�N�b�L�[��ݒ�B
	print"Set-Cookie: DELIVERY1=$t_delivery1; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY2=$t_delivery2; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY3=$t_delivery3; expires=$date_gmt; path=/;\n";

}
##################################################
# delivery_set
# �z������𔭍s�B
##################################################
sub delivery_set{

	#�z��������擾�B
	&delivery_get;

	#���[�U�f�[�^���̓G���[�B
	if(@delivery_address[0] eq "")                                     {push(@errorMsg,"�����O�i���j�����͂���Ă��܂���B");}
	if(@delivery_address[1] eq "")                                     {push(@errorMsg,"�����O�i���j�����͂���Ă��܂���B");}
	if(@delivery_address[2] eq "")                                     {push(@errorMsg,"�����O�̃t���K�i�i���j�����͂���Ă��܂���B");}
	if(@delivery_address[3] eq "")                                     {push(@errorMsg,"�����O�̃t���K�i�i���j�����͂���Ă��܂���B");}
	if(@delivery_address[4] eq "" || length(@delivery_address[4]) != 3){push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�����������͂���Ă��܂���B");}
	if(@delivery_address[4] =~ /[^0-9]/)                               {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@delivery_address[5] eq "" || length(@delivery_address[5]) != 4){push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�����������͂���Ă��܂���B");}
	if(@delivery_address[5] =~ /[^0-9]/)                               {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@delivery_address[6] eq "")                                     {push(@errorMsg,"�s���{�����I������Ă��܂���B");}
	if(@delivery_address[7] eq "")                                     {push(@errorMsg,"�Z���i�S�s�撬���j�����͂���Ă��܂���B");}
	if(@delivery_address[8] eq "")                                     {push(@errorMsg,"�Z���i����ȍ~�̏Z���j������Ă��܂���B");}
	if(@delivery_address[9] eq "")                                     {push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if(@delivery_address[9] =~ /[^0-9]/)                               {push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@delivery_address[10] eq "")                                    {push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if(@delivery_address[10] =~ /[^0-9]/)                              {push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if(@delivery_address[11] eq "")                                    {push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if(@delivery_address[11] =~ /[^0-9]/)                              {push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}

	#�z��������`���B
	$t_delivery = "$code:@delivery_address[0]:@delivery_address[1]:@delivery_address[2]:@delivery_address[3]:@delivery_address[4]:@delivery_address[5]:@delivery_address[6]:@delivery_address[7]:@delivery_address[8]:@delivery_address[9]:@delivery_address[10]:@delivery_address[11]";

	#�N�b�L�[�ʔz���搔�B
	$c_delivery1 = $#cookie_delivery1 + 1;
	$c_delivery2 = $#cookie_delivery2 + 1;
	$c_delivery3 = $#cookie_delivery3 + 1;

	#�g�[�^���z���搔�B
	$total_delivery = $c_delivery1 + $c_delivery2 + $c_delivery3;

	#���̓f�[�^���G���[�łȂ��B
	if($#errorMsg == -1){

		#�g�[�^���z���搔��10�ȉ��̏ꍇ�B
		if($total_delivery < 10){

			#1�N�b�L�[������4���܂ŕۑ��B
			if($c_delivery1 < 4){

				#�z��������N�b�L�[�f�[�^�Ɍ`���B
				$t_delivery1 .= "$t_delivery,";

				#�z�������z��ɑ���B
				push(@cookie_delivery1,$t_delivery);

			}elsif($c_delivery2 < 4){

				#�z��������N�b�L�[�f�[�^�Ɍ`���B
				$t_delivery2 .= "$t_delivery,";

				#�z�������z��ɑ���B
				push(@cookie_delivery2,$t_delivery);

			}elsif($c_delivery3 < 2){

				#�z��������N�b�L�[�f�[�^�Ɍ`���B
				$t_delivery3 .= "$t_delivery,";

				#�z�������z��ɑ���B
				push(@cookie_delivery3,$t_delivery);

			}
		}else{

			push(@errorMsg,"�ǉ��ł���z����͍ő�10�ł��B");

		}
	}

	#�N�b�L�[�͍��ێ��Ԃ��L�[�Ƃ��A�ۑ�������365���ԁB�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#�j�����ƏT�����p��\���̔z��Œ�`�B
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365����̍��ێ��Ԃ��w��t�H�[�}�b�g���B[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	$t_delivery1 =~ s/&quot;/&quot/g;
	$t_delivery1 =~ s/&lt;/&lt/g;
	$t_delivery1 =~ s/&gt;/&gt/g;
	$t_delivery1 =~ s/&#44;/&#44/g;

	$t_delivery2 =~ s/&quot;/&quot/g;
	$t_delivery2 =~ s/&lt;/&lt/g;
	$t_delivery2 =~ s/&gt;/&gt/g;
	$t_delivery2 =~ s/&#44;/&#44/g;

	$t_delivery3 =~ s/&quot;/&quot/g;
	$t_delivery3 =~ s/&lt;/&lt/g;
	$t_delivery3 =~ s/&gt;/&gt/g;
	$t_delivery3 =~ s/&#44;/&#44/g;

	#�N�b�L�[��ݒ�B
	print"Set-Cookie: DELIVERY1=$t_delivery1; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY2=$t_delivery2; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY3=$t_delivery3; expires=$date_gmt; path=/;\n";

}
##################################################
# delivery_edit
# �z�������ύX�B
##################################################
sub delivery_edit{

	#�N�b�L�[�����擾�B
	$cookie = $ENV{'HTTP_COOKIE'};

	#�擾�����N�b�L�[���𕪉��B
	@pairs = split(/;/,$cookie);

	#�N�b�L�[�𐸍��B
	foreach $pair(@pairs){

		#�N�b�L�[���p�����[�^���A�f�[�^�ɕ����B
		local($name,$value) = split(/=/,$pair);

		#�p�����[�^������X�y�[�X���폜�B
		$name =~ s/\s//g;

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY1$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery1) = split(/,/,$value);

		}

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY2$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery2) = split(/,/,$value);

		}

		#�}�b�`�����f�[�^������ꍇ�B
		if($name =~ m/^DELIVERY3$/ && $value ne ""){

			$value =~ s/&quot/&quot;/g;
			$value =~ s/&lt/&lt;/g;
			$value =~ s/&gt/&gt;/g;
			$value =~ s/&#44/&#44;/g;

			#�z������𕪊��B
			(@t1_cookie_delivery3) = split(/,/,$value);

		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery1(@t1_cookie_delivery1){

		#�z������𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery1);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�p�����[�^���擾�B
			while(($x,$y) = each %in){

				#�p�����[�^����11���̐����̏ꍇ�B
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#���i���𕪊��B
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#�p�����[�^�ƃN�b�L�[�������ꍇ�B
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#�폜�t���O���������B
						$del_flg1 = 0;

						foreach $clear(@clear){

							if($clear eq $t1_code){

								#�t���O���āB
								$del_flg1 = 1;

							}
						}

						if($del_flg1 == 0){

							#�z��������N�b�L�[�f�[�^�Ɍ`���B
							$t_delivery1 .= "$t1_cookie_delivery1,";

							#�z�������z��ɑ���B
							push(@cookie_delivery1,$t1_cookie_delivery1);

						}
					}
				}
			}
		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery2(@t1_cookie_delivery2){

		#���i���𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery2);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�p�����[�^���擾�B
			while(($x,$y) = each %in){

				#�p�����[�^����11���̐����̏ꍇ�B
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#���i���𕪊��B
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#�p�����[�^�ƃN�b�L�[�������ꍇ�B
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#�폜�t���O���������B
						$del_flg2 = 0;

						foreach $clear(@clear){

							if($clear eq $t1_code){

								#�t���O���āB
								$del_flg2 = 1;

							}
						}

						if($del_flg2 == 0){

							#�z��������N�b�L�[�f�[�^�Ɍ`���B
							$t_delivery2 .= "$t1_cookie_delivery2,";

							#�z�������z��ɑ���B
							push(@cookie_delivery2,$t1_cookie_delivery2);

						}
					}
				}
			}
		}
	}

	#�N�b�L�[�𐸍��B
	foreach $t1_cookie_delivery3(@t1_cookie_delivery3){

		#���i���𕪊��B
		local($t1_code,$t1_name1,$t1_name2,$t1_kana1,$t1_kana2,$t1_address1,$t1_address2,$t1_address3,$t1_address4,$t1_address5,$t1_tel1,$t1_tel2,$t1_tel3) = split(/:/,$t1_cookie_delivery3);

		#��񂪑��݂��Ă����ꍇ�B
		if($t1_code     ne "" 
		&& $t1_name1    ne "" 
		&& $t1_name2    ne "" 
		&& $t1_kana1    ne "" 
		&& $t1_kana2    ne "" 
		&& $t1_address1 ne "" 
		&& $t1_address2 ne "" 
		&& $t1_address3 ne "" 
		&& $t1_address4 ne "" 
		&& $t1_address5 ne "" 
		&& $t1_tel1     ne "" 
		&& $t1_tel2     ne "" 
		&& $t1_tel3     ne ""){

			#�p�����[�^���擾�B
			while(($x,$y) = each %in){

				#�p�����[�^����11���̐����̏ꍇ�B
				if($x =~ /^\d{11}/){

					$y =~ s/\"/\&quot\;/g;
					$y =~ s/</\&lt\;/g;
					$y =~ s/>/\&gt\;/g;
					$y =~ s/\,/\&#44\;/g;

					#���i���𕪊��B
					local($t2_code,$t2_name1,$t2_name2,$t2_kana1,$t2_kana2,$t2_address1,$t2_address2,$t2_address3,$t2_address4,$t2_address5,$t2_tel1,$t2_tel2,$t2_tel3) = split(/:/,$y);

					#�p�����[�^�ƃN�b�L�[�������ꍇ�B
					if($t1_code     eq $t2_code 
					&& $t1_name1    eq $t2_name1 
					&& $t1_name2    eq $t2_name2 
					&& $t1_kana1    eq $t2_kana1 
					&& $t1_kana2    eq $t2_kana2 
					&& $t1_address1 eq $t2_address1 
					&& $t1_address2 eq $t2_address2 
					&& $t1_address3 eq $t2_address3 
					&& $t1_address4 eq $t2_address4 
					&& $t1_address5 eq $t2_address5 
					&& $t1_tel1     eq $t2_tel1 
					&& $t1_tel2     eq $t2_tel2 
					&& $t1_tel3     eq $t2_tel3){

						#�폜�t���O���������B
						$del_flg3 = 0;

						foreach $clear(@clear){

							if($clear eq $t1_code){

								#�t���O���āB
								$del_flg3 = 1;

							}
						}

						if($del_flg3 == 0){

							#�z��������N�b�L�[�f�[�^�Ɍ`���B
							$t_delivery3 .= "$t1_cookie_delivery3,";

							#�z�������z��ɑ���B
							push(@cookie_delivery3,$t1_cookie_delivery3);

						}
					}
				}
			}
		}
	}

	#�N�b�L�[�͍��ێ��Ԃ��L�[�Ƃ��A�ۑ�������365���ԁB�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#�j�����ƏT�����p��\���̔z��Œ�`�B
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365����̍��ێ��Ԃ��w��t�H�[�}�b�g���B[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	$t_delivery1 =~ s/&quot;/&quot/g;
	$t_delivery1 =~ s/&lt;/&lt/g;
	$t_delivery1 =~ s/&gt;/&gt/g;
	$t_delivery1 =~ s/&#44;/&#44/g;

	$t_delivery2 =~ s/&quot;/&quot/g;
	$t_delivery2 =~ s/&lt;/&lt/g;
	$t_delivery2 =~ s/&gt;/&gt/g;
	$t_delivery2 =~ s/&#44;/&#44/g;

	$t_delivery3 =~ s/&quot;/&quot/g;
	$t_delivery3 =~ s/&lt;/&lt/g;
	$t_delivery3 =~ s/&gt;/&gt/g;
	$t_delivery3 =~ s/&#44;/&#44/g;

	#�N�b�L�[��ݒ�B
	print"Set-Cookie: DELIVERY1=$t_delivery1; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY2=$t_delivery2; expires=$date_gmt; path=/;\n";
	print"Set-Cookie: DELIVERY3=$t_delivery3; expires=$date_gmt; path=/;\n";

}
##################################################
# item_delete
# ���i�����폜�B
##################################################
sub item_delete{

	#�N�b�L�[�͍��ێ��Ԃ��L�[�Ƃ��A�ۑ�������365���ԁB�i�b�A���A���A���A���A�N�A�j���A1��1������̌o�ߔN���A�T�}�[�^�C�����Ԓ���1�j
	($secg,$ming,$hourg,$mdayg,$mong,$yearg,$wdayg,$ydayg,$isdstg) = gmtime(time + 365 * 24 * 60 * 60);

	#�j�����ƏT�����p��\���̔z��Œ�`�B
	@mong  = ('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');
	@weekg = ('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');

	#365����̍��ێ��Ԃ��w��t�H�[�}�b�g���B[Sunday, 01-Jan-2000 01:01:01 GMT]
	$date_gmt = sprintf("%s, %02d\-%s\-%04d %02d\:%02d\:%02d GMT",$weekg[$wdayg],$mdayg,$mong[$mong],$yearg + 1900,$hourg,$ming,$secg);

	#�N�b�L�[��ݒ�B
	print"Set-Cookie: COMMODITY=; path=/;\n";

	if($in{'address'} eq "other"){

		#�z�����ۑ����Ȃ��ꍇ�B
		if($in{'address_save'} eq ""){

			#�N�b�L�[��ݒ�B
			print"Set-Cookie: DELIVERY1=; path=/;\n";

			#�N�b�L�[��ݒ�B
			print"Set-Cookie: DELIVERY2=; path=/;\n";

			#�N�b�L�[��ݒ�B
			print"Set-Cookie: DELIVERY3=; path=/;\n";

		}else{

			#�N�b�L�[���擾�B
			$cookie = $ENV{'HTTP_COOKIE'};

			#�N�b�L�[��z��ɑ���B
			@pairs = split(/;/,$cookie);

			#�N�b�L�[���𐸍��B
			foreach $pair(@pairs){

				#�N�b�L�[�����p�����[�^���A�f�[�^�ɕ����B
				local($name,$value) = split(/=/,$pair);

				#�p�����[�^������X�y�[�X���폜�B
				$name =~ s/\s//g;

				#�p�����[�^�������t�Ńf�[�^�����łɂ���ꍇ�́A�f�[�^���폜�B
				if($name =~ m/^DELIVERY1$/ && $value ne ""){

					$value =~ s/&quot;/&quot/g;
					$value =~ s/&lt;/&lt/g;
					$value =~ s/&gt;/&gt/g;
					$value =~ s/&#44;/&#44/g;

					#address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
					print"Set-Cookie: DELIVERY1=$value; expires=$date_gmt; path=/;\n";
				}

				if($name =~ m/^DELIVERY2$/ && $value ne ""){

					$value =~ s/&quot;/&quot/g;
					$value =~ s/&lt;/&lt/g;
					$value =~ s/&gt;/&gt/g;
					$value =~ s/&#44;/&#44/g;

					#address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
					print"Set-Cookie: DELIVERY2=$value; expires=$date_gmt; path=/;\n";
				}

				if($name =~ m/^DELIVERY3$/ && $value ne ""){

					$value =~ s/&quot;/&quot/g;
					$value =~ s/&lt;/&lt/g;
					$value =~ s/&gt;/&gt/g;
					$value =~ s/&#44;/&#44/g;

					#address_save���uon�v�̏ꍇ�́A���t�t���ŃN�b�L�[��ݒ�B
					print"Set-Cookie: DELIVERY3=$value; expires=$date_gmt; path=/;\n";
				}
			}
		}
	}
}
##################################################
# sendMail
# ���[���𑗐M�B
##################################################
sub sendMail{

	##########################################
	#���M�����擾�B
	&get_time;
	##########################################
	#�m�F���[���w�b�_�[���`���B

$re_mailhead=<<"EOM";

���������e�͉��L�̒ʂ�ł��B

�����������e
----------------------------------------------------------------------
EOM

	##########################################
	#�m�F���[���t�b�_�[���`���B

$re_mailfoot=<<"EOM";

���������e�͏�L�̒ʂ�ł��B
EOM

	##########################################
	#���M���[���w�b�_�[���`���B

	#�ԐM���[���w�b�_�[���͂̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j

#	$cart_user0 =~ s/&lt;/</g;
#	$cart_user0 =~ s/&gt;/>/g;
	$cart_user0 =~ s/&quot;/\"/g;
	$cart_user0 =~ s/<br>/\n/g;
	$cart_user0 =~ s/&lt;br&gt;/<br>/g;
	$cart_user0 =~ s/\.\n/\. \n/g;
	$cart_user0 =~ s/\&\#44\;/\,/g;

#	$cart_user1 =~ s/&lt;/</g;
#	$cart_user1 =~ s/&gt;/>/g;
	$cart_user1 =~ s/&quot;/\"/g;
	$cart_user1 =~ s/<br>/\n/g;
	$cart_user1 =~ s/&lt;br&gt;/<br>/g;
	$cart_user1 =~ s/\.\n/\. \n/g;
	$cart_user1 =~ s/\&\#44\;/\,/g;

#	$crt3 =~ s/&lt;/</g;
#	$crt3 =~ s/&gt;/>/g;
	$crt3 =~ s/&quot;/\"/g;
	$crt3 =~ s/<br>/\n/g;
	$crt3 =~ s/&lt;br&gt;/<br>/g;
	$crt3 =~ s/\.\n/\. \n/g;
	$crt3 =~ s/\&\#44\;/\,/g;

$mailhead=<<"EOM";

$cart_user0 $cart_user1�l

$crt3

�����������e
----------------------------------------------------------------------
EOM

	##########################################
	#���M���[���t�b�_�[���`���B

	#���M���[���t�b�_�[���͂̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	$crt4 =~ s/&lt;/</g;
#	$crt4 =~ s/&gt;/>/g;
	$crt4 =~ s/&quot;/\"/g;
	$crt4 =~ s/<br>/\n/g;
	$crt4 =~ s/&lt;br&gt;/<br>/g;
	$crt4 =~ s/\.\n/\. \n/g;
	$crt4 =~ s/\&\#44\;/\,/g;

$mailfoot=<<"EOM";

$crt4
EOM

	##########################################
	#�N���W�b�g�J�[�h�ł̎x���������`���B
	if($in{'payment'} eq "ZEUS����"){

		#�N���W�b�g�J�[�h����URL��ݒ�B
		$param = "category=$in{'category'}&page=$in{'page'}&cart=payment&money=$subtotal&usrmail=$cart_user15&date=$date2";

$payment_url=<<"EOM"


���L�̌��σy�[�W��茈�ώ葱�����s���Ă��������B
���{�����猈�ώ葱�������܂ł̗L��������$crt31���ԂƂȂ��Ă���܂��B

�����σy�[�WURL
$cgi_address/$site_folder/siteup.cgi?$param

�y��LURL�͎����I�ɐ�������A���[���\\�t�g�ɂ���ẮA �A�h���X���������s����
�Ă��܂��AURL�𐳂����ǂݎ�ꂸ�G���[���b�Z�[�W���\\������邱�Ƃ��������܂��B
���̍ۂ́A��LURL�𖖔��܂ŃR�s�[���A�u���E�U�̃A�h���X���ɒ��ڂ͂����
�y�[�W��\\�����Ē����悤���肢�������܂��B�z
EOM

	}
	##########################################
	#�����ҏ����`���B

	#���v���z�Q��ݒ�B
	$subtotal2 = $subtotal;

	#���v���z�Q��u���B
	$subtotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

	if($cri1 eq "1" || $cri1 eq "2"){
		$naka = "($cart_user2 $cart_user3)";
	}

	if($cri2 eq "1" || $cri2 eq "2"){
		$fax = "[FAX]$cart_user12-$cart_user13-$cart_user14\n";
	}

	if($cri3 eq "1" || $cri3 eq "2"){
		$seibetu = "[����]$cart_user17\n";
	}

	if($cri4 eq "1" || $cri4 eq "2"){
		$seinengapi = "[���N����]����$cart_user18�N$cart_user19��$cart_user20��\n";
	}

	if($cri7 eq "1" || $cri7 eq "2"){

		#���R���͍��ڂ̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
		$cart_user21 =~ s/&lt;br&gt;/\n/g;
#		$cart_user21 =~ s/&lt;/</g;
#		$cart_user21 =~ s/&gt;/>/g;
		$cart_user21 =~ s/&quot;/\"/g;
		$cart_user21 =~ s/<br>/\n/g;
		$cart_user21 =~ s/\.\n/\. \n/g;
		$cart_user21 =~ s/\&\#44\;/\,/g;

		$free_word  .= "[$cri8]\n";
		$free_word  .= "$cart_user21";
		$free_word  .= "\n";

	}

	$notes = "";

	if($crt38 ne ""){

		#���ӎ����̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#		$crt38 =~ s/&lt;/</g;
#		$crt38 =~ s/&gt;/>/g;
		$crt38 =~ s/&quot;/\"/g;
		$crt38 =~ s/<br>/\n/g;
		$crt38 =~ s/&lt;br&gt;/\n/g;
		$crt38 =~ s/\.\n/\. \n/g;
		$crt38 =~ s/\&\#44\;/\,/g;

		$notes .= "\n";
		$notes .= "[���ӎ���]\n";
		$notes .= $crt38

	}

#	$cart_user0 =~ s/&lt;/</g;
#	$cart_user0 =~ s/&gt;/>/g;
	$cart_user0 =~ s/&quot;/\"/g;
	$cart_user0 =~ s/&lt;br&gt;/\n/g;
	$cart_user0 =~ s/\&\#44\;/\,/g;

#	$cart_user1 =~ s/&lt;/</g;
#	$cart_user1 =~ s/&gt;/>/g;
	$cart_user1 =~ s/&quot;/\"/g;
	$cart_user1 =~ s/&lt;br&gt;/\n/g;
	$cart_user1 =~ s/\&\#44\;/\,/g;

#	$naka =~ s/&lt;/</g;
#	$naka =~ s/&gt;/>/g;
	$naka =~ s/&quot;/\"/g;
	$naka =~ s/&lt;br&gt;/\n/g;
	$naka =~ s/\&\#44\;/\,/g;

#	$cart_user7 =~ s/&lt;/</g;
#	$cart_user7 =~ s/&gt;/>/g;
	$cart_user7 =~ s/&quot;/\"/g;
	$cart_user7 =~ s/&lt;br&gt;/\n/g;
	$cart_user7 =~ s/\&\#44\;/\,/g;

#	$cart_user8 =~ s/&lt;/</g;
#	$cart_user8 =~ s/&gt;/>/g;
	$cart_user8 =~ s/&quot;/\"/g;
	$cart_user8 =~ s/&lt;br&gt;/\n/g;
	$cart_user8 =~ s/\&\#44\;/\,/g;

	$paymentType = "";

	if($in{'payment'} eq "ZEUS����" || $in{'payment'} eq "NICOS����" || $in{'payment'} eq "NICOS���C�g����"){

		$paymentType = "�N���W�b�g����";

	}else{

		$paymentType = $in{'payment'};

	}

$data2=<<"EOM";

���������҂̏�񂨂�ы��z�E���x�������@
----------------------------------------------------------------------
[���O]$cart_user0 $cart_user1$naka�l
[���[���A�h���X]$cart_user15
[�Z��]��$cart_user4-$cart_user5 $cart_user6$cart_user7$cart_user8
[�d�b]$cart_user9-$cart_user10-$cart_user11
$fax$seibetu$seinengapi$free_word
[���x�����̍��v���z] $subtotal2�~�i�ō��݁j
[���x�����̕��@] $paymentType$payment_url$notes
----------------------------------------------------------------------
EOM

	##########################################
	#�z�B��]���E���ӌ��E�����z�E����]�����`���B

	#�z����]���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	$in{'delivery_day'} =~ s/&lt;/</g;
#	$in{'delivery_day'} =~ s/&gt;/>/g;
	$in{'delivery_day'} =~ s/&quot;/\"/g;
	$in{'delivery_day'} =~ s/<br>/\n/g;
	$in{'delivery_day'} =~ s/&lt;br&gt;/\n/g;
	$in{'delivery_day'} =~ s/\.\n/\. \n/g;
	$in{'delivery_day'} =~ s/\&\#44\;/\,/g;

	#���ӌ��E�����z�E����]���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	$in{'message'} =~ s/&lt;/</g;
#	$in{'message'} =~ s/&gt;/>/g;
	$in{'message'} =~ s/&quot;/\"/g;
	$in{'message'} =~ s/<br>/\n/g;
	$in{'message'} =~ s/&lt;br&gt;/\n/g;
	$in{'message'} =~ s/\.\n/\. \n/g;
	$in{'message'} =~ s/\&\#44\;/\,/g;

	if($cri5 eq "1" || $cri5 eq "2"){

$data3.=<<"EOM";

���z�B��]��
----------------------------------------------------------------------
$in{'delivery_day'}
----------------------------------------------------------------------
EOM

	}

	if($cri6 eq "1" || $cri6 eq "2"){

$data3.=<<"EOM";

�����ӌ��E���v�]
----------------------------------------------------------------------
$in{'message'}
----------------------------------------------------------------------
EOM

	}

$data3.=<<"EOM";

�����M����
----------------------------------------------------------------------
��$date 
----------------------------------------------------------------------
EOM

	##########################################
	#�A�����������`���B

	#�A�������̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	$crt23 =~ s/&lt;/</g;
#	$crt23 =~ s/&gt;/>/g;
	$crt23 =~ s/&quot;/\"/g;
	$crt23 =~ s/<br>/\n/g;
	$crt23 =~ s/&lt;br&gt;/\n/g;
	$crt23 =~ s/\.\n/\. \n/g;
	$crt23 =~ s/\&\#44\;/\,/g;

	if($crt23 ne ""){

$infomation=<<"EOM";

���A������
----------------------------------------------------------------------
$crt23
----------------------------------------------------------------------
EOM

	}
	##########################################
	#���M�惁�[���A�h���X��ݒ�B
	$ownerMail = "$crt1";

	#���M�����[���A�h���X��ݒ�B
	$userMail = $cart_user15;
	##########################################
	#�m�F���[���̃^�C�g�����`���B
	$re_subject = "�z�[���y�[�W����̂�����";

	#JIS�R�[�h�ϊ��B
	&jcode'convert(*re_subject,'jis');
	&jcode'convert(*re_mailhead,'jis');
	&jcode'convert(*re_mailfoot,'jis');
	##########################################
	#�ԐM���[���^�C�g���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
	$crt2 =~ s/\&\#44\;/\,/g;

	#���M���[���̃^�C�g�����`���B
	$subject = "$crt2";

	#JIS�R�[�h�ϊ��B
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailhead,'jis');
	&jcode'convert(*mailfoot,'jis');
	##########################################
	&jcode'convert(*data1,'jis');
	&jcode'convert(*data2,'jis');
	&jcode'convert(*data3,'jis');
	&jcode'convert(*infomation,'jis');
	##########################################
	#�m�F���[���𑗐M�B
	open(MAIL,"|$sendmail -t -f '$userMail'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $ownerMail\n";
	print MAIL "From: $userMail <$userMail>\n";
	print MAIL "Subject: $re_subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$re_mailhead";
	print MAIL "$data1";
	print MAIL "$data2";
	print MAIL "$data3";

	#�A��������\���B
	if($crt23 ne ""){
		print MAIL "$infomation";
	}

	print MAIL "$re_mailfoot";
	close(MAIL);
	##########################################
	#���M���[���𑗐M�B
	open(MAIL,"|$sendmail -t -f '$ownerMail'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $userMail\n";
	print MAIL "From: $ownerMail <$ownerMail>\n";
	print MAIL "Subject: $subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$mailhead";
	print MAIL "$data1";
	print MAIL "$data2";
	print MAIL "$data3";

	#�A��������\���B
	if($crt23 ne ""){
		print MAIL "$infomation";
	}

	print MAIL "$mailfoot";
	close(MAIL);
	##########################################

}
##################################################
# sendMailAlertType1
# ���[���𑗐M�B
##################################################
sub sendMailAlertType1{

	my($mailAdress,$mailData,$pageTitle) = @_;

	my $mailAdressBase = "asp\@sunfirst.co.jp";

	#���M���[���̃^�C�g�����`���B
	$subject = "���i�݌ɂ��Ȃ��Ȃ�܂����B";

	my $mailBody = "";
	$mailBody   .= "���L���i�̍݌ɂ��Ȃ��Ȃ�܂����B\n";
	$mailBody   .= "��[�y�є����葱�������{���Ă��������B\n";
	$mailBody   .= "\n";
	$mailBody   .= "[�݌ɐ؂�ꗗ] \n";
	$mailBody   .= "\n";
	$mailBody   .= $mailData;
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "���Ώۏ��i�f�ڃy�[�W���F$pageTitle\n";
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "���̂��m�点���[���̐ݒ��ύX����ɂ́H\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "\n";
	$mailBody   .= "�����m�点���[�����󂯎��Ȃ��ꍇ������\n";
	$mailBody   .= "\n";
	$mailBody   .= "�݌ɊǗ���ʂ�胍�O�C��\n";
	$mailBody   .= "\n";
	$mailBody   .= "�����O�C���h�c�ƃp�X���[�h��ʓr���p�ӂ��������B\n";
	$mailBody   .= "��\n";
	$mailBody   .= "�݌Ɋm�F\n";
	$mailBody   .= "��\n";
	$mailBody   .= "�e��ݒ�\n";
	$mailBody   .= "��\n";
	$mailBody   .= "���m�点���[�����M�ݒ���A���ʂ�ύX\n";
	$mailBody   .= "**************************************************\n";

	#JIS�R�[�h�ϊ��B
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailBody,'jis');
	##########################################
	#���M���[���𑗐M�B
	open(MAIL,"|$sendmail -t -f '$mailAdressBase'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $mailAdress\n";
	print MAIL "From: $mailAdressBase\n";
	print MAIL "Subject: $subject\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailBody";
	close(MAIL);
	##########################################

}
##################################################
# sendMailAlertType2
# ���[���𑗐M�B
##################################################
sub sendMailAlertType2{

	my($mailAdress,$mailData,$pageTitle) = @_;

	my $mailAdressBase = "asp\@sunfirst.co.jp";

	#���M���[���̃^�C�g�����`���B
	$subject = "���i�݌ɂ��c�菭�Ȃ��Ȃ��Ă��܂��B";

	my $mailBody = "";
	$mailBody   .= "���L���i�̍݌ɂ����Ȃ��Ȃ��Ă��Ă���܂��B\n";
	$mailBody   .= "��[�y�є����葱�������{���Ă��������B\n";
	$mailBody   .= "\n";
	$mailBody   .= "[�݌ɉߏ��ꗗ] \n";
	$mailBody   .= "\n";
	$mailBody   .= $mailData;
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "���Ώۏ��i�f�ڃy�[�W���F$pageTitle\n";
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "���̂��m�点���[���̐ݒ��ύX����ɂ́H\n";
	$mailBody   .= "**************************************************\n";
	$mailBody   .= "\n";
	$mailBody   .= "���m�点���[��������c��݌ɐ���ύX�������ꍇ������\n";
	$mailBody   .= "\n";
	$mailBody   .= "�݌ɊǗ���ʂ�胍�O�C��\n";
	$mailBody   .= "\n";
	$mailBody   .= "�����O�C���h�c�ƃp�X���[�h��ʓr���p�ӂ��������B\n";
	$mailBody   .= "��\n";
	$mailBody   .= "�݌Ɋm�F\n";
	$mailBody   .= "��\n";
	$mailBody   .= "�e��ݒ�\n";
	$mailBody   .= "��\n";
	$mailBody   .= "���[���A�h���X�̉�����ݒ�\n";
	$mailBody   .= "-------------------------------------------------\n";
	$mailBody   .= "\n";
	$mailBody   .= "���m�点���[�����󂯎��Ȃ��ꍇ������\n";
	$mailBody   .= "\n";
	$mailBody   .= "�݌ɊǗ���ʂ�胍�O�C��\n";
	$mailBody   .= "\n";
	$mailBody   .= "�����O�C���h�c�ƃp�X���[�h��ʓr���p�ӂ��������B\n";
	$mailBody   .= "��\n";
	$mailBody   .= "�݌Ɋm�F\n";
	$mailBody   .= "��\n";
	$mailBody   .= "�e��ݒ�\n";
	$mailBody   .= "��\n";
	$mailBody   .= "���m�点���[�����M�ݒ���A���ʂ�ύX\n";
	$mailBody   .= "**************************************************\n";

	#JIS�R�[�h�ϊ��B
	
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailBody,'jis');
	##########################################
	#���M���[���𑗐M�B
	open(MAIL,"|$sendmail -t -f '$mailAdressBase'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $mailAdress\n";
	print MAIL "From: $mailAdressBase\n";
	print MAIL "Subject: $subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain;\n\n";
	print MAIL "$mailBody";
	close(MAIL);
	##########################################

}
##################################################
# preserves
# �f�[�^��ۑ��B
##################################################
sub preserves{

	#�����[�g�z�X�g���擾�B
	$remote_host = $ENV{'REMOTE_HOST'};

	#IP�A�h���X�擾�B
	$remote_addr = $ENV{'REMOTE_ADDR'};

	#���[�U���ϐ��擾�B
	$http_user_agent = $ENV{'HTTP_USER_AGENT'};

	#���[�U���ϐ��u���B
	$http_user_agent =~s/HTML,/HTML/g;

	#�p�����[�^���擾�B
	if($buffer =~ /&&|&amp;&amp;/){
		($dummy,$http_referer) = split(/&&/,$ENV{'QUERY_STRING'});
	}

	#�����N����URL�擾�B
	if($http_referer eq ""){
		$http_referer = $ENV{'HTTP_REFERER'};
	}

	#�����N����URL�u���B
	$http_referer =~ s/\,/\&\#44\;/g;

	#�����[�g�z�X�g������A�������̓����[�g�z�X�g����IP�A�h���X�̏ꍇ�ɂ́AIP�A�h���X���烊���[�g�z�X�g���擾�B
	if($remote_host eq "" || $remote_host eq "$remote_addr"){
		$remote_host = gethostbyaddr(pack('C4',split(/\./,$remote_addr)),2);
	}

	#�����[�g�z�X�g������̏ꍇ�ɂ̓����[�g�z�X�g����IP�A�h���X�ɂ���B
	if($remote_host eq ""){
		$remote_host = $remote_addr;
	}

	#�t�@�C����ǂݏo���B
	open(IN,"./site_log/$date2.cgi");
	flock(IN,1);	# �t�@�C����ǂݏo�����b�N�B
	@temp = <IN>;
	flock(IN,8);	# ���b�N�����B
	close(IN);

	#�t�@�C���o�͏������s�t���Ō`���B�i[�^�C�g��]�A[�����[�g�z�X�g��]�A[IP�A�h���X]�A[���[�U���ϐ�]�A[�����N����URL]�A[���ԁi1970�N1��1������̌o�ߕb���j]�j
	$line = "���[�����M�i�V���b�s���O�J�[�g�j,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

	#�擪�ɐ��������v�f��ǉ��B
	unshift(@temp,$line);

	#�t�@�C���������o���B
	open(OUT, "> ./site_log/$date2.cgi");	# �ǂݏ������[�h�ŊJ��
	flock(OUT, 2);				# ���b�N�m�F�B���b�N
	seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
	print OUT @temp;			# ��������
	truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
	close(OUT);				# close����Ύ����Ń��b�N����

	#�����ҏ��ۑ��v�ۂ�"on"�̏ꍇ�B
	if($crt32 eq "on"){

		#�f�B���N�g���ݒ�B
		$makedir = "./address";

		#�f�B���N�g���쐬�B�i�p�[�~�b�V������0755�ō쐬�j
		unless (-d $makedir){
			mkdir($makedir,0755);
		}

		chmod(0755,$makedir);

		#�A�h���X����ǂݍ��݁B
		open(IN,"./address/address.csv");
		flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
		@address_csv = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		#FAX�ԍ��`���B
		if($cart_user12 ne "" && $cart_user13 ne "" && $cart_user14 ne ""){
			$fax2 = "$cart_user12\-$cart_user13\-$cart_user14";
		}

		#TEL�ԍ��`���B
		$tel2 = "$cart_user9\-$cart_user10\-$cart_user11";

		#���N�����`���B
		$birth2 = "$cart_user18\/$cart_user19\/$cart_user20";

		#�A�h���X���ϐ��̏������B
		@renew = ();

		#�A�h���X��񐔂̏������B
		$address_list = 0;

		#�ߋ��ɖ₢���킹�����������Ƃ̃t���O�B
		$flag = 0;

		#�L��ID�̏������B
		$id_data = "";

		#���ʃf�[�^�`���B
		if($cart_user17 eq "�j"){
			$seibetu = "M";
		}elsif($cart_user17 eq "��"){
			$seibetu = "F";
		}

		#�A�h���X���̐����B
		foreach (@address_csv){

			#�A�h���X���̕����B
			local($id,$mail,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy,$dummy) = split(/,/,$_);

			#�ߋ��̃��[���A�h���X�Ɩ₢���킹���[���A�h���X�̔�r�B
			if($cart_user15 eq "$mail"){

				#�t���O���āB
				$flag = 1;

				#�V�����₢���킹���`���B
				$_ = "$id,$cart_user15,$cart_user0 $cart_user1,$cart_user4$cart_user5,$cart_user6,$cart_user7,$cart_user8,$tel2,$fax2,,,,,,$seibetu,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";

				#�L��ID�����B
				$id_data = $id;

			}else{

				#�J�E���g�A�b�v�B
				$address_list++;
			}

			#�ۑ�����z��ɕۑ��B
			push(@renew,$_);

		}

		#�A�h���X���̕ۑ��B
		if($flag == 1){

			#�A�h���X�����������݁B
			open(OUT, "> ./address/address.csv");	# �ǂݏ������[�h�ŊJ��
			flock(OUT, 2);				# ���b�N�m�F�B���b�N
			seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
			print OUT @renew;			# ��������
			truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
			close(OUT);				# close����Ύ����Ń��b�N����

		}else{

			#15000���܂ł�����荞�߂Ȃ������`�F�b�N�B
			if($id_data < 15000){

				#�ۑ����`���B
				$line = "$address_list,$cart_user15,$cart_user0 $cart_user1,$cart_user4$cart_user5,$cart_user6,$cart_user7,$cart_user8,$tel2,$fax2,,,,,,$seibetu,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";

				#�擪�ɐ��������v�f��ǉ��B
				unshift(@address_csv,$line);

				#�A�h���X�����������݁B
				open(OUT, "> ./address/address.csv");	# �ǂݏ������[�h�ŊJ��
				flock(OUT, 2);				# ���b�N�m�F�B���b�N
				seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
				print OUT @address_csv;			# ��������
				truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
				close(OUT);				# close����Ύ����Ń��b�N����

			}
		}

		#�p�[�~�b�V�����̕ύX�B
		chmod 0600,"./address/address.csv"
	}

}
##################################################
# mailCheck
# ���[���`�F�b�N�B
##################################################
sub mailCheck{

	$mailAddr = @user_data[15];

	$errorNo = "";

	#���[���A�h���X�������͂��B
	if($mailAddr ne ""){

		#���[���A�h���X�ɃR���}�u,�v���܂܂�Ă��Ȃ����B
		if($mailAddr =~ /\,/){
			$errorNo = 1;
		}

		#���[���A�h���X�ɃA�b�g�}�[�N�u@�v���܂܂�Ă��邩�B
		if($mailAddr !~ /@/){
			$errorNo = 2;
		}

		#���[���A�h���X�ɑS�p���܂܂�Ă��Ȃ����B
		if($mailAddr =~ /[^0-9a-zA-Z\.\-\_\@]/){
			$errorNo = 3;
		}

		#���[���A�h���X�̃h���C���������s�����B
		if($mailAddr !~ /\.[a-zA-Z]{2,5}$/){
			$errorNo = 4;
		}

		#���[���A�h���X�`�F�b�N�⑫�B
		if(!$errorNo){

			$mail_regex =
				q{(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\} .
				q{\[\]\000-\037\x80-\xff])|"[^\\\\\x80-\xff\n\015"]*(?:\\\\[^\x80-\xff][} .
				q{^\\\\\x80-\xff\n\015"]*)*")(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x} .
				q{80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff])|"[^\\\\\x80-} .
				q{\xff\n\015"]*(?:\\\\[^\x80-\xff][^\\\\\x80-\xff\n\015"]*)*"))*@(?:[^(} .
				q{\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,;:".\\\\\[\]\0} .
				q{00-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[^\x80-\xff])*} .
				q{\])(?:\.(?:[^(\040)<>@,;:".\\\\\[\]\000-\037\x80-\xff]+(?![^(\040)<>@,} .
				q{;:".\\\\\[\]\000-\037\x80-\xff])|\[(?:[^\\\\\x80-\xff\n\015\[\]]|\\\\[} .
				q{^\x80-\xff])*\]))*};

			#���[���A�h���X�̏������s�����B
			if ($mailAddr !~ /^$mail_regex$/o){
				$errorNo = 4;
			}

			#���[���A�h���X�̏������s�����B
			if($mailAddr !~ /[\w\.\-]+\@[\w\.\-]+\.[a-zA-Z]{2,5}$/){
				$errorNo = 5;
			}
		}

	}else{
		$errorNo = 6;
	}

	return $errorNo;

}
##################################################
# dateCheck
# ���t�`�F�b�N�B
##################################################
sub dateCheck{

	my $year = @user_data[18];
	my $mon  = @user_data[19];
	my $day  = @user_data[20];

	$errorNo = "";

	if($year < 1701 || $year > 2500 || $mon < 1 || $mon > 12 || $day < 1 || $day > 31){
		$errorNo = 1;
	}

	# ���̌��̖������v�Z�B(2�s�ڂ͉[�N�̌v�Z)
	my($lastday) = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[$mon - 1] + ($mon == 2 && ($year % 4 == 0 && $year % 100 != 0 || $year % 400 == 0));

	if($day > $lastday){
		$errorNo = 1;
	}

	return $errorNo;

}
##################################################
# send
# �����̌v�Z�B
##################################################
sub send{

	if($crt5 eq "0"){

		#�����v�Z�ΏۊO����グ�Œ���z��0�̏ꍇ�́A������0��ݒ�B
		$send = 0;

	}else{

		#�����v�Z�ΏۊO����グ�Œ���z��0�ȊO�̏ꍇ�́A�s���{���ʂɑ�����ݒ�B
		if($address3 eq "�k�C��")                                                                                                                                                        {$send = $crt6;}
		if($address3 eq "�X��" || $address3 eq "�H�c��" || $address3 eq "��茧")                                                                                                      {$send = $crt7;}
		if($address3 eq "�{�錧" || $address3 eq "�R�`��" || $address3 eq "������")                                                                                                      {$send = $crt8;}
		if($address3 eq "�Ȗ،�" || $address3 eq "�Q�n��" || $address3 eq "��錧")                                                                                                      {$send = $crt9;}
		if($address3 eq "��ʌ�" || $address3 eq "��t��" || $address3 eq "�����s" || $address3 eq "�_�ސ쌧")                                                                           {$send = $crt10;}
		if($address3 eq "�V����" || $address3 eq "���쌧" || $address3 eq "�R����")                                                                                                      {$send = $crt11;}
		if($address3 eq "�x�R��" || $address3 eq "�ΐ쌧" || $address3 eq "���䌧")                                                                                                      {$send = $crt12;}
		if($address3 eq "�򕌌�" || $address3 eq "�É���" || $address3 eq "���m��" || $address3 eq "�O�d��")                                                                             {$send = $crt13;}
		if($address3 eq "���ꌧ" || $address3 eq "���s�{" || $address3 eq "���{" || $address3 eq "���Ɍ�" || $address3 eq "�ޗǌ�" || $address3 eq "�a�̎R��")                         {$send = $crt14;}
		if($address3 eq "���挧" || $address3 eq "������" || $address3 eq "���R��" || $address3 eq "�L����" || $address3 eq "�R����")                                                    {$send = $crt15;}
		if($address3 eq "������" || $address3 eq "���쌧" || $address3 eq "���Q��" || $address3 eq "���m��")                                                                             {$send = $crt16;}
		if($address3 eq "������" || $address3 eq "���ꌧ" || $address3 eq "���茧" || $address3 eq "�F�{��" || $address3 eq "�啪��" || $address3 eq "�{�茧" || $address3 eq "��������"){$send = $crt17;}
		if($address3 eq "���ꌧ")                                                                                                                                                        {$send = $crt18;}
		if($address3 eq "���̑�")                                                                                                                                                        {$send = $crt18;}

		#���v���z�������v�Z�ΏۊO����グ�Œ���z����������ꍇ�́A�A������0��ݒ�B
		if($crt5 ne ""){

			if($crt5 <= $in{'total'}){

				$send = 0;

			}
		}
	}
}




1;