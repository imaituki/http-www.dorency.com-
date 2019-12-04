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
# ask_check
# ���i�m�F��ʕ\���B
##################################################
sub ask_check{

	#���[�U�f�[�^���̓G���[�B
	if(@user_data[0] eq "")                                               {push(@errorMsg,"�����O�i���j�����͂���Ă��܂���B");}
	if(@user_data[1] eq "")                                               {push(@errorMsg,"�����O�i���j�����͂���Ă��܂���B");}
	if($ain1 eq "1" && @user_data[2] eq "")                               {push(@errorMsg,"�����O�̃t���K�i�i���j�����͂���Ă��܂���B");}
	if($ain1 eq "1" && @user_data[3] eq "")                               {push(@errorMsg,"�����O�̃t���K�i�i���j�����͂���Ă��܂���B");}
	if($ain2 eq "1" && @user_data[4] eq "")                               {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain2 eq "1" && @user_data[4] ne "" && length(@user_data[4]) != 3) {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�����������͂���Ă��܂���B");}
	if($ain2 eq "1" && @user_data[4] ne "" && @user_data[4] =~ /[^0-9]/)  {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain2 eq "1" && @user_data[5] eq "")                               {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain2 eq "1" && @user_data[5] ne "" && length(@user_data[5]) != 4) {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�����������͂���Ă��܂���B");}
	if($ain2 eq "1" && @user_data[5] ne "" && @user_data[5] =~ /[^0-9]/)  {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain2 eq "2" && @user_data[4] ne "" && length(@user_data[4]) != 3) {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�����������͂���Ă��܂���B");}
	if($ain2 eq "2" && @user_data[4] ne "" && @user_data[4] =~ /[^0-9]/)  {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain2 eq "2" && @user_data[5] ne "" && length(@user_data[5]) != 4) {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�����������͂���Ă��܂���B");}
	if($ain2 eq "2" && @user_data[5] ne "" && @user_data[5] =~ /[^0-9]/)  {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain2 eq "2" && @user_data[4] eq "" && @user_data[5] ne "")        {push(@errorMsg,"�X�֔ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain2 eq "2" && @user_data[4] ne "" && @user_data[5] eq "")        {push(@errorMsg,"�X�֔ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain3 eq "1" && @user_data[6] eq "")                               {push(@errorMsg,"�s���{�����I������Ă��܂���B");}
	if($ain3 eq "1" && @user_data[7] eq "")                               {push(@errorMsg,"�Z���i�S�s�撬���j�����͂���Ă��܂���B");}
	if($ain3 eq "1" && @user_data[8] eq "")                               {push(@errorMsg,"�Z���i����ȍ~�̏Z���j�����͂���Ă��܂���B");}
	if($ain4 eq "1" && @user_data[9] eq "")                               {push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "1" && @user_data[9] =~ /[^0-9]/)                         {push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain4 eq "1" && @user_data[10] eq "")                              {push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "1" && @user_data[10] =~ /[^0-9]/)                        {push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain4 eq "1" && @user_data[11] eq "")                              {push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "1" && @user_data[11] =~ /[^0-9]/)                        {push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[9] =~ /[^0-9]/)  {push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[10] ne "" && @user_data[10] =~ /[^0-9]/){push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[11] ne "" && @user_data[11] =~ /[^0-9]/){push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[9] eq "" && @user_data[10] ne "" && @user_data[11] ne ""){push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[10] eq "" && @user_data[11] ne ""){push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[10] ne "" && @user_data[11] eq ""){push(@errorMsg,"�d�b�ԍ��i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[9] eq "" && @user_data[10] eq "" && @user_data[11] ne ""){push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[9] eq "" && @user_data[10] ne "" && @user_data[11] eq ""){push(@errorMsg,"�d�b�ԍ��i�P�ڂ̗��j�i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain4 eq "2" && @user_data[9] ne "" && @user_data[10] eq "" && @user_data[11] eq ""){push(@errorMsg,"�d�b�ԍ��i�Q�ڂ̗��j�i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "1" && @user_data[12] eq "")                              {push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "1" && @user_data[12] =~ /[^0-9]/)                        {push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain5 eq "1" && @user_data[13] eq "")                              {push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "1" && @user_data[13] =~ /[^0-9]/)                        {push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain5 eq "1" && @user_data[14] eq "")                              {push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "1" && @user_data[14] =~ /[^0-9]/)                        {push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[12] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[13] ne "" && @user_data[13] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[14] ne "" && @user_data[14] =~ /[^0-9]/){push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�ɔ��p���������͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] ne ""){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"�e�`�w�ԍ��i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[12] eq "" && @user_data[13] eq "" && @user_data[14] ne ""){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�i�Q�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[12] eq "" && @user_data[13] ne "" && @user_data[14] eq ""){push(@errorMsg,"�e�`�w�ԍ��i�P�ڂ̗��j�i�R�ڂ̗��j�����͂���Ă��܂���B");}
	if($ain5 eq "2" && @user_data[12] ne "" && @user_data[13] eq "" && @user_data[14] eq ""){push(@errorMsg,"�e�`�w�ԍ��i�Q�ڂ̗��j�i�R�ڂ̗��j�����͂���Ă��܂���B");}

	#���[���A�h���X���̓G���[�B
	if($ain6 eq "1"){
		if(@user_data[15] ne @user_data[16]){
			push(@errorMsg,"���[���A�h���X�i�m�F�p�j����v���Ă܂���B");
		}else{
			my $errorMail = mailCheck(@user_data[15]);
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
	}elsif($ain6 eq "2"){
		if(@user_data[15] ne "" || @user_data[16] ne ""){
			if(@user_data[15] ne @user_data[16]){
				push(@errorMsg,"���[���A�h���X�i�m�F�p�j����v���Ă܂���B");
			}else{
				my $errorMail = mailCheck(@user_data[15]);
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
		}
	}

	#���ʓ��̓G���[�B
	if($ain7 eq "1" && @user_data[17] eq ""){push(@errorMsg,"���ʂ��I������Ă��܂���B");}

	#���N�������̓G���[�B
	if($ain8 eq "1"){
		if(@user_data[18] eq "")      {push(@errorMsg,"���N�����i�N�j�����͂���Ă��܂���B");}
		if(@user_data[18] =~ /[^0-9]/){push(@errorMsg,"���N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[19] eq "")      {push(@errorMsg,"���N�����i���j�����͂���Ă��܂���B");}
		if(@user_data[19] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[20] eq "")      {push(@errorMsg,"���N�����i���j�����͂���Ă��܂���B");}
		if(@user_data[20] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			my $errorDate = dateCheck(@user_data[18],@user_data[19],@user_data[20]);
			if($errorDate eq "1"){
				push(@errorMsg,"���N�������s���ł��B");
			}
		}
	}elsif($ain8 eq "2"){
		if(@user_data[18] ne "" && @user_data[18] =~ /[^0-9]/){push(@errorMsg,"���N�����i�N�j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[19] ne "" && @user_data[19] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[20] ne "" && @user_data[20] =~ /[^0-9]/){push(@errorMsg,"���N�����i���j�ɔ��p���������͂���Ă��܂���B");}
		if(@user_data[18] ne "" && @user_data[19] ne "" && @user_data[20] ne "" && 
			@user_data[18] !~ /[^0-9]/ && @user_data[19] !~ /[^0-9]/ && @user_data[20] !~ /[^0-9]/){
			my $errorDate = dateCheck(@user_data[18],@user_data[19],@user_data[20]);
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

	if($ain9 eq "1" && @user_data[21] eq "")          {push(@errorMsg,"�ԓ����@���I������Ă��܂���B");}
	if($ain10 eq "1" && @user_data[22] eq "")         {push(@errorMsg,"�₢���킹���e�����͂���Ă��܂���B");}
	if($ain10 eq "1" && length(@user_data[22]) > 1000){push(@errorMsg,"�₢���킹���e�̓��͂��������܂��B");}
	if($ain10 eq "2" && length(@user_data[22]) > 1000){push(@errorMsg,"�₢���킹���e�̓��͂��������܂��B");}
	if($ain11 eq "1" && @user_data[23] eq "")         {push(@errorMsg,"$ain12�����͂���Ă��܂���B");}
	if($ain11 eq "1" && length(@user_data[23]) > 1000){push(@errorMsg,"$ain12�̓��͂��������܂��B");}
	if($ain11 eq "2" && length(@user_data[23]) > 1000){push(@errorMsg,"$ain12�̓��͂��������܂��B");}

	#���[�U�f�[�^���ʔ���B
	if(@user_data[17] eq "M"){$seibetsu = "�j";}
	if(@user_data[17] eq "F"){$seibetsu = "��";}

	#�G���[��ʕ\���B
	if($#errorMsg != -1){
		&ask_error;
	}else{

		#[table]���`���B
		if($ads6 ne ""){$t_ads6 = " bgcolor=\"$ads6\"";}
		if($ads2 ne ""){$t_ads2 = " border=\"$ads2\"";}
		if($ads2 eq ""){$t_ads2 = " border=\"0\"";}
		if($ads5 ne ""){$t_ads5 = " bordercolor=\"$ads5\"";}
		if($ads3 ne ""){$t_ads3 = " cellspacing=\"$ads3\"";}
		if($ads3 eq ""){$t_ads3 = " cellspacing=\"0\"";}
		if($ads4 ne ""){$t_ads4 = " cellpadding=\"$ads4\"";}
		if($ads4 eq ""){$t_ads4 = " cellpadding=\"0\"";}
		if($ads1 ne ""){$t_ads1 = " width=\"$ads1\"";}

		#[td]���`���B
		if($ads11 ne ""){$t_ads11 = " bgcolor=\"$ads11\"";}
		if($ads10 ne ""){$t_ads10 = " bordercolor=\"$ads10\"";}

		if($ads16 ne ""){$t_ads16 = " bgcolor=\"$ads16\"";}
		if($ads15 ne ""){$t_ads15 = " bordercolor=\"$ads15\"";}

		#[font]���`���B
		if($ads9 ne "")               {$t_ads9   = " size=\"$ads9\"";}
		if($ads8 ne "")               {$t_ads8   = " color=\"$ads8\"";}
		if($ads9 ne "" || $ads8 ne ""){$t1_font1 = "<font$t_ads9$t_ads8>";}
		if($ads9 ne "" || $ads8 ne ""){$t1_font2 = "</font>";}

		if($ads14 ne "")                {$t_ads14  = " size=\"$ads14\"";}
		if($ads13 ne "")                {$t_ads13  = " color=\"$ads13\"";}
		if($ads14 ne "" || $ads13 ne ""){$t2_font1 = "<font$t_ads14$t_ads13>";}
		if($ads14 ne "" || $ads13 ne ""){$t2_font2 = "</font>";}

print<<"EOM";
      <table background="$base_imgdir/$ads7"$t_ads6$t_ads2$t_ads5$t_ads3$t_ads4$t_ads1>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 align="center" valign="middle" height="20">$t1_font1�����͒��������e���m�F���A���M�{�^�����N���b�N���Ă��������B$t1_font2</td>
       </tr>
      </table>
      <br>
      <table background="$base_imgdir/$ads7"$t_ads6$t_ads2$t_ads5$t_ads3$t_ads4$t_ads1>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1�����O$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[0] @user_data[1]$t2_font2</td>
       </tr>
EOM

	##################################################
	if($ain1 eq "1" || $ain1 eq "2"){

		my $temp_2 = @user_data[2];
		my $temp_3 = @user_data[3];

		if($temp_2 eq "" && $temp_3 eq ""){
			$temp_2 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1�t���K�i$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_2 $temp_3$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain2 eq "1" || $ain2 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1�X�֔ԍ�$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[4] �| @user_data[5]$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain3 eq "1" || $ain3 eq "2"){

		my $temp_6 = @user_data[6];

		if($temp_6 eq ""){
			$temp_6 = "&nbsp;"
		}

		my $temp_7 = @user_data[7];

		if($temp_7 eq ""){
			$temp_7 = "&nbsp;"
		}

		my $temp_8 = @user_data[8];

		if($temp_8 eq ""){
			$temp_8 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1�s���{��$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_6$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1�S�s�撬��$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_7$t2_font2</td>
       </tr>
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1����ȍ~�̏Z��$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_8$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain4 eq "1" || $ain4 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1�d�b�ԍ�$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[9] �| @user_data[10] �| @user_data[11]$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain5 eq "1" || $ain5 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1�e�`�w�ԍ�$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1@user_data[12] �| @user_data[13] �| @user_data[14]$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain6 eq "1" || $ain6 eq "2"){

		my $temp_15 = @user_data[15];

		if($temp_15 eq ""){
			$temp_15 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1���[���A�h���X$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_15$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain7 eq "1" || $ain7 eq "2"){

		my $temp_sei = $seibetsu;

		if($temp_sei eq ""){
			$temp_sei = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1����$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_sei$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain8 eq "1" || $ain8 eq "2"){

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1���N����$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1����@user_data[18]�N@user_data[19]��@user_data[20]��$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain9 eq "1" || $ain9 eq "2"){

		my $temp_21 = @user_data[21];
		$temp_21    =~ s/&lt;br&gt;/<br>/g;

		if($temp_21 eq ""){
			$temp_21 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1����]�̕ԓ����@ $t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_21$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain10 eq "1" || $ain10 eq "2"){

		my $temp_22 = @user_data[22];
		$temp_22    =~ s/&lt;br&gt;/<br>/g;

		if($temp_22 eq ""){
			$temp_22 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120" nowrap>$t1_font1���₢���킹���e$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_22$t2_font2</td>
       </tr>
EOM

	}
	##################################################
	if($ain11 eq "1" || $ain11 eq "2"){

		my $temp_23 = @user_data[23];
		$temp_23    =~ s/&lt;br&gt;/<br>/g;

		if($temp_23 eq ""){
			$temp_23 = "&nbsp;"
		}

print<<"EOM";
       <tr>
        <td background="$base_imgdir/$ads12"$t_ads11$t_ads10 valign="middle" width="120">$t1_font1$ain12$t1_font2</td>
        <td background="$base_imgdir/$ads17"$t_ads16$t_ads15 valign="middle">$t2_font1$temp_23$t2_font2</td>
       </tr>
EOM

	}
	##################################################

print<<"EOM";
      </table>
      <table border="0" cellpadding="1" cellspacing="1">
       <tr>
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="title" value="$in{'title'}">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="view" value="$in{'view'}">
        <input type="hidden" name="no" value="$in{'no'}">
EOM

	if($kind eq "���i�ē�1"){

print<<"EOM";
        <input type="hidden" name="ask" value="on">
EOM

	}

	if($kind eq "���i�ē�2"){

print<<"EOM";
        <input type="hidden" name="detail" value="on">
EOM

	}

print<<"EOM";
        <input type="hidden" name="user_data" value="@user_data[0]">
        <input type="hidden" name="user_data" value="@user_data[1]">
        <input type="hidden" name="user_data" value="@user_data[2]">
        <input type="hidden" name="user_data" value="@user_data[3]">
        <input type="hidden" name="user_data" value="@user_data[4]">
        <input type="hidden" name="user_data" value="@user_data[5]">
        <input type="hidden" name="user_data" value="@user_data[6]">
        <input type="hidden" name="user_data" value="@user_data[7]">
        <input type="hidden" name="user_data" value="@user_data[8]">
        <input type="hidden" name="user_data" value="@user_data[9]">
        <input type="hidden" name="user_data" value="@user_data[10]">
        <input type="hidden" name="user_data" value="@user_data[11]">
        <input type="hidden" name="user_data" value="@user_data[12]">
        <input type="hidden" name="user_data" value="@user_data[13]">
        <input type="hidden" name="user_data" value="@user_data[14]">
        <input type="hidden" name="user_data" value="@user_data[15]">
        <input type="hidden" name="user_data" value="@user_data[16]">
        <input type="hidden" name="user_data" value="@user_data[17]">
        <input type="hidden" name="user_data" value="@user_data[18]">
        <input type="hidden" name="user_data" value="@user_data[19]">
        <input type="hidden" name="user_data" value="@user_data[20]">
        <input type="hidden" name="user_data" value="@user_data[21]">
        <input type="hidden" name="user_data" value="@user_data[22]">
        <input type="hidden" name="user_data" value="@user_data[23]">
        <input type="submit" value="�O��ʂɖ߂�" style="width:150px">
        </form>
        </td>
EOM

	my $errorMail = mailCheck($ask1);

	if($errorMail ne "1" && $errorMail ne "2" && $errorMail ne "3" && $errorMail ne "4" && $errorMail ne "5" && $errorMail ne "6"){

		#��M���[���A�h���X�����݂���ꍇ��[form]��\���B
		if($location eq "up" && $ask1 ne ""){

print<<"EOM";
        <td>
        <form action="$script" method="post" style="margin-bottom:0">
        <input type="hidden" name="title" value="$in{'title'}�ɂ���">
        <input type="hidden" name="title1" value="$in{'title'}">
        <input type="hidden" name="category" value="$in{'category'}">
        <input type="hidden" name="page" value="$in{'page'}">
        <input type="hidden" name="no" value="$in{'no'}">
        <input type="hidden" name="ask" value="mail">
        <input type="hidden" name="user_data" value="@user_data[0]">
        <input type="hidden" name="user_data" value="@user_data[1]">
        <input type="hidden" name="user_data" value="@user_data[2]">
        <input type="hidden" name="user_data" value="@user_data[3]">
        <input type="hidden" name="user_data" value="@user_data[4]">
        <input type="hidden" name="user_data" value="@user_data[5]">
        <input type="hidden" name="user_data" value="@user_data[6]">
        <input type="hidden" name="user_data" value="@user_data[7]">
        <input type="hidden" name="user_data" value="@user_data[8]">
        <input type="hidden" name="user_data" value="@user_data[9]">
        <input type="hidden" name="user_data" value="@user_data[10]">
        <input type="hidden" name="user_data" value="@user_data[11]">
        <input type="hidden" name="user_data" value="@user_data[12]">
        <input type="hidden" name="user_data" value="@user_data[13]">
        <input type="hidden" name="user_data" value="@user_data[14]">
        <input type="hidden" name="user_data" value="@user_data[15]">
        <input type="hidden" name="user_data" value="@user_data[16]">
        <input type="hidden" name="user_data" value="@user_data[17]">
        <input type="hidden" name="user_data" value="@user_data[18]">
        <input type="hidden" name="user_data" value="@user_data[19]">
        <input type="hidden" name="user_data" value="@user_data[20]">
        <input type="hidden" name="user_data" value="@user_data[21]">
        <input type="hidden" name="user_data" value="@user_data[22]">
        <input type="hidden" name="user_data" value="@user_data[23]">
        <input type="submit" value="���̓��e�ő��M����" style="width:150px">
        </form>
        </td>
EOM

		}else{

print<<"EOM";
        <td align="right"><input type="button" value="���̓��e�ő��M����"></td>
EOM

		}

	}

print<<"EOM";
       </tr>
      </table>
EOM

	}
}
##################################################
# ask_mail
# ���i���[�����M�B
##################################################
sub ask_mail{

	#���Ԃ��擾�B
	&get_time;

	#�ԐM���[���^�C�g���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	$ask2 =~ s/&lt;/</g;
#	$ask2 =~ s/&gt;/>/g;
	$ask2 =~ s/&quot;/\"/g;
	$ask2 =~ s/<br>/\n/g;
	$ask2 =~ s/&lt;br&gt;/<br>/g;
	$ask2 =~ s/\.\n/\. \n/g;
	$ask2 =~ s/\&\#44\;/\,/g;

	#�ԐM���[���w�b�_�[���͂̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	$ask3 =~ s/&lt;/</g;
#	$ask3 =~ s/&gt;/>/g;
	$ask3 =~ s/&quot;/\"/g;
	$ask3 =~ s/<br>/\n/g;
	$ask3 =~ s/&lt;br&gt;/<br>/g;
	$ask3 =~ s/\.\n/\. \n/g;
	$ask3 =~ s/\&\#44\;/\,/g;

	#�ԐM���[���t�b�^�[���͂̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	$ask4 =~ s/&lt;/</g;
#	$ask4 =~ s/&gt;/>/g;
	$ask4 =~ s/&quot;/\"/g;
	$ask4 =~ s/<br>/\n/g;
	$ask4 =~ s/&lt;br&gt;/<br>/g;
	$ask4 =~ s/\.\n/\. \n/g;
	$ask4 =~ s/\&\#44\;/\,/g;

	#���O�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[0] =~ s/&lt;/</g;
#	@user_data[0] =~ s/&gt;/>/g;
	@user_data[0] =~ s/&quot;/\"/g;
	@user_data[0] =~ s/<br>/\n/g;
	@user_data[0] =~ s/&lt;br&gt;/<br>/g;
	@user_data[0] =~ s/\.\n/\. \n/g;
	@user_data[0] =~ s/\&\#44\;/\,/g;

	#���O�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[1] =~ s/&lt;/</g;
#	@user_data[1] =~ s/&gt;/>/g;
	@user_data[1] =~ s/&quot;/\"/g;
	@user_data[1] =~ s/<br>/\n/g;
	@user_data[1] =~ s/&lt;br&gt;/<br>/g;
	@user_data[1] =~ s/\.\n/\. \n/g;
	@user_data[1] =~ s/\&\#44\;/\,/g;

	#�t���K�i�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[2] =~ s/&lt;/</g;
#	@user_data[2] =~ s/&gt;/>/g;
	@user_data[2] =~ s/&quot;/\"/g;
	@user_data[2] =~ s/<br>/\n/g;
	@user_data[2] =~ s/&lt;br&gt;/<br>/g;
	@user_data[2] =~ s/\.\n/\. \n/g;
	@user_data[2] =~ s/\&\#44\;/\,/g;

	#�t���K�i�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[3] =~ s/&lt;/</g;
#	@user_data[3] =~ s/&gt;/>/g;
	@user_data[3] =~ s/&quot;/\"/g;
	@user_data[3] =~ s/<br>/\n/g;
	@user_data[3] =~ s/&lt;br&gt;/<br>/g;
	@user_data[3] =~ s/\.\n/\. \n/g;
	@user_data[3] =~ s/\&\#44\;/\,/g;

	#�S�s�撬���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[7] =~ s/&lt;/</g;
#	@user_data[7] =~ s/&gt;/>/g;
	@user_data[7] =~ s/&quot;/\"/g;
	@user_data[7] =~ s/<br>/\n/g;
	@user_data[7] =~ s/&lt;br&gt;/<br>/g;
	@user_data[7] =~ s/\.\n/\. \n/g;
	@user_data[7] =~ s/\&\#44\;/\,/g;

	#����ȍ~�̏Z���̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[8] =~ s/&lt;/</g;
#	@user_data[8] =~ s/&gt;/>/g;
	@user_data[8] =~ s/&quot;/\"/g;
	@user_data[8] =~ s/<br>/\n/g;
	@user_data[8] =~ s/&lt;br&gt;/<br>/g;
	@user_data[8] =~ s/\.\n/\. \n/g;
	@user_data[8] =~ s/\&\#44\;/\,/g;

	#�₢���킹���e�̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[22] =~ s/&lt;/</g;
#	@user_data[22] =~ s/&gt;/>/g;
	@user_data[22] =~ s/&quot;/\"/g;
	@user_data[22] =~ s/<br>/\n/g;
	@user_data[22] =~ s/&lt;br&gt;/<br>/g;
	@user_data[22] =~ s/\.\n/\. \n/g;
	@user_data[22] =~ s/\&\#44\;/\,/g;

	#���R�ݒ荀�ڂ̒u���B�i�N���X�T�C�g�X�N���v�e�B���O�Ή��j
#	@user_data[23] =~ s/&lt;/</g;
#	@user_data[23] =~ s/&gt;/>/g;
	@user_data[23] =~ s/&quot;/\"/g;
	@user_data[23] =~ s/<br>/\n/g;
	@user_data[23] =~ s/&lt;br&gt;/<br>/g;
	@user_data[23] =~ s/\.\n/\. \n/g;
	@user_data[23] =~ s/\&\#44\;/\,/g;

	#���[�U�f�[�^���ʔ���B
	if(@user_data[17] eq "M"){$seibetsu = "�j";}
	if(@user_data[17] eq "F"){$seibetsu = "��";}

	#��M���[���A�h���X�B
	$mailto = "$ask1";

	#�m�F���[���A�h���X�B
	$email = @user_data[15];

	#���[�������B
	$subject = "�u$title�v$in{'title'}�̂��₢���킹";

	#�m�F���[�������B
	$re_subject = "$ask2";

	#�ԐM���[���w�b�_�[�o�́B

$re_mailhead=<<"EOM";

@user_data[0] @user_data[1]�l

$ask3
EOM

	#�ԐM���[�����e�o�́B

$mailhead=<<"EOM";

���₢���킹���e�͈ȉ��̒ʂ�ł��B
EOM

	#�ԐM���[�����e�o�́B

$mailbody.=<<"EOM";
$in{'title'}�̂��₢���킹

�������O
@user_data[0] @user_data[1]

EOM

	##################################################
	if($ain1 eq "1" || $ain1 eq "2"){

$mailbody.=<<"EOM";
���t���K�i
@user_data[2] @user_data[3]

EOM

	}
	##################################################
	if($ain2 eq "1" || $ain2 eq "2"){

$mailbody.=<<"EOM";
���X�֔ԍ�
@user_data[4] �| @user_data[5]

EOM

	}
	##################################################
	if($ain3 eq "1" || $ain3 eq "2"){

$mailbody.=<<"EOM";
���s���{��
@user_data[6]

���S�s�撬��
@user_data[7]

������ȍ~�̏Z��
@user_data[8]

EOM

	}
	##################################################
	if($ain4 eq "1" || $ain4 eq "2"){

$mailbody.=<<"EOM";
���d�b�ԍ�
@user_data[9] �| @user_data[10] �| @user_data[11]

EOM

	}
	##################################################
	if($ain5 eq "1" || $ain5 eq "2"){

$mailbody.=<<"EOM";
��FAX�ԍ�
@user_data[12] �| @user_data[13] �| @user_data[14]

EOM

	}
	##################################################
	if($ain6 eq "1" || $ain6 eq "2"){

$mailbody.=<<"EOM";
�����[���A�h���X
@user_data[15]

EOM

	}
	##################################################
	if($ain7 eq "1" || $ain7 eq "2"){

$mailbody.=<<"EOM";
������
$seibetsu

EOM

	}
	##################################################
	if($ain8 eq "1" || $ain8 eq "2"){

$mailbody.=<<"EOM";
�����N����
����@user_data[18]�N@user_data[19]��@user_data[20]��

EOM

	}
	##################################################
	if($ain9 eq "1" || $ain9 eq "2"){

$mailbody.=<<"EOM";
������]�̕ԓ����@
@user_data[21]

EOM

	}
	##################################################
	if($ain10 eq "1" || $ain10 eq "2"){

$mailbody.=<<"EOM";
�����₢���킹���e
@user_data[22]

EOM

	}
	##################################################
	if($ain11 eq "1" || $ain11 eq "2"){

$mailbody.=<<"EOM";
��$ain12
@user_data[23]
EOM

	}
	##################################################

	#�ԐM���[���t�b�^�[�o�́B

$re_mailfoot=<<"EOM";
$ask4
EOM

	#JIS�R�[�h�ϊ��B
	&jcode'convert(*re_subject,'jis');
	&jcode'convert(*subject,'jis');
	&jcode'convert(*mailhead,'jis');
	&jcode'convert(*re_mailhead,'jis');
	&jcode'convert(*mailbody,'jis');
	&jcode'convert(*re_mailfoot,'jis');

	#���[�����M�B�i��M���[���j
	open(MAIL,"|$sendmail -t -f '$email'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $mailto\n";
	print MAIL "From: $email <$email>\n";
	print MAIL "Subject: $subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$mailhead\n";
	print MAIL "$mailbody\n";
	close(MAIL);

	#���[�����M�B�i�m�F���[���j
	open(MAIL,"|$sendmail -t -f '$mailto'") || &error("���[�����M�Ɏ��s���܂���");
	print MAIL "Message-Id:\n";
	print MAIL "To: $email\n";
	print MAIL "From: $mailto <$mailto>\n";
	print MAIL "Subject: $re_subject\n";
	print MAIL "MIME-Version: 1.0\n";
	print MAIL "Content-type: text/plain; charset=ISO-2022-JP\n";
	print MAIL "Content-Transfer-Encoding: 7bit\n";
	print MAIL "$re_mailhead\n";
	print MAIL "$mailbody\n";
	print MAIL "$re_mailfoot\n";
	close(MAIL);

#�������b�Z�[�W�B

print<<"EOM";
     <div align="center">
     <table border="0" cellpadding="1" cellspacing="1">
      <tr>
       <td><br></td>
      </tr>
      <tr>
       <td><font size="-1"><strong>�����͒��������e�̑��M�͊����������܂����B</strong></font></td>
      </tr>
     </table>
     </div>
EOM

	#�����[�g�z�X�g���擾�B
	$remote_host = $ENV{'REMOTE_HOST'};

	#IP�A�h���X�擾�B
	$remote_addr = $ENV{'REMOTE_ADDR'};

	#���[�U���ϐ��擾�B
	$http_user_agent = $ENV{'HTTP_USER_AGENT'};

	#���[�U���ϐ��u���B
	$http_user_agent =~ s/HTML,/HTML/g;

	#�p�����[�^���擾�B
	if($buffer =~ /&&|&amp;&amp;/){
		($dummy,$http_referer) = split(/&&/,$ENV{'QUERY_STRING'});
	}

	#�����N����URL�擾�B
	if($http_referer eq ''){
		$http_referer = $ENV{'HTTP_REFERER'};
	}

	#�����N����URL�u���B
	$http_referer =~ s/\,/\&\#44\;/g;

	#�����[�g�z�X�g������A�������̓����[�g�z�X�g����IP�A�h���X�̏ꍇ�ɂ́AIP�A�h���X���烊���[�g�z�X�g���擾�B
	if($remote_host eq "" || $remote_host eq "$remote_addr"){
		$remote_host = gethostbyaddr(pack('C4',split(/\./,$remote_addr)),2);
	}

	#�����[�g�z�X�g������̏ꍇ�ɂ̓����[�g�z�X�g����IP�A�h���X�ɂ���B
	if($remote_host eq ''){
		$remote_host = $remote_addr;
	}

	#�t�@�C����ǂݏo���B
	open(IN,"./site_log/$date2.cgi");
	flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
	@temp = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);

	#�t�@�C���o�͏������s�t���Ō`���B�i[�^�C�g��]�A[�����[�g�z�X�g��]�A[IP�A�h���X]�A[���[�U���ϐ�]�A[�����N����URL]�A[���ԁi1970�N1��1������̌o�ߕb���j]�j
	$line = "���[�����M�i�₢���킹�j,$remote_host,$remote_addr,$http_user_agent,$http_referer,$times\n";

	#�擪�ɐ��������v�f��ǉ��B
	unshift(@temp,$line);

	#�t�@�C���������o���B
	open(OUT, "> ./site_log/$date2.cgi");	# �ǂݏ������[�h�ŊJ��
	flock(OUT, 2);				# ���b�N�m�F�B���b�N
	seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
	print OUT @temp;			# ��������
	truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
	close(OUT);				# close����Ύ����Ń��b�N����

	#���₢���킹�ҏ��ۑ��v�ۂ�"on"�̏ꍇ�B
	if($ask5 eq "on"){

		#�f�B���N�g���ݒ�B
		$makedir = "./address";

		#�f�B���N�g���쐬�B�i�p�[�~�b�V������0755�ō쐬�j
		unless (-d $makedir){
			mkdir($makedir,0755);
		}

		chmod(0755,$makedir);

		#�A�h���X����ǂݍ��݁B
		open(IN,"./address/address.csv");
		flock(IN,1);
		@address_csv = <IN>;
		flock(IN,8);
		close(IN);

		#FAX�ԍ��`���B
		if(@user_data[12] ne "" && @user_data[13] ne "" && @user_data[14] ne ""){
			$fax2 = "@user_data[12]\-@user_data[13]\-@user_data[14]";
		}

		#TEL�ԍ��`���B
		$tel2 = "@user_data[9]\-@user_data[10]\-@user_data[11]";

		#���N�����`���B
		$birth2 = "@user_data[18]\/@user_data[19]\/@user_data[20]";

		#�A�h���X���ϐ��̏������B
		@renew = ();

		#�A�h���X��񐔂̏������B
		$address_list = 0;

		#�ߋ��ɖ₢���킹�����������Ƃ̃t���O�B
		$flag = 0;

		#�A�h���X���̐����B
		foreach(@address_csv){

			#�A�h���X���̕����B
			local($id,$mail,$name,$post,$address1,$address2,$address3,$tel,$fax,$other1,$other2,$other3,$other4,$other5,$sex,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$gp1,$birth) = split(/,/,$_);

			#�ߋ��̃��[���A�h���X�Ɩ₢���킹���[���A�h���X�̔�r�B
			if(@user_data[15] eq "$mail"){

				#�t���O���āB
				$flag = 1;

				#�V�����₢���킹���`���B
				$_ = "$id,@user_data[15],@user_data[0] @user_data[1],@user_data[4]@user_data[5],@user_data[6],@user_data[7],@user_data[8],$tel2,$fax2,,,,,,@user_data[17],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";
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
			if($id < 15000){

				#�ۑ����`���B
				$line = "$address_list,@user_data[15],@user_data[0] @user_data[1],@user_data[4]@user_data[5],@user_data[6],@user_data[7],@user_data[8],$tel2,$fax2,,,,,,@user_data[17],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,$birth2\n";

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

	##################################################
	# ASP�f�[�^�o��
	##################################################

	#�t�@�C����ǂݏo���B
	open(IN,"./item.dat");
	flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
	my @item = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);

	my $item = "$in{'title1'},,,,0,0,0,0,,,,,@user_data[0]@user_data[1],@user_data[15],$times,$title,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$in{'no'},$in{'category'}$in{'page'}\n";

	#�擪�ɐ��������v�f��ǉ��B
	unshift(@item,$item);

	#�t�@�C���������o���B
	open(OUT, "> ./item.dat");		# �ǂݏ������[�h�ŊJ��
	flock(OUT, 2);				# ���b�N�m�F�B���b�N
	seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
	print OUT @item;			# ��������
	truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
	close(OUT);				# close����Ύ����Ń��b�N����

	$user_data[22] =~ s/\n/<br>/g;
	$user_data[23] =~ s/\n/<br>/g;

	#�t�@�C����ǂݏo���B
	open(IN,"./customer.dat");
	flock(IN,1);		# �t�@�C����ǂݏo�����b�N�B
	my @customer = <IN>;
	flock(IN,8);		# ���b�N�����B
	close(IN);

	my $customer = "@user_data[0]@user_data[1],@user_data[2]@user_data[3],@user_data[4]@user_data[5],@user_data[6],@user_data[7],@user_data[8],@user_data[9]\-@user_data[10]\-@user_data[11],@user_data[12]\-@user_data[13]\-@user_data[14],@user_data[15],$seibetsu,����@user_data[18]�N@user_data[19]��@user_data[20]��,@user_data[21],$user_data[22],$user_data[23],1,$times,$title,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,$in{'category'}$in{'page'}\n";

	#�擪�ɐ��������v�f��ǉ��B
	unshift(@customer,$customer);

	#�t�@�C���������o���B
	open(OUT, "> ./customer.dat");		# �ǂݏ������[�h�ŊJ��
	flock(OUT, 2);				# ���b�N�m�F�B���b�N
	seek(OUT, 0, 0);			# �t�@�C���|�C���^��擪�ɃZ�b�g
	print OUT @customer;			# ��������
	truncate(OUT, tell(OUT));		# �t�@�C���T�C�Y���������񂾃T�C�Y�ɂ���
	close(OUT);				# close����Ύ����Ń��b�N����

	##################################################

}
##################################################
# ask_error
# �G���[�����B
##################################################
sub ask_error{

	#�G���[���e�\���B

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
         <input type="hidden" name="title" value="$in{'title'}">
         <input type="hidden" name="category" value="$in{'category'}">
         <input type="hidden" name="page" value="$in{'page'}">
         <input type="hidden" name="view" value="$in{'view'}">
         <input type="hidden" name="no" value="$in{'no'}">
EOM

	if($kind eq "���i�ē�1"){

print<<"EOM";
         <input type="hidden" name="ask" value="on">
EOM

	}

	if($kind eq "���i�ē�2"){

print<<"EOM";
         <input type="hidden" name="detail" value="on">
EOM

	}


print<<"EOM";
         <input type="hidden" name="user_data" value="@user_data[0]">
         <input type="hidden" name="user_data" value="@user_data[1]">
         <input type="hidden" name="user_data" value="@user_data[2]">
         <input type="hidden" name="user_data" value="@user_data[3]">
         <input type="hidden" name="user_data" value="@user_data[4]">
         <input type="hidden" name="user_data" value="@user_data[5]">
         <input type="hidden" name="user_data" value="@user_data[6]">
         <input type="hidden" name="user_data" value="@user_data[7]">
         <input type="hidden" name="user_data" value="@user_data[8]">
         <input type="hidden" name="user_data" value="@user_data[9]">
         <input type="hidden" name="user_data" value="@user_data[10]">
         <input type="hidden" name="user_data" value="@user_data[11]">
         <input type="hidden" name="user_data" value="@user_data[12]">
         <input type="hidden" name="user_data" value="@user_data[13]">
         <input type="hidden" name="user_data" value="@user_data[14]">
         <input type="hidden" name="user_data" value="@user_data[15]">
         <input type="hidden" name="user_data" value="@user_data[16]">
         <input type="hidden" name="user_data" value="@user_data[17]">
         <input type="hidden" name="user_data" value="@user_data[18]">
         <input type="hidden" name="user_data" value="@user_data[19]">
         <input type="hidden" name="user_data" value="@user_data[20]">
         <input type="hidden" name="user_data" value="@user_data[21]">
         <input type="hidden" name="user_data" value="@user_data[22]">
         <input type="hidden" name="user_data" value="@user_data[23]">
         <input type="submit" value="���͉�ʂɖ߂�">
         </form>
        </td>
       </tr>
      </table>
      </div>
EOM

}
##################################################
# mailCheck
# ���[���`�F�b�N�B
##################################################
sub mailCheck{

	my ($mailAddr) = @_;

	my $errorNo = "";

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
sub dateCheck() {

	my($year, $mon, $day) = @_;

	my $errorNo = "";

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

1;

