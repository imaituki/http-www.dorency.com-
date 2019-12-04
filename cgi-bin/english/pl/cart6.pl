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
# cart_mail
# �������e�𑗐M�B
##################################################
sub cart_mail{

	##################################################
	# �y�[�W�^�C�g���擾�B
	##################################################
	$tmp_title = $title;
	##################################################
	# ���`�F�b�N
	##################################################
	if($in{'address'} eq "other"){

		#�p�����[�^�����擾�B
		&delivery_hidden_set;

		#�N�b�L�[�𐸍��B
		foreach $shop(@shop){

			#���i���𕪊��B
			local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop);

			#���ʃG���[�̏������B
			$err = "";

			#���t�Ńp�����[�^��񂩂琔�ʏ����擾�B
			while(($m,$n) = each %in){

				#�p�����[�^�����i�Ɠ����ꍇ�B
				if($m eq "item$t1_code"){

					#���͐��l�`�F�b�N�B
					if($n =~ /[^0-9]/){

						$err = 24;

					}else{

						$AMOUNT_DATA{"$t1_code"} = $n;

					}
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

						#���͐��l�`�F�b�N�B
						if($n =~ /[^0-9]/){

							$err = 24;

						}else{

							$AMOUNT_DATA{"$t1_code\D$t2_code"} = $n;

						}
					}
				}
			}
		}
	}
	##################################################
	# �����`�F�b�N
	##################################################

	#�ڍ׏��
	my @otherData = ();

	#�݌ɏ��
	my @itemStock = ();

	if(-e "./other.dat"){

		##################################################
		# �ڍ׏��擾�B
		##################################################
		open(IN,"./other.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		my @other = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);

		@otherData = split(/\,/,$other[0]);
		##################################################
	}

	if(-e "./itemStock.dat"){

		##################################################
		# �݌ɏ��擾�B
		##################################################
		open(IN,"./itemStock.dat");
		flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
		@itemStock = <IN>;
		flock(IN,8);		# ���b�N�����B
		close(IN);
		##################################################

	}

	if(($#otherData != -1) && ($#itemStock != -1)){

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

					if($in{'address'} eq "other"){

						if($AMOUNT_DATA{"$t_code"} != 0){

							##################################################
							# �݌ɐ��ύX
							##################################################
							for(my $i = 0 ; $i < $#itemStock + 1 ; $i++){

								my(@is_data) = split(/\,/,$itemStock[$i]);

								$is_data[4] =~ s/�F/:/g;
								$is_data[4] =~ s/\&\#44\;//g;
								$is_data[4] =~ s/�A//g;
								$is_data[4] =~ s/�C//g;

								$is_data[1] =~ s/�F/:/g;
								$is_data[1] =~ s/\&\#44\;//g;
								$is_data[1] =~ s/�A//g;
								$is_data[1] =~ s/�C//g;

								if($is_data[0] eq $title 
								&& $is_data[1] eq $type 
								&& $is_data[2] eq $other1 
								&& $is_data[3] eq $other2 
								&& $is_data[4] eq $unit_price 
								&& $is_data[7] eq $no 
								&& $is_data[8] eq "$t_category$t_page"){

									if($is_data[6] <= 0 && $is_data[6] ne ""){

										if($otherData[5] eq "1"){

											#���i�P����u���B
											$unit_price =~ s/,//g;

											#���i���~���i�P�������z�B
											$price = $t_unit * $unit_price;

											$in{'total'} = $in{'total'} - $price;

										}

									}

								}

							}
							##################################################

						}

					}else{

						##################################################
						# �݌ɐ��ύX
						##################################################
						for(my $i = 0 ; $i < $#itemStock + 1 ; $i++){

							my(@is_data) = split(/\,/,$itemStock[$i]);

							$is_data[4] =~ s/�F/:/g;
							$is_data[4] =~ s/\&\#44\;//g;
							$is_data[4] =~ s/�A//g;
							$is_data[4] =~ s/�C//g;

							$is_data[1] =~ s/�F/:/g;
							$is_data[1] =~ s/\&\#44\;//g;
							$is_data[1] =~ s/�A//g;
							$is_data[1] =~ s/�C//g;

							if($is_data[0] eq $title 
							&& $is_data[1] eq $type 
							&& $is_data[2] eq $other1 
							&& $is_data[3] eq $other2 
							&& $is_data[4] eq $unit_price 
							&& $is_data[7] eq $no 
							&& $is_data[8] eq "$t_category$t_page"){

								if($is_data[6] <= 0 && $is_data[6] ne ""){

									if($otherData[5] eq "1"){

										#���i�P����u���B
										$unit_price =~ s/,//g;

										#���i���~���i�P�������z�B
										$price = $t_unit * $unit_price;

										$in{'total'} = $in{'total'} - $price;

									}

								}

							}

						}
						##################################################

					}

					if($in{'address'} eq "other"){

						#�z����̐����B
						foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

							#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
							local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

							if($AMOUNT_DATA{"$t_code\D$code"} != 0){

								##################################################
								# �݌ɐ��ύX
								##################################################
								for(my $i = 0 ; $i < $#itemStock + 1 ; $i++){

									my(@is_data) = split(/\,/,$itemStock[$i]);

									$is_data[4] =~ s/�F/:/g;
									$is_data[4] =~ s/\&\#44\;//g;
									$is_data[4] =~ s/�A//g;
									$is_data[4] =~ s/�C//g;

									$is_data[1] =~ s/�F/:/g;
									$is_data[1] =~ s/\&\#44\;//g;
									$is_data[1] =~ s/�A//g;
									$is_data[1] =~ s/�C//g;

									if($is_data[0] eq $title 
									&& $is_data[1] eq $type 
									&& $is_data[2] eq $other1 
									&& $is_data[3] eq $other2 
									&& $is_data[4] eq $unit_price 
									&& $is_data[7] eq $no 
									&& $is_data[8] eq "$t_category$t_page"){

										if($is_data[6] <= 0 && $is_data[6] ne ""){

											if($otherData[5] eq "1"){

												#���i�P����u���B
												$unit_price =~ s/,//g;

												#���i���~���i�P�������z�B
												$price = $t_unit * $unit_price;

												$in{'total'} = $in{'total'} - $price;

											}

										}

									}

								}
								##################################################

							}

						}

					}

				}

			}

		}

	}
	##################################################

	#�ڋq�Ǘ��V�X�e��������
	my $data_temp01 = "";

	#����Ǘ��V�X�e��������
	my $data_temp11 = "";

	#�݌ɕs���x������
	my $sendMailAlertDataType1 = "";
	my $sendMailAlertDataType2 = "";

	#�݌ɕs���G���[�t���O
	my $err_flg = 0;

	#�݌ɕs���G���[����
	my $err_item = "";

	#�z���搔
	my $count = 0;

	#�z������
	my @count_data = ();

	#���i��ސ�
	$unit_count1 = 0;

	#���i����
	$unit_count2 = 0;

	#�����v���z�������B
	$subtotal = "0";

	#�����ʑ����v���z�������B
	$pricetotal = 0;

	#�N�b�L�[�𐸍��B
	foreach $shop(@shop){

		#���i��ސ��J�E���g�A�b�v�B
		$unit_count1++;

		#���i���𕪊��B
		local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

		if(-e "$rootdir/page_design/story/comment/$t_category$t_page.dat"){
			open(IN,"$rootdir/page_design/story/comment/$t_category$t_page.dat");
			flock(IN,1);		#�t�@�C����ǂݏo�����b�N�B
			@shop_storycomment = <IN>;
			flock(IN,8);		# ���b�N�����B
			close(IN);
		}

		$count = 0;

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

				#�������v�������B
				$subsend = "0";

				#���i�P����u���B
				$unit_price =~ s/,//g;

				#���i�P���Q��ݒ�B
				$unit_price2 = $unit_price;

				#���i�P���Q��u���B
				$unit_price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#���i���~���i�P�������z�B
				$price = $t_unit * $unit_price;

				#���z�Q��ݒ�B
				$price2 = $price;

				#���z�Q��u���B
				$price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#[���i��][���l][�P���i�ō��݁j][����][���z�i�ō��݁j]��\���B

$data1 .= "�����i���F$title
�����l�F$type $other1 $other2
���P���F$unit_price2�~
�����ʁF$t_unit
�����z�F$price2�~�i�ō��݁j

";

				#���s�폜�B
				chomp($time);

				$data_temp01 .= "$title,$type,$other1,$other2,$unit_price,$t_unit,$price,";
				$data_temp02  = "";

				if($in{'address'} eq "other"){

					$unit_count2 = $unit_count2 + $AMOUNT_DATA{"$t_code"};

					if($cri1 eq "1" || $cri1 eq "2"){
						$kana = "($cart_user2 $cart_user3)";
					}

					if($AMOUNT_DATA{"$t_code"} != 0){

$data1 .= "���z����̏��
[���O]$cart_user0 $cart_user1$kana�l
[�Z��]��$cart_user4 �| $cart_user5 $cart_user6 $cart_user7 $cart_user8
[�d�b]$cart_user9 �| $cart_user10 �| $cart_user11
[����]$AMOUNT_DATA{$t_code}

";

						push(@count_data,"[���O]$cart_user0 $cart_user1$kana�l<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11");

						$data_temp02 .= "[���O]$cart_user0 $cart_user1$kana�l<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11<br>[����]$AMOUNT_DATA{$t_code}<br>";

						$count++;

						$send_data_code1 = 0;
						$send_data_code2 = 0;

						#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
						if($crt5 ne "0"){

							#�����v�Z�p�̓s���{�������B
							$address3 = $cart_user6;

							#�����̌v�Z�B
							&send;

							#�����Q��ݒ�B
							$send2 = $send;

							#�����Q���J���}�t���B
							$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

							if($crt39 eq "" || $crt39 eq "1" || $crt39 eq "2"){

								#�������v���v�Z�B
								$subsend = $subsend + $send;

							}

							if($crt39 eq "" || $crt39 eq "1"){

								$send_data_code1 = $send;

							}elsif($crt39 eq "2"){

								$send_data_code2 = $send;

$data1 .= "[����]$send2�~

";

							}elsif($crt39 eq "3"){

								$tmp_count = $AMOUNT_DATA{"$t_code"};

								$tmp_send  = $send * $tmp_count;

								$subsend = $subsend + $tmp_send;

								$send_data_code2 = $tmp_send;

$data1 .= "[����]�����P��$send2�~�~���i����$tmp_count=$tmp_send�~

";

							}

						}

						$time_data = time;

						$count_data_code = $AMOUNT_DATA{"$t_code"};

						$price_data_code = $unit_price * $count_data_code;

						$data_temp11 .= "$title,$type,$other1,$other2,$unit_price,$count_data_code,$price_data_code,$send_data_code1,$send_data_code2,[���O]$cart_user0 $cart_user1$kana�l<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11<br>,1,$cart_user0$cart_user1,$cart_user15,$no,$time_data,$t_category$t_page\n";

						##################################################
						# �݌ɐ��ύX
						##################################################
						if(($#otherData != -1) && ($#itemStock != -1)){

							for(my $i = 0 ; $i < $#itemStock + 1 ; $i++){

								my(@is_data) = split(/\,/,$itemStock[$i]);

								$is_data[4] =~ s/�F/:/g;
								$is_data[4] =~ s/\&\#44\;//g;
								$is_data[4] =~ s/�A//g;
								$is_data[4] =~ s/�C//g;

								$is_data[1] =~ s/�F/:/g;
								$is_data[1] =~ s/\&\#44\;//g;
								$is_data[1] =~ s/�A//g;
								$is_data[1] =~ s/�C//g;

								if($is_data[0] eq $title 
								&& $is_data[1] eq $type 
								&& $is_data[2] eq $other1 
								&& $is_data[3] eq $other2 
								&& $is_data[4] eq $unit_price 
								&& $is_data[7] eq $no 
								&& $is_data[8] eq "$t_category$t_page"){

									if($is_data[6] ne ""){

										if($is_data[6] <= 0){

											if($otherData[5] eq "1"){

												$err_flg++;

												$err_item .= "$title,$type,$other1,$other2,$unit_price,$count_data_code,$price_data_code,$send_data_code1,$send_data_code2,[���O]$cart_user0 $cart_user1$kana�l<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11<br>,1,$cart_user0$cart_user1,$cart_user15,$no,$time_data,$t_category$t_page\n";

											}

										}elsif($is_data[6] > 0){

											$is_data[6] = $is_data[6] - $count_data_code;

											if($otherData[0] ne ""){
												if($is_data[6] <= $otherData[0]){
													$sendMailAlertDataType1 .= "�����i���F$is_data[0]/$is_data[1]/$is_data[2]/$is_data[3]\n";
												}
											}
											if($otherData[1] ne ""){
												if($is_data[6] <= $otherData[1]){
													$sendMailAlertDataType2 .= "�����i���F$is_data[0]/$is_data[1]/$is_data[2]/$is_data[3]\n";
												}
											}

										}

									}

								}

							}

						}
						##################################################

					}

				}else{

					$unit_count2 = $unit_count2 + $t_unit;

					if($cri1 eq "1" || $cri1 eq "2"){
						$kana = "($cart_user2 $cart_user3)";
					}

					push(@count_data,"[���O]$cart_user0 $cart_user1$kana�l<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11");

					$data_temp02 .= "[���O]$cart_user0 $cart_user1$kana�l<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11<br>[����]$t_unit<br>";

					$count++;

					$send_data_code1 = 0;
					$send_data_code2 = 0;

					#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
					if($crt5 ne "0"){

						#�����v�Z�p�̓s���{�������B
						$address3 = $cart_user6;

						#�����̌v�Z�B
						&send;

						#�����Q��ݒ�B
						$send2 = $send;

						#�����Q���J���}�t���B
						$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

						#�������v���v�Z�B
						$subsend = $subsend + $send;

						$send_data_code1 = $send;

					}

					$time_data = time;

					$count_data_code = $t_unit;

					$price_data_code = $unit_price * $count_data_code;

					$data_temp11 .= "$title,$type,$other1,$other2,$unit_price,$count_data_code,$price_data_code,$send_data_code1,$send_data_code2,[���O]$cart_user0 $cart_user1($kana)<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11<br>,$count,$cart_user0$cart_user1,$cart_user15,$no,$time_data,$t_category$t_page\n";

					##################################################
					# �݌ɐ��ύX
					##################################################
					if(($#otherData != -1) && ($#itemStock != -1)){

						for(my $i = 0 ; $i < $#itemStock + 1 ; $i++){

							my(@is_data) = split(/\,/,$itemStock[$i]);

							$is_data[4] =~ s/�F/:/g;
							$is_data[4] =~ s/\&\#44\;//g;
							$is_data[4] =~ s/�A//g;
							$is_data[4] =~ s/�C//g;

							$is_data[1] =~ s/�F/:/g;
							$is_data[1] =~ s/\&\#44\;//g;
							$is_data[1] =~ s/�A//g;
							$is_data[1] =~ s/�C//g;

							if($is_data[0] eq $title 
							&& $is_data[1] eq $type 
							&& $is_data[2] eq $other1 
							&& $is_data[3] eq $other2 
							&& $is_data[4] eq $unit_price 
							&& $is_data[7] eq $no 
							&& $is_data[8] eq "$t_category$t_page"){

								if($is_data[6] ne ""){

									if($is_data[6] <= 0){

										if($otherData[5] eq "1"){

											$err_flg++;

											$err_item .= "$title,$type,$other1,$other2,$unit_price,$count_data_code,$price_data_code,$send_data_code1,$send_data_code2,[���O]$cart_user0 $cart_user1($kana)<br>[�Z��]��$cart_user4\-$cart_user5 $cart_user6 $cart_user7 $cart_user8<br>[�d�b]$cart_user9\-$cart_user10\-$cart_user11<br>,$count,$cart_user0$cart_user1,$cart_user15,$no,$time_data,$t_category$t_page\n";

										}

									}elsif($is_data[6] > 0){

										$is_data[6] = $is_data[6] - $count_data_code;

										if($otherData[0] ne ""){
											if($is_data[6] <= $otherData[0]){
												$sendMailAlertDataType1 .= "�����i���F$is_data[0]/$is_data[1]/$is_data[2]/$is_data[3]\n";
											}
										}
										if($otherData[1] ne ""){
											if($is_data[6] <= $otherData[1]){
												$sendMailAlertDataType2 .= "�����i���F$is_data[0]/$is_data[1]/$is_data[2]/$is_data[3]\n";
											}
										}

									}

								}

							}

						}

					}
					##################################################

				}

				if($in{'address'} eq "other"){

					#�z����̐����B
					foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

						#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
						local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

						$tmp = "$t_code\D$code";

						$unit_count2 = $unit_count2 + $AMOUNT_DATA{$tmp};

						if($AMOUNT_DATA{"$t_code\D$code"} != 0){

$data1 .= "���z����̏��
[���O]$name1 $name2($kana1 $kana2)�l
[�Z��]��$address1 �| $address2 $address3 $address4 $address5
[�d�b]$tel1 �| $tel2 �| $tel3
[����]$AMOUNT_DATA{$tmp}

";

							push(@count_data,"[���O]$name1 $name2($kana1 $kana2)�l<br>[�Z��]��$address1\-$address2 $address3 $address4 $address5<br>[�d�b]$tel1\-$tel2\-$tel3");

							$data_temp02 .= "[���O]$name1 $name2($kana1 $kana2)�l<br>[�Z��]��$address1\-$address2 $address3 $address4 $address5<br>[�d�b]$tel1\-$tel2\-$tel3<br>[����]$AMOUNT_DATA{$tmp}<br>";

							$count++;

							$send_data_code1 = 0;
							$send_data_code2 = 0;

							#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
							if($crt5 ne "0"){

								#�����̌v�Z�B
								&send;

								#�����Q��ݒ�B
								$send2 = $send;

								#�����Q���J���}�t���B
								$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

								if($crt39 eq "" || $crt39 eq "1" || $crt39 eq "2"){

									#�������v���v�Z�B
									$subsend = $subsend + $send;

								}

								if($crt39 eq "" || $crt39 eq "1"){

									$send_data_code1 = $send;

								}elsif($crt39 eq "2"){

									$send_data_code2 = $send;

$data1 .= "[����]$send2�~

";

								}elsif($crt39 eq "3"){

									$tmp_count = $AMOUNT_DATA{$tmp};

									$tmp_send  = $send * $tmp_count;

									$subsend = $subsend + $tmp_send;

									$send_data_code2 = $tmp_send;

$data1 .= "[����]�����P��$send2�~�~���i����$tmp_count=$tmp_send�~

";

								}
							}

							$time_data = time;

							$count_data_code = $AMOUNT_DATA{$tmp};

							$price_data_code = $unit_price * $count_data_code;

							$data_temp11 .= "$title,$type,$other1,$other2,$unit_price,$count_data_code,$price_data_code,$send_data_code1,$send_data_code2,[���O]$name1 $name2($kana1 $kana2)�l<br>[�Z��]��$address1\-$address2 $address3 $address4 $address5<br>[�d�b]$tel1\-$tel2\-$tel3<br>,$count,$cart_user0$cart_user1,$cart_user15,$no,$time_data,$t_category$t_page\n";

							##################################################
							# �݌ɐ��ύX
							##################################################
							if(($#otherData != -1) && ($#itemStock != -1)){

								for(my $i = 0 ; $i < $#itemStock + 1 ; $i++){

									my(@is_data) = split(/\,/,$itemStock[$i]);

									$is_data[4] =~ s/�F/:/g;
									$is_data[4] =~ s/\&\#44\;//g;
									$is_data[4] =~ s/�A//g;
									$is_data[4] =~ s/�C//g;

									$is_data[1] =~ s/�F/:/g;
									$is_data[1] =~ s/\&\#44\;//g;
									$is_data[1] =~ s/�A//g;
									$is_data[1] =~ s/�C//g;

									if($is_data[0] eq $title 
									&& $is_data[1] eq $type 
									&& $is_data[2] eq $other1 
									&& $is_data[3] eq $other2 
									&& $is_data[4] eq $unit_price 
									&& $is_data[7] eq $no 
									&& $is_data[8] eq "$t_category$t_page"){

										if($is_data[6] ne ""){

											if($is_data[6] <= 0){

												if($otherData[5] eq "1"){

													$err_flg++;

													$err_item .= "$title,$type,$other1,$other2,$unit_price,$count_data_code,$price_data_code,$send_data_code1,$send_data_code2,[���O]$name1 $name2($kana1 $kana2)�l<br>[�Z��]��$address1\-$address2 $address3 $address4 $address5<br>[�d�b]$tel1\-$tel2\-$tel3<br>,$count,$cart_user0$cart_user1,$cart_user15,$no,$time_data,$t_category$t_page\n";

												}

											}elsif($is_data[6] > 0){

												$is_data[6] = $is_data[6] - $count_data_code;

												if($otherData[0] ne ""){
													if($is_data[6] <= $otherData[0]){
														$sendMailAlertDataType1 .= "�����i���F$is_data[0]/$is_data[1]/$is_data[2]/$is_data[3]\n";
													}
												}
												if($otherData[1] ne ""){
													if($is_data[6] <= $otherData[1]){
														$sendMailAlertDataType2 .= "�����i���F$is_data[0]/$is_data[1]/$is_data[2]/$is_data[3]\n";
													}
												}

											}

										}

									}

								}

							}
							##################################################

						}

					}

				}

				#�������v�Q��ݒ�B
				$subsend2 = $subsend;

				#�������v�Q���J���}�t���B
				$subsend2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#���v���v�Z�B
				$total = $price + $subsend;

				#���v�Q��ݒ�B
				$total2 = $total;

				#���v�Q���J���}�t���B
				$total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
				if($crt5 ne "0"){

					if($in{'address'} eq "other"){

						if($crt39 eq "2" || $crt39 eq "3"){

$data1 .= "[���v]���z$price2�~+����$subsend2�~=$total2�~

";

						}

					}

				}else{

					if($in{'address'} eq "other"){

						if($crt39 eq "2" || $crt39 eq "3"){

							#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
							if($crt5 ne "0"){

$data1 .= "[���v]���z$price2�~=$total2�~

";

							}

						}

					}

				}

				if($in{'address'} eq "other"){

					if($crt39 eq "2" || $crt39 eq "3"){

						#�����v���z���v�Z�B
						$subtotal = $subtotal + $total;

					}

					#�z���搔 �x���敪 �z�B��]�� ���ӌ��E���v�] �z������

					if($in{'payment'} eq "��s�U�荞��" || $in{'payment'} eq "�����" || $in{'payment'} eq "�X�֐U��" || $in{'payment'} eq "���̑�"){

						$tmep_payment = $in{'payment'};

					}else{

						$tmep_payment = "�N���W�b�g����";

					}

					$tmep_delivery_day = $in{'delivery_day'};
					$tmep_message      = $in{'message'};

					$tmep_payment      =~ s/&lt;/</g;
					$tmep_delivery_day =~ s/&lt;/</g;
					$tmep_message      =~ s/&lt;/</g;

					$tmep_payment      =~ s/&gt;/>/g;
					$tmep_delivery_day =~ s/&gt;/>/g;
					$tmep_message      =~ s/&gt;/>/g;

					$tmep_payment      =~ s/\n/<br>/g;
					$tmep_delivery_day =~ s/\n/<br>/g;
					$tmep_message      =~ s/\n/<br>/g;

					$tmep_payment      =~ s/\,/&#44;/g;
					$tmep_delivery_day =~ s/\,/&#44;/g;
					$tmep_message      =~ s/\,/&#44;/g;

					$time_data = time;

					$data_temp01 .= "$count,$tmep_payment,$tmep_delivery_day,$tmep_message,$data_temp02,$cart_user0$cart_user1,$cart_user15,$time_data,$tmp_title,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$no,$t_category$t_page\n";

				}else{

					#�z���搔 �x���敪 �z�B��]�� ���ӌ��E���v�] �z������

					if($in{'payment'} eq "��s�U�荞��" || $in{'payment'} eq "�����" || $in{'payment'} eq "�X�֐U��" || $in{'payment'} eq "���̑�"){

						$tmep_payment = $in{'payment'};

					}else{

						$tmep_payment = "�N���W�b�g����";

					}

					$tmep_delivery_day = $in{'delivery_day'};
					$tmep_message      = $in{'message'};

					$tmep_payment      =~ s/&lt;/</g;
					$tmep_delivery_day =~ s/&lt;/</g;
					$tmep_message      =~ s/&lt;/</g;

					$tmep_payment      =~ s/&gt;/>/g;
					$tmep_delivery_day =~ s/&gt;/>/g;
					$tmep_message      =~ s/&gt;/>/g;

					$tmep_payment      =~ s/\n/<br>/g;
					$tmep_delivery_day =~ s/\n/<br>/g;
					$tmep_message      =~ s/\n/<br>/g;

					$tmep_payment      =~ s/\,/&#44;/g;
					$tmep_delivery_day =~ s/\,/&#44;/g;
					$tmep_message      =~ s/\,/&#44;/g;

					$time_data = time;

					$data_temp01 .= "1,$tmep_payment,$tmep_delivery_day,$tmep_message,$data_temp02,$cart_user0$cart_user1,$cart_user15,$time_data,$tmp_title,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$no,$t_category$t_page\n";

				}

				#�����ʑ����v���z���v�Z�B
				$pricetotal = $pricetotal + $price;

$data1 .= "
----------------------------------------------------------------------
";

			}

		}

	}

	if($in{'address'} eq "other"){

		if($crt39 eq "" || $crt39 eq "1"){

			#�����ʑ����v���z�Q��ݒ�B
			$pricetotal2 = $pricetotal;

			#�����ʑ����v���z�Q���J���}�t���B
			$pricetotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

			#�����v���z���v�Z�B
			$subtotal = $pricetotal;

$data1 .= "[���v���z�i�ō��݁j]$pricetotal2�~

";

			$flg1      = 0;

			$sendHtml1 = "";

			$sendtotal1 = 0;

			#�N�b�L�[�𐸍��B
			foreach $shop(@shop){

				#���i���𕪊��B
				local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

				if($AMOUNT_DATA{"$t_code"} != 0){

					if($cri1 eq "1" || $cri1 eq "2"){
						$kana = "($cart_user2 $cart_user3)";
					}

					if($flg1 == 0){

						$flg1 = 1;

						$sendHtml1 .= "���z����\n";
						$sendHtml1 .= "[���O]$cart_user0 $cart_user1$kana�l\n";
						$sendHtml1 .= "[�Z��]��$cart_user4 �| $cart_user5 $cart_user6 $cart_user7 $cart_user8\n";
						$sendHtml1 .= "[�d�b]$cart_user9 �| $cart_user10 �| $cart_user11\n";

						#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
						if($crt5 ne "0"){

							#�����v�Z�p�̓s���{�������B
							$address3 = $cart_user6;

							#�����̌v�Z�B
							&send;

							#�����Q��ݒ�B
							$send2 = $send;

							#�����Q���J���}�t���B
							$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

							#�������v���v�Z�B
							$subsend = $subsend + $send;

							$sendHtml1 .= "[����]$send2�~\n\n";

							$sendtotal1 = $send;

						}

						$subtotal = $subtotal + $send;

					}

				}

			}

			#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
			if($crt5 ne "0"){

$data1 .= $sendHtml1;

			}

			$sendtotal2 = 0;

			#�z����̐����B
			foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

				#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
				local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

				$flg2      = 0;

				$sendHtml2 = "";

				#�N�b�L�[�𐸍��B
				foreach $shop(@shop){

					#���i���𕪊��B
					local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

					$tmp = "$t_code\D$code";

					if($AMOUNT_DATA{"$t_code\D$code"} != 0){

						if($flg2 == 0){

							$flg2 = 1;

							$sendHtml2 .= "���z����\n";
							$sendHtml2 .= "[���O]$name1 $name2($kana1 $kana2)�l\n";
							$sendHtml2 .= "[�Z��]��$address1 �| $address2 $address3 $address4 $address5\n";
							$sendHtml2 .= "[�d�b]$tel1 �| $tel2 �| $tel3\n";

							#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
							if($crt5 ne "0"){

								#�����̌v�Z�B
								&send;

								#�����Q��ݒ�B
								$send2 = $send;

								#�����Q���J���}�t���B
								$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

								#�������v���v�Z�B
								$subsend = $subsend + $send;

								$sendHtml2 .= "[����]$send2�~\n\n";

								$sendtotal2 = $sendtotal2 + $send;

							}

							$subtotal = $subtotal + $send;

						}

					}

				}

				#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
				if($crt5 ne "0"){

$data1 .= $sendHtml2;

				}

			}

			#�������v�̌v�Z�B
			$sendtotal = $sendtotal1 + $sendtotal2;

			#�������v�R��ݒ�B
			$sendtotal3 = $sendtotal;

			#�������v�R���J���}�t���B
			$sendtotal3 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

			#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
			if($crt5 ne "0"){

$data1 .= "
----------------------------------------------------------------------
[�������v]$sendtotal3�~
";

			}

		}

	}else{

		#�����ʑ����v���z�Q��ݒ�B
		$pricetotal2 = $pricetotal;

		#�����ʑ����v���z�Q���J���}�t���B
		$pricetotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

$data1 .= "[���v���z�i�ō��݁j]$pricetotal2�~

";

$data1 .= "���z����̏��
[���O]$cart_user0 $cart_user1$kana�l
[�Z��]��$cart_user4 �| $cart_user5 $cart_user6 $cart_user7 $cart_user8
[�d�b]$cart_user9 �| $cart_user10 �| $cart_user11

";

		if($crt5 ne "0"){

			if($crt39 eq "" || $crt39 eq "1"){

$data1 .= "[����]$subsend2�~

";

				#�����v���z���v�Z�B
				$subtotal = $pricetotal + $subsend;

			}elsif($crt39 eq "2"){

				$sou_total = $subsend * $unit_count1;

				#�������v���z�Q��ݒ�B
				$sou_total2 = $sou_total;

				#�������v���z�Q���J���}�t���B
				$sou_total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

$data1 .= "[����]�����P��$subsend2�~�~���i��ސ�$unit_count1=$sou_total2�~

";

				#�����v���z���v�Z�B
				$subtotal = $pricetotal + $sou_total;

			}elsif($crt39 eq "3"){

				$sou_total = $subsend * $unit_count2;

				#�������v���z�Q��ݒ�B
				$sou_total2 = $sou_total;

				#�������v���z�Q���J���}�t���B
				$sou_total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

$data1 .= "[����]�����P��$subsend2�~�~���i����$unit_count2=$sou_total2�~

";

				#�����v���z���v�Z�B
				$subtotal = $pricetotal + $sou_total;

			}

		}else{

			#�����v���z���v�Z�B
			$subtotal = $pricetotal;

		}

	}

	if($otherData[5] eq "1" && $err_flg >= 1){

		my @data_temp = split(/\n/,$data_temp11);

		if($#data_temp == 0 && $err_flg == 1){

print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" valign="middle">
        <font size="-1"><strong>
        �݌ɂ͂��łɂ���܂���
        </strong></font>
        </td>
       </tr>
      </table>
      </div>
      <div align="center">
      </div>
EOM

		}else{

####################################################################################################
	#�p�����[�^�����擾�B
#	&shop_hidden_set;
	&user_hidden_set;

	if($in{'address'} eq "other"){

		#�p�����[�^�����擾�B
		&delivery_hidden_set;

		#�N�b�L�[�𐸍��B
		foreach $shop(@shop){

			#���i���𕪊��B
			local($t1_category,$t1_page,$t1_code,$t1_id,$t1_unit,$t1_unit_price,$t1_other1,$t1_other2) = split(/:/,$shop);

			#���ʏ������B
			$total_count = "0";

			#���ʃG���[�̏������B
			$errorFlg1 = "";
			$errorFlg2 = "";
			$errorFlg3 = "";

			#���t�Ńp�����[�^��񂩂琔�ʏ����擾�B
			while(($m,$n) = each %in){

				#�p�����[�^�����i�Ɠ����ꍇ�B
				if($m eq "item$t1_code"){

					#���͐��l�`�F�b�N�B
					if($n =~ /[^0-9]/){
						$errorFlg1 = 1;
					}else{

						$AMOUNT_DATA{"$t1_code"} = $n;
						$total_count             = $total_count + $n;

					}
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

						#���͐��l�`�F�b�N�B
						if($n =~ /[^0-9]/){
							$errorFlg1 = 1;
						}else{

							$AMOUNT_DATA{"$t1_code\D$t2_code"} = $n;
							$total_count                       = $total_count + $n;

						}
					}
				}
			}

			#�ő吔�ʂ����͂���A�ő吔�ʂƌv�Z�������ʂ������łȂ������ꍇ�̓G���[�B
			if($total_count > $t1_unit){
				$errorFlg2 = 1;
				$amount    = $total_count - $t1_unit;
			}elsif($total_count < $t1_unit){
				$errorFlg3 = 1;
				$amount    = $t1_unit - $total_count;
			}

			if($errorFlg1 ne "" || $errorFlg2 ne "" ||$errorFlg3 ne ""){

				if(-e "$rootdir/page_design/story/comment/$t1_category$t1_page.dat"){
					open(IN,"$rootdir/page_design/story/comment/$t1_category$t1_page.dat");
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

					if($id eq $t1_id){
						if($errorFlg1 ne ""){
							push(@errorMsg,"$title�̐��ʂ͔��p��������͂��Ă��������B");
						}elsif($errorFlg2 ne ""){
							push(@errorMsg,"$title�̐��ʂ�$amount�����ł��B");
						}elsif($errorFlg3 ne ""){
							push(@errorMsg,"$title�̐��ʂ�$amount���Ȃ��ł��B");
						}
					}
				}
			}
		}
	}

	#�x�������@���I������Ă��Ȃ������ꍇ�̓G���[�B
	if($in{'payment'} eq ""){
		push(@errorMsg,"�x�������@���I������Ă��܂���B");
	}

	#���̓T�C�Y�`�F�b�N�B�i�z����]���j
	if($cri5 eq "1"){
		if($in{'delivery_day'} eq ""){
			push(@errorMsg,"�z����]�������͂���Ă��܂���B");
		}
	}
	if($in{'delivery_day'} eq ""){

		$delivery_day = "&nbsp;";

	}else{
		if(length($in{'delivery_day'}) > 1000){

			push(@errorMsg,"�z����]���̓��͂��������܂��B");

			$in{'delivery_day'} = substr($in{'delivery_day'},0,1000);;

		}else{

			$delivery_day = $in{'delivery_day'};
			$delivery_day =~ s/&lt;br&gt;/<br>/g;

		}
	}

	#���̓T�C�Y�`�F�b�N�B�i���ӌ��E�����z�E����]���j
	if($cri6 eq "1"){
		if($in{'message'} eq ""){
			push(@errorMsg,"���ӌ��E�����z�E����]�������͂���Ă��܂���B");
		}
	}
	if($in{'message'} eq ""){

		$message = "&nbsp;";

	}else{
		if(length($in{'message'}) > 1000){

			push(@errorMsg,"���ӌ��E�����z�E����]���̓��͂��������܂��B");

			$in{'message'} = substr($in{'message'},0,1000);;

		}else{

			$message = $in{'message'};
			$message =~ s/&lt;br&gt;/<br>/g;

		}
	}

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

		my @item_data = split(/\n/,$err_item);

		my $err_item_data = "";

		foreach my $item_data(@item_data){

			my @item_data_temp = split(/\,/,$item_data);

			$err_item_data .= "$item_data_temp[0]/$item_data_temp[1]/$item_data_temp[2]/$item_data_temp[3]<br>";

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
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�ȉ��̏��i�͍݌ɂ�����܂���B$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$err_item_data$t2_font2</td>
       </tr>
      </table>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�I������Ă��鏤�i�͈ȉ��̒ʂ�ł��B$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1�u���E�U�̖߂�@�\\�͎g��Ȃ��ł��������B$t2_font2</td>
       </tr>
      </table>
      <br>
      <form action="$script" method="post" style="margin-bottom:0">
      <input type="hidden" name="category" value="$in{'category'}">
      <input type="hidden" name="page" value="$in{'page'}">
      <input type="hidden" name="view" value="$in{'view'}">
      <input type="hidden" name="cart" value="order6">
      <input type="hidden" name="total" value="$in{'total'}">
      <input type="hidden" name="address" value="$in{'address'}">
      <input type="hidden" name="payment" value="$in{'payment'}">
      <input type="hidden" name="delivery_day" value="$in{'delivery_day'}">
      <input type="hidden" name="message" value="$in{'message'}">
EOM

		if($in{'address'} eq "same"){

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

		}

		#���i��ސ�
		$unit_count1 = 0;

		#���i����
		$unit_count2 = 0;

		#�����v���z�������B
		$subtotal = "0";

		#�����ʑ����v���z�������B
		$pricetotal = 0;

		#�N�b�L�[�𐸍��B
		foreach $shop(@shop){

			$unit_count1++;

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

					if($in{'address'} eq "other"){

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

					}

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

					my $view_flg = 0;

					foreach my $item_data(@item_data){

						my @item_data_temp = split(/\,/,$item_data);

						if($item_data_temp[0] eq $title 
						&& $item_data_temp[1] eq $type 
						&& $item_data_temp[2] eq $other1 
						&& $item_data_temp[3] eq $other2 
						){

							$view_flg = 1;

						}

					}

					if($view_flg == 0){

						#���i�f�[�^�����`���B
						$hidden .= "<input type=\"hidden\" name=\"$t_code\" value=\"$shop\">\n";

						#�������v�������B
						$subsend = "0";

						#���i�P����u���B
						$unit_price =~ s/,//g;

						#���i�P���Q��ݒ�B
						$unit_price2 = $unit_price;

						#���i�P���Q��u���B
						$unit_price2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

						#���i���~���i�P�������z�B
						$price = $t_unit * $unit_price;

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

						if($in{'address'} eq "other"){

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2�~$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle" colspan="5">$t2_font1
        ���z����̏��<br><br>
EOM

						}else{

print<<"EOM";
        $t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$unit_price2�~$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="center" valign="middle">$t2_font1$t_unit$t2_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$price2�~$t2_font2</td>
       </tr>
EOM

						}

						if($in{'address'} eq "other"){

							$hidden .= "<input type=\"hidden\" name=\"item$t_code\" value=\"$AMOUNT_DATA{$t_code}\">\n";

							$unit_count2 = $unit_count2 + $AMOUNT_DATA{"$t_code"};

							if($AMOUNT_DATA{"$t_code"} != 0){

								if($cri1 eq "1" || $cri1 eq "2"){
									$kana = "($cart_user2 $cart_user3)";
								}

print<<"EOM";
        [���O]$cart_user0 $cart_user1$kana�l<br>
        [�Z��]��$cart_user4 �| $cart_user5 $cart_user6 $cart_user7 $cart_user8<br>
        [�d�b]$cart_user9 �| $cart_user10 �| $cart_user11<br>
        [����]$AMOUNT_DATA{"$t_code"}<br>
EOM

								#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
								if($crt5 ne "0"){

									#�����v�Z�p�̓s���{�������B
									$address3 = $cart_user6;

									#�����̌v�Z�B
									&send;

									#�����Q��ݒ�B
									$send2 = $send;

									#�����Q���J���}�t���B
									$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

									if($crt39 eq "" || $crt39 eq "1" || $crt39 eq "2"){

										#�������v���v�Z�B
										$subsend = $subsend + $send;

									}

									if($crt39 eq "2"){

print<<"EOM";
        [����]$send2�~<br>
EOM

									}elsif($crt39 eq "3"){

										$tmp_count = $AMOUNT_DATA{"$t_code"};

										$tmp_send  = $send * $tmp_count;

										$subsend = $subsend + $tmp_send;

print<<"EOM";
        [����]�����P��$send2�~�~���i����$tmp_count=$tmp_send�~<br>
EOM

									}

								}

print<<"EOM";
        <br>
EOM

							}

						}else{

							$hidden .= "<input type=\"hidden\" name=\"item$t_code\" value=\"$t_unit\">\n";

							$unit_count2 = $unit_count2 + $t_unit;

							if($cri1 eq "1" || $cri1 eq "2"){
								$kana = "($cart_user2 $cart_user3)";
							}

							#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
							if($crt5 ne "0"){

								#�����v�Z�p�̓s���{�������B
								$address3 = $cart_user6;

								#�����̌v�Z�B
								&send;

								#�����Q��ݒ�B
								$send2 = $send;

								#�����Q���J���}�t���B
								$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

								#�������v���v�Z�B
								$subsend = $subsend + $send;

							}
						}

						if($in{'address'} eq "other"){

							#�z����̐����B
							foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

								#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
								local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

								$tmp = "$t_code\D$code";

								$hidden .= "<input type=\"hidden\" name=\"item$tmp\" value=\"$AMOUNT_DATA{$tmp}\">\n";

								$unit_count2 = $unit_count2 + $AMOUNT_DATA{$tmp};

								if($AMOUNT_DATA{"$t_code\D$code"} != 0){

print<<"EOM";
        [���O]$name1 $name2($kana1 $kana2)�l<br>
        [�Z��]��$address1 �| $address2 $address3 $address4 $address5<br>
        [�d�b]$tel1 �| $tel2 �| $tel3<br>
        [����]$AMOUNT_DATA{"$tmp"}<br>
EOM

									#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
									if($crt5 ne "0"){

										#�����̌v�Z�B
										&send;

										#�����Q��ݒ�B
										$send2 = $send;

										#�����Q���J���}�t���B
										$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

										if($crt39 eq "" || $crt39 eq "1" || $crt39 eq "2"){

											#�������v���v�Z�B
											$subsend = $subsend + $send;

										}

										if($crt39 eq "2"){

print<<"EOM";
        [����]$send2�~<br>
EOM

										}elsif($crt39 eq "3"){

											$tmp_count = $AMOUNT_DATA{$tmp};

											$tmp_send  = $send * $tmp_count;

											$subsend = $subsend + $tmp_send;

print<<"EOM";
        [����]�����P��$send2�~�~���i����$tmp_count=$tmp_send�~<br>
EOM

										}

									}

print<<"EOM";
        <br>
EOM

								}
							}
						}

						#�������v�Q��ݒ�B
						$subsend2 = $subsend;

						#�������v�Q���J���}�t���B
						$subsend2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

						#���v���v�Z�B
						$total = $price + $subsend;

						#���v�Q��ݒ�B
						$total2 = $total;

						#���v�Q���J���}�t���B
						$total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

						#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
						if($crt5 ne "0"){

							if($in{'address'} eq "other"){

								if($crt39 eq "2"){

print<<"EOM";
        [���v]���z$price2�~+����$subsend2�~=$total2�~
EOM

								}elsif($crt39 eq "3"){

print<<"EOM";
        [���v]���z$price2�~+����$subsend2�~=$total2�~
EOM

								}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

							}

						}else{

							if($in{'address'} eq "other"){

								if($crt39 eq "2" || $crt39 eq "3"){

									#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
									if($crt5 ne "0"){

print<<"EOM";
        [���v]���z$price2�~=$total2�~
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

									}else{

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

									}

								}else{

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

								}

							}

						}

						if($in{'address'} eq "other"){

							if($crt39 eq "2" || $crt39 eq "3"){

								#�����v���z���v�Z�B
								$subtotal = $subtotal + $total;

							}

						}

						#�����ʑ����v���z���v�Z�B
						$pricetotal = $pricetotal + $price;

					}
				}
			}
		}

		if($in{'address'} eq "other"){

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="order_edit" value="���i�z������ύX����" style="width:150px"></td>
       </tr>
      </table>
      <br>
EOM

		}

		if($in{'address'} eq "other"){

			if($crt39 eq "" || $crt39 eq "1"){

				#�����ʑ����v���z�Q��ݒ�B
				$pricetotal2 = $pricetotal;

				#�����ʑ����v���z�Q���J���}�t���B
				$pricetotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#�����v���z���v�Z�B
				$subtotal = $pricetotal;

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���v���z�i�ō��݁j$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$pricetotal2�~$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

				#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
				if($crt5 ne "0"){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�z����$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle">$t2_font1
EOM

				}

				$flg1      = 0;

				$sendHtml1 = "";

				$sendtotal1 = 0;

				#�N�b�L�[�𐸍��B
				foreach $shop(@shop){

					#���i���𕪊��B
					local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

					if($AMOUNT_DATA{"$t_code"} != 0){

						if($cri1 eq "1" || $cri1 eq "2"){
							$kana = "($cart_user2 $cart_user3)";
						}

						if($flg1 == 0){

							$flg1 = 1;

							$sendHtml1 .= "        [���O]$cart_user0 $cart_user1$kana�l<br>\n";
							$sendHtml1 .= "        [�Z��]��$cart_user4 �| $cart_user5 $cart_user6 $cart_user7 $cart_user8<br>\n";
							$sendHtml1 .= "        [�d�b]$cart_user9 �| $cart_user10 �| $cart_user11<br>\n";

							#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
							if($crt5 ne "0"){

								#�����v�Z�p�̓s���{�������B
								$address3 = $cart_user6;

								#�����̌v�Z�B
								&send;

								#�����Q��ݒ�B
								$send2 = $send;

								#�����Q���J���}�t���B
								$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

								#�������v���v�Z�B
								$subsend = $subsend + $send;

								$sendHtml1 .= "        [����]$send2�~<br><br>\n";

								$sendtotal1 = $send;

							}

							$subtotal = $subtotal + $send;

						}

					}

				}

				#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
				if($crt5 ne "0"){

					print $sendHtml1;

				}

				$sendtotal2 = 0;

				#�z����̐����B
				foreach $cd(sort {$a<=>$b} keys(%DELIVERY_DATA)){

					#�z������𕪊��B�i�R�[�h�A���A���A���i�ӂ肪�ȁj�A���i�ӂ肪�ȁj�A�X�֔ԍ��A�X�֔ԍ��A�s���{���A�S�s�撬���A����ȍ~�̏Z���A�d�b�ԍ��A�d�b�ԍ��A�d�b�ԍ��j
					local($code,$name1,$name2,$kana1,$kana2,$address1,$address2,$address3,$address4,$address5,$tel1,$tel2,$tel3) = split(/:/,$DELIVERY_DATA{$cd});

					$flg2      = 0;

					$sendHtml2 = "";

					#�N�b�L�[�𐸍��B
					foreach $shop(@shop){

						#���i���𕪊��B
						local($t_category,$t_page,$t_code,$t_id,$t_unit,$t_unit_price,$t_other1,$t_other2) = split(/:/,$shop);

						$tmp = "$t_code\D$code";

						if($AMOUNT_DATA{"$t_code\D$code"} != 0){

							if($flg2 == 0){

								$flg2 = 1;

								$sendHtml2 .= "        [���O]$name1 $name2($kana1 $kana2)�l<br>\n";
								$sendHtml2 .= "        [�Z��]��$address1 �| $address2 $address3 $address4 $address5<br>\n";
								$sendHtml2 .= "        [�d�b]$tel1 �| $tel2 �| $tel3<br>\n";

								#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
								if($crt5 ne "0"){

									#�����̌v�Z�B
									&send;

									#�����Q��ݒ�B
									$send2 = $send;

									#�����Q���J���}�t���B
									$send2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

									#�������v���v�Z�B
									$subsend = $subsend + $send;

									$sendHtml2 .= "        [����]$send2�~<br><br>\n";

									$sendtotal2 = $sendtotal2 + $send;

								}

								$subtotal = $subtotal + $send;

							}

						}

					}

					#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
					if($crt5 ne "0"){

						print $sendHtml2;

					}

				}

				#�������v�̌v�Z�B
				$sendtotal = $sendtotal1 + $sendtotal2;

				#�������v�R��ݒ�B
				$sendtotal3 = $sendtotal;

				#�������v�R���J���}�t���B
				$sendtotal3 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

				#�����v�Z�ΏۊO����グ�Œ���z��0�łȂ��ꍇ�B
				if($crt5 ne "0"){

print<<"EOM";
        [�������v]$sendtotal3�~
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

				}

			}

		}else{

			#�����ʑ����v���z�Q��ݒ�B
			$pricetotal2 = $pricetotal;

			#�����ʑ����v���z�Q���J���}�t���B
			$pricetotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
      </table>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1���v���z�i�ō��݁j$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle">$t2_font1$pricetotal2�~$t2_font2</td>
       </tr>
      </table>
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle">$t1_font1�z����$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="left" valign="middle">$t2_font1
        [���O]$cart_user0 $cart_user1$kana�l<br>
        [�Z��]��$cart_user4 �| $cart_user5 $cart_user6 $cart_user7 $cart_user8<br>
        [�d�b]$cart_user9 �| $cart_user10 �| $cart_user11<br>
EOM

			if($crt5 ne "0"){

				if($crt39 eq "" || $crt39 eq "1"){

print<<"EOM";
        [����]$subsend2�~
EOM

					#�����v���z���v�Z�B
					$subtotal = $pricetotal + $subsend;

				}elsif($crt39 eq "2"){

					$sou_total = $subsend * $unit_count1;

					#�������v���z�Q��ݒ�B
					$sou_total2 = $sou_total;

					#�������v���z�Q���J���}�t���B
					$sou_total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
        [����]�����P��$subsend2�~�~���i��ސ�$unit_count1=$sou_total2�~
EOM

					#�����v���z���v�Z�B
					$subtotal = $pricetotal + $sou_total;

				}elsif($crt39 eq "3"){

					$sou_total = $subsend * $unit_count2;

					#�������v���z�Q��ݒ�B
					$sou_total2 = $sou_total;

					#�������v���z�Q���J���}�t���B
					$sou_total2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

print<<"EOM";
        [����]�����P��$subsend2�~�~���i����$unit_count2=$sou_total2�~
EOM

					#�����v���z���v�Z�B
					$subtotal = $pricetotal + $sou_total;

				}

			}else{

				#�����v���z���v�Z�B
				$subtotal = $pricetotal;

			}

print<<"EOM";
        $t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

		if($cri1 eq "1" || $cri1 eq "2"){
			$kana = "($cart_user2 $cart_user3)";
		}

		#[�������҂̏��]��\���B

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 align="center" valign="middle" colspan="2">$t1_font1�������҂̏��$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 width="150">$t1_font1�����O$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user0 $cart_user1$kana�l$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�Z��$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        ��$cart_user4 �| $cart_user5<br>$cart_user6 $cart_user7<br>$cart_user8
        $t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�d�b�ԍ�$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user9 �| $cart_user10 �| $cart_user11$t2_font2</td>
       </tr>
EOM

		if($cri2 eq "1" || $cri2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�e�`�w�ԍ�$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user12 �| $cart_user13 �| $cart_user14$t2_font2</td>
       </tr>
EOM

		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���[���A�h���X$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user15$t2_font2</td>
       </tr>
EOM

		if($cri3 eq "1" || $cri3 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1����$t1_font2</td>
EOM

			if($cart_user17 ne ""){

print<<"EOM";
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user17$t2_font2</td>
EOM

			}else{

print<<"EOM";
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1&nbsp;$t2_font2</td>
EOM

			}

print<<"EOM";
       </tr>
EOM

		}

		if($cri4 eq "1" || $cri4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���N����$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
EOM

			if($cart_user18 ne ""){

print<<"EOM";
        ����$cart_user18�N
EOM

			}

			if($cart_user19 ne ""){

print<<"EOM";
        $cart_user19��
EOM

			}

			if($cart_user20 ne ""){

print<<"EOM";
        $cart_user20��
EOM

			}

			if($cart_user18 eq "" && $cart_user19 eq "" && $cart_user20 eq ""){

print<<"EOM";
        &nbsp;
EOM

			}

print<<"EOM";
        $t2_font2</td>
       </tr>
EOM

		}

		if($cri7 eq "1" || $cri7 eq "2"){

			#���R���͍��ڂ̉��s�u���B
			$cart_user21 =~ s/&lt;br&gt;/<br>/g;

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10>$t1_font1$cri8$t1_font2</td>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$cart_user21$t2_font2</td>
       </tr>
EOM

		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="user_edit" value="�ύX����">
        </td>
       </tr>
      </table>
      <br>
EOM

		#�A��������\���B
		&reports;

		#�����v���z�Q��ݒ�B
		$subtotal2 = $subtotal;

		#�����v���z�Q���J���}�t���B
		$subtotal2 =~ s/(\d{1,3})(?=(?:\d\d\d)+(?!\d))/$1,/g;

		#[���v���z�i�ō��݁j]��\���B

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���x�����v���z����т��x�����@ $t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1
        [���x�����̍��v���z] $subtotal2�~<br>
EOM

		if($in{'payment'} eq "��s�U�荞��" || $in{'payment'} eq "�����" || $in{'payment'} eq "�X�֐U��" || $in{'payment'} eq "���̑�"){

print<<"EOM";
        [���x�����̕��@] $in{'payment'}
EOM

		}else{

print<<"EOM";
        [���x�����̕��@] �N���W�b�g����
EOM

		}

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
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="payment_edit" value="�ύX����">
        </td>
       </tr>
      </table>
EOM

		if($cri5 eq "1" || $cri5 eq "2"){

print<<"EOM";
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�z����]��$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$delivery_day$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="delivery_day_edit" value="�ύX����">
        </td>
       </tr>
      </table>
EOM

		}

		if($cri6 eq "1" || $cri6 eq "2"){

print<<"EOM";
      <br>
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1���ӌ��E�����z�E����]��$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1$message$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15 align="right" valign="middle" colspan="5">
         <input type="submit" name="message_edit" value="�ύX����">
        </td>
       </tr>
      </table>
EOM

		}

print<<"EOM";
      <br>
EOM

		if($in{'address'} eq "other"){

print<<"EOM";
      <table background="$base_imgdir/$cds7"$t_cds6$t_cds2$t_cds5$t_cds3$t_cds4$t_cds1>
       <tr>
        <td background="$base_imgdir/$cds12"$t_cds11$t_cds10 nowrap>$t1_font1�z������$t1_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$cds17"$t_cds16$t_cds15>$t2_font1<input type="checkbox" name="address_save" value="on">�z����̏���ۑ����Ď��񂩂玩���I�ɕ\\���B$t2_font2</td>
       </tr>
      </table>
      <br>
EOM

		}

print<<"EOM";
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td><input type="submit" name="submit" value="���i�z���m�F��ʂɖ߂�" style="width:150px"></td>
EOM

		#���M�{�^����\���B
		if($location eq "up"){
			print"        <td><input type=\"submit\" name=\"submit\" value=\"��L���e�ő��M����\" style=\"width:150px\"></td>\n";
		}else{
			print"        <td><input type=\"button\" value=\"��L���e�ő��M����\" style=\"width:150px\"></td>\n";
		}

print<<"EOM";
       </tr>
      </table>
<input type="hidden" name="subtotal2" value="$subtotal2">
$hidden
      </form>
      <br>
      </div>
EOM

	}
####################################################################################################


		}

	}else{

		if($#shop != -1){

			$data1 =~ s/&lt;/</g;
			$data1 =~ s/&gt;/>/g;
			$data1 =~ s/&quot;/\"/g;
			$data1 =~ s/\&\#44\;/\,/g;

			#���[���𑗐M�B
			&sendMail;

		}

		#�N���W�b�g�J�[�h�ł̎x�����̏ꍇ�̊m�F��ʂ�\���B
		if($in{'payment'} eq "ZEUS����"){

	#�m�F��ʂ�\���B
print<<"EOM";
      <form name="page_end" id="page_end">
      <input type="hidden" name="address_go"      value="$in{'address'}">
      <input type="hidden" name="address_save_go" value="$in{'address_save'}">
      </form>
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle">
        <font size="-1"><strong>
        ������,�m�F���[���𑗐M���܂����B�m�F���[���ɋL�ڂ���Ă�����e�����m�F���������B<br>
        ���[���ɋL�ڂ���Ă��錈�σy�[�WURL���N���b�N���Č��ώ葱�����s���Ă��������B
        </strong></font>
        </td>
       </tr>
      </table>
      </div>
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="50" align="center" valign="middle">
        <font size="-1">
        ���{�����猈�ώ葱�������܂ł̗L��������$crt31���ԂƂȂ��Ă���܂��B
        </font>
        </td>
       </tr>
      </table>
      </div>
EOM

		}elsif($in{'payment'} eq "NICOS����"){

			my $error_msg = "";

			##################################################
			# �p�����[�^���擾�B
			##################################################
			my $dataP4  = $cart_user15;
			my $dataP5  = "$cart_user0$cart_user1";
			my $dataP6  = "$cart_user2$cart_user3";
			my $dataP7  = "$cart_user9$cart_user10$cart_user11";
			my $dataP12 = $subtotal;
			##################################################

			if($crt33 eq "on"){

				##################################################
				# ���������`�F�b�N�B
				##################################################
				my $str_P4     = $dataP4;			#���[���A�h���X
				my $str_P5     = $dataP5;			#����
				my $str_P6     = $dataP6;			#�t���K�i
				my $str_P7     = split(/-/,$dataP7);		#�d�b�ԍ�
				my $str_len_P4 = length($str_P4);		#���[���A�h���X
				my $str_len_P5 = length($str_P5);		#����
				my $str_len_P6 = length($str_P6);		#�t���K�i
				my $str_len_P7 = length($dataP7);		#�d�b�ԍ�

				if($str_P4 eq ""){
					$error_msg .= "���[���A�h���X������܂���B\n";
				}

				if($str_P5 eq ""){
					$error_msg .= "����������܂���B\n";
				}

				if($str_P6 eq ""){
					$error_msg .= "�t���K�i������܂���B\n";
				}

				if($str_P7 eq ""){
					$error_msg .= "�d�b�ԍ�������܂���B\n";
				}

				#���[���A�h���X�`�F�b�N�B
				if($str_len_P4 > 64){
					$error_msg .= "���[���A�h���X�͔��p64�����܂łɂ��Ă��������B\n";
				}else{

					&check_email($str_P4);

					if($#errorMsg != -1){

						foreach my $errorMsg(@errorMsg){

							$error_msg .= $errorMsg;
							$error_msg .= "\n";

						}

					}

				}

				#�����`�F�b�N�B
				if($str_P5 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P5 > 40 || $str_P5 =~ / /){
					$error_msg .= "�����͑S�p20�����܂łɂ��Ă��������B\n";
				}

				#�t���K�i�`�F�b�N�B
				if($str_P6 !~ /[^0-9a-zA-Z\.\-\_\@]/ || $str_len_P6 > 30 || $str_P6 =~ / /){
					$error_msg .= "�t���K�i�͑S�p15�����܂łɂ��Ă��������B\n";
				}

				#�d�b�ԍ��`�F�b�N�B
				if($str_P7 =~ /[^0-9]/ || $str_len_P7 > 11 || $str_P7 =~ / /){
					$error_msg .= "�d�b�ԍ��͔��p����11�����܂łɂ��Ă��������B\n";
				}
				##################################################

			}else{

				$error_msg = "NICOS���ς͌��݂����p�ł��܂���B\n";

			}

			if($dataP12 eq "" || $dataP12 eq "0"){

				$error_msg = "���i��񂪂���܂���B<br>�߂��ď��i����I�����Ă��������B\n";

			}

			if($error_msg eq ""){

	#�m�F��ʂ�\���B
print<<"EOM";
      <form name="page_end" id="page_end">
      <input type="hidden" name="address_go"      value="$in{'address'}">
      <input type="hidden" name="address_save_go" value="$in{'address_save'}">
      </form>
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle">
        <font size="-1"><strong>
        ������,�m�F���[���𑗐M���܂����B�m�F���[���ɋL�ڂ���Ă�����e�����m�F���������B<br><br>
        ���������I�����C���������ς��s���܂��B<br>(���u���E�U�̍X�V�@�\\�͎g�p���Ȃ��ł�������)
        </strong></font>
        </td>
       </tr>
       <tr>
        <td height="150" align="center" valign="middle">
<script type="text/javascript">
<!--
function openWindow(){
	window.open("about:blank",'nicos','toolbar=no,menubar=no,scrollbars=yes,resizable=yes,width=590,height=530');
	document.forms['nicos'].target = "nicos";
	document.forms['nicos'].method = "POST";
	document.forms['nicos'].action = "nicos.cgi";
	document.forms['nicos'].elements['mode'].value;
	document.forms['nicos'].elements['P4'].value;
	document.forms['nicos'].elements['P5'].value;
	document.forms['nicos'].elements['P6'].value;
	document.forms['nicos'].elements['P7'].value;
	document.forms['nicos'].elements['P12'].value;
	document.forms['nicos'].submit();
}
//-->
</script>
        <form id="nicos">
        <input type="hidden" name="mode" value="psa">
        <input type="hidden" name="P4" value="$dataP4">
        <input type="hidden" name="P5" value="$dataP5">
        <input type="hidden" name="P6" value="$dataP6">
        <input type="hidden" name="P7" value="$dataP7">
        <input type="hidden" name="P12" value="$dataP12">
        <div align="center">
        <input type="button" value="�I�����C���������ω�ʂ��J��" onClick="openWindow()">
        </div>
        </form>
        </td>
       </tr>
      </table>
      </div>
EOM

			}else{

	#�G���[��ʂ�\���B
print<<"EOM";
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle">
        <font size="-1"><strong>
        �I�����C���������σG���[���������܂����B<br>
        ���L�ɋL�ڂ���Ă�����e�����m�F�̏�A�߂��čē��͂��s���Ă��������B
        </strong></font>
        </td>
       </tr>
       <tr>
        <td height="150" align="center" valign="middle">
EOM

				my @msg = split(/\n/,$error_msg);

				foreach my $msg(@msg){

print <<EOM;
$msg<br>
EOM

				}

print <<EOM;
        </td>
       </tr>
       <tr>
        <td height="50" align="center" valign="middle">
        <input type="button" name="submit" value="�߂�" style="width:150px" onClick="history.go(-1);">
        </td>
       </tr>
      </table>
      </div>
EOM

			}

		}else{

print<<"EOM";
      <form name="page_end" id="page_end">
      <input type="hidden" name="address_go"      value="$in{'address'}">
      <input type="hidden" name="address_save_go" value="$in{'address_save'}">
      </form>
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="150" align="center" valign="middle">
        <font size="-1"><strong>
        ���肪�Ƃ��������܂����B�����͒��������e�̑��M�͊������܂����B
        </strong></font>
        </td>
       </tr>
      </table>
      </div>
      <div align="center">
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td height="50" align="center" valign="middle">
        <font size="-1">
        ��������,�m�F���[���𑗐M���܂����B�m�F���[���ɋL�ڂ���Ă�����e�����m�F���������B<br>
        </font>
        </td>
       </tr>
      </table>
      </div>
EOM

		}

		##################################################
		# ASP�f�[�^�o��
		##################################################
		if($otherData[4] ne ""){

			$otherData[4] =~ s/\r\n//g;
			$otherData[4] =~ s/\r//g;
			$otherData[4] =~ s/\n//g;

			if($sendMailAlertDataType2 ne ""){
				&sendMailAlertType2($otherData[4],$sendMailAlertDataType2,$tmp_title);
			}
			if($sendMailAlertDataType1 ne ""){
				&sendMailAlertType1($otherData[4],$sendMailAlertDataType1,$tmp_title);
			}
		}

$times = time;

		if($times ne ""){

			##################################################
			# �݌ɐ��ύX
			##################################################
			if($#itemStock != -1){

				my @data_temp = split(/\n/,$data_temp11);

				my @new_itemStock = ();

				for(my $i = 0 ; $i < $#itemStock + 1 ; $i++){

					my(@is_data) = split(/\,/,$itemStock[$i]);

					my $temp_data = $is_data[6];

					if($temp_data ne ""){

						for(my $n = 0 ; $n < $#data_temp + 1 ; $n++){

							my(@d_data) = split(/\,/,$data_temp[$n]);

							my $d_data4 = $d_data[4];
							my $d_data1 = $d_data[1];

							$d_data4 =~ s/�F/:/g;
							$d_data4 =~ s/\&\#44\;//g;
							$d_data4 =~ s/�A//g;
							$d_data4 =~ s/�C//g;

							$d_data1 =~ s/�F/:/g;
							$d_data1 =~ s/\&\#44\;//g;
							$d_data1 =~ s/�A//g;
							$d_data1 =~ s/�C//g;

							my $is_data4 = $is_data[4];
							my $is_data1 = $is_data[1];

							$is_data4 =~ s/�F/:/g;
							$is_data4 =~ s/\&\#44\;//g;
							$is_data4 =~ s/�A//g;
							$is_data4 =~ s/�C//g;

							$is_data1 =~ s/�F/:/g;
							$is_data1 =~ s/\&\#44\;//g;
							$is_data1 =~ s/�A//g;
							$is_data1 =~ s/�C//g;

							if($is_data[0] eq $d_data[0] 
							&& $is_data1   eq $d_data1 
							&& $is_data[2] eq $d_data[2] 
							&& $is_data[3] eq $d_data[3] 
							&& $is_data4   eq $d_data4 
							&& $is_data[7] eq $d_data[13] 
							&& $is_data[8] eq $d_data[15]){

								$temp_data = $temp_data - $d_data[5];

							}

						}

						if($temp_data >= 0 && $temp_data < 1){
							$temp_data = "0";
						}

					}

					push(@new_itemStock,"$is_data[0],$is_data[1],$is_data[2],$is_data[3],$is_data[4],$is_data[5],$temp_data,$is_data[7],$is_data[8],$is_data[9],$is_data[10]");

				}

				#�t�@�C���������o���B
				open(OUT, "> ./itemStock.dat");		# �ǂݏ������[�h�ŊJ��
				flock(OUT, 2);				# ���b�N�m�F�B���b�N
				seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
				print OUT @new_itemStock;			# ��������
				truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
				close(OUT);				# close����Ύ����Ń��b�N����

			}

			undef(@itemStock);
			##################################################

			##################################################
			# ���i�f�[�^�o��
			##################################################
			#�t�@�C����ǂݏo���B
			open(IN,"./item.dat");
			flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
			my @item = <IN>;
			flock(IN,8);		# ���b�N�����B
			close(IN);

			#�擪�ɐ��������v�f��ǉ��B
			push(@item,$data_temp01);

			#�t�@�C���������o���B
			open(OUT, "> ./item.dat");		# �ǂݏ������[�h�ŊJ��
			flock(OUT, 2);				# ���b�N�m�F�B���b�N
			seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
			print OUT @item;			# ��������
			truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
			close(OUT);				# close����Ύ����Ń��b�N����
			##################################################
			# �ڋq�f�[�^�o��
			##################################################
			$cart_user21 =~ s/&lt;/</g;
			$cart_user21 =~ s/&gt;/>/g;
			$cart_user21 =~ s/\n/<br>/g;

			#�t�@�C����ǂݏo���B
			open(IN,"./customer.dat");
			flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
			my @customer = <IN>;
			flock(IN,8);		# ���b�N�����B
			close(IN);

			my $customer = "$cart_user0$cart_user1,$cart_user2$cart_user3,$cart_user4$cart_user5,$cart_user6,$cart_user7,$cart_user8,$cart_user9\-$cart_user10\-$cart_user11,$cart_user12\-$cart_user13\-$cart_user14,$cart_user15,$cart_user17,����$cart_user18�N$cart_user19��$cart_user20��,,,$cart_user21,1,$times,$title,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$in{'category'}$in{'page'}\n";

			#�擪�ɐ��������v�f��ǉ��B
			push(@customer,$customer);

			#�t�@�C���������o���B
			open(OUT, "> ./customer.dat");		# �ǂݏ������[�h�ŊJ��
			flock(OUT, 2);				# ���b�N�m�F�B���b�N
			seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
			print OUT @customer;			# ��������
			truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
			close(OUT);				# close����Ύ����Ń��b�N����
			##################################################
			# ���i�f�[�^�o��
			##################################################
			#�t�@�C����ǂݏo���B
			open(IN,"./itemSales.dat");
			flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
			my @itemSales = <IN>;
			flock(IN,8);		# ���b�N�����B
			close(IN);

			#�擪�ɐ��������v�f��ǉ��B
			push(@itemSales,$data_temp11);

			#�t�@�C���������o���B
			open(OUT, "> ./itemSales.dat");		# �ǂݏ������[�h�ŊJ��
			flock(OUT, 2);				# ���b�N�m�F�B���b�N
			seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
			print OUT @itemSales;			# ��������
			truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
			close(OUT);				# close����Ύ����Ń��b�N����
			##################################################
			# �ڋq�f�[�^�o��
			##################################################
			#�t�@�C����ǂݏo���B
			open(IN,"./customerSales.dat");
			flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
			my @customerSales = <IN>;
			flock(IN,8);		# ���b�N�����B
			close(IN);

			my $send_price_data = $subtotal - $pricetotal;

			my $total_count = 0;

			if($#count_data != -1){

				my %tmp;
				my @sort = grep(  !$tmp{$_}++, @count_data );

				$total_count = $#sort + 1;

			}

			if($total_count == 0){
				$total_count = 1;
			}

			if($crt39 eq ""){
				$crt39 = "1";
			}

			my $tmep_payment_data = "";

			if($in{'payment'} eq "��s�U�荞��" || $in{'payment'} eq "�����" || $in{'payment'} eq "�X�֐U��" || $in{'payment'} eq "���̑�"){

				$tmep_payment_data = $in{'payment'};

			}else{

				$tmep_payment_data = "�N���W�b�g����";

			}

			#�w����,�w�����z,�z����,���v���z,�z���搔
			my $customerSales = "�m�F�҂�,$times,$cart_user0$cart_user1,$cart_user2$cart_user3,$cart_user4$cart_user5,$cart_user6,$cart_user7,$cart_user8,$cart_user9\-$cart_user10\-$cart_user11,$cart_user12\-$cart_user13\-$cart_user14,$cart_user15,$cart_user17,����$cart_user18�N$cart_user19��$cart_user20��,$unit_count2,$pricetotal,$send_price_data,$subtotal,$total_count,$tmep_payment_data,$crt39,$title,$in{'category'}$in{'page'}\n";

			#�擪�ɐ��������v�f��ǉ��B
			push(@customerSales,$customerSales);

			#�t�@�C���������o���B
			open(OUT, "> ./customerSales.dat");	# �ǂݏ������[�h�ŊJ��
			flock(OUT, 2);				# ���b�N�m�F�B���b�N
			seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
			print OUT @customerSales;		# ��������
			truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
			close(OUT);				# close����Ύ����Ń��b�N����
			##################################################

		}

		##################################################

		if($#shop != -1){

			#�f�[�^��ۑ��B
			&preserves

		}

	}

}

##################################################
# ���[���A�h���X�`�F�b�N�B
##################################################

sub check_email{

	my($mailadress) = @_;

	my $errorFlg = 0;

	#���[���A�h���X�ɃR���}�u,�v���܂܂�Ă��Ȃ����B
	if($mailadress =~ /\,/){
		$errorFlg = 1;
		push(@errorMsg,"���[���A�h���X�ɃR���}�u\,�v���܂܂�Ă��܂�");
	}

	#���[���A�h���X�ɃA�b�g�}�[�N�u@�v���܂܂�Ă��邩�B
	if($mailadress !~ /@/){
		$errorFlg = 1;
		push(@errorMsg,"���[���A�h���X�ɃA�b�g�}�[�N�u@�v���܂܂�Ă��܂���");
	}

	#���[���A�h���X�ɑS�p���܂܂�Ă��Ȃ����B
	if($mailadress =~ /[^0-9a-zA-Z\.\-\_\@]/){
		$errorFlg = 1;
		push(@errorMsg,"���[���A�h���X�ɑS�p���܂܂�Ă��܂�");
	}

	#���[���A�h���X�̃h���C���������s�����B
	if($mailadress !~ /\.[a-zA-Z]{2,5}$/){
		$errorFlg  = 1;
		push(@errorMsg,"���[���A�h���X�𐳂������͂��ĉ�����");
	}

	#���[���A�h���X�`�F�b�N�⑫�B
	if(!$errorFlg){

		my $mail_regex =
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
		if ($mailadress !~ /^$mail_regex$/o){
			push(@errorMsg,"���[���A�h���X�𐳂������͂��ĉ�����");
		}

		#���[���A�h���X�̏������s�����B
		if($mailadress !~ /[\w\.\-]+\@[\w\.\-]+\.[a-zA-Z]{2,5}$/){
			push(@errorMsg,"���[���A�h���X�̏������s���ł�");
		}

	}

}

##################################################

1;

