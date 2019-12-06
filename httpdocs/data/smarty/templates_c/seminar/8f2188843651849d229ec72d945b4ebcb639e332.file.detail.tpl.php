<?php /* Smarty version Smarty-3.1.18, created on 2019-12-03 15:57:13
         compiled from "./detail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3474131675dccd270c46063-54816184%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f2188843651849d229ec72d945b4ebcb639e332' => 
    array (
      0 => './detail.tpl',
      1 => 1575356231,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3474131675dccd270c46063-54816184',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dccd270c64d58_60048073',
  'variables' => 
  array (
    'template_meta' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    't_seminar' => 0,
    'OptionSeminarsCategory' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dccd270c64d58_60048073')) {function content_5dccd270c64d58_60048073($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/home/brownotter8/data/smarty/libs/plugins/modifier.date_format.php';
?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="seminar">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body" class="bg_dot">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/seminar/top.jpg" alt="セミナー実績"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2>セミナー実績</h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" >
		<div class="center">
			<ul>
				<li><a href="/">HOME</a></li>
				<li><a href="../">セミナー実績</a></li>
				<li><?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['title'];?>
</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center">
			<!-- デザイン上ここにあるタイトルは不要 -->
			<div class="box">
				<div class="hl_2 mb10">
					<h2><?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['title'];?>
</h2>
				</div>
				<div class="mb30">
					<span class="tag_1"><?php echo $_smarty_tpl->tpl_vars['OptionSeminarsCategory']->value[$_smarty_tpl->tpl_vars['t_seminar']->value['seminar_category']];?>
</span>
					<span class="place"><i class="fa fa-map-marker-alt"></i><?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['area'];?>
<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['place']) {?>　<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['place'];?>
<?php }?></span>
				</div>
				<div class="row mb50">
					<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['image1']) {?>
					<div class="col-xs-6 mb20">
						<div class="photo"><div class="img_rect"><img src="/common/photo/seminar/image1/l_<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['image1'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['title'];?>
"></div></div>
					</div>
					<?php }?>
					<div class="col-xs-6">
						<div class="cb mb20 large">
							<p class="mb10">開催日時：
							<?php if (smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_end'],"%Y-%m-%d")!=smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_start'],"%Y-%m-%d")) {?>
							<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_start'],"%Y/%m/%d %H:%M");?>
 ～ <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_end'],"%Y/%m/%d %H:%M");?>

							<?php } else { ?>
								<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_start'],"%Y/%m/%d %H:%M");?>
 ～ <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_end'],"%H:%M");?>

							<?php }?></p>

							<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['sponsor']) {?><p class="mb10">主催：<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['sponsor'];?>
</p><?php }?>

							<p class="mb10">参加費：<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['price']) {?><?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['price'];?>
円<?php } elseif ($_smarty_tpl->tpl_vars['t_seminar']->value['price']==0||$_smarty_tpl->tpl_vars['t_seminar']->value['price']==null) {?>参加費無料<?php }?></p>

							<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['capacity']) {?><p class="mb10">定員：<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['capacity'];?>
</p><?php }?>
						</div>
						<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['comment']) {?>
						<div class="seminar_comment">
							<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['comment'];?>

						</div>
						<?php }?>
						<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['file1']||$_smarty_tpl->tpl_vars['t_seminar']->value['file2']) {?>
						<div class="file">
							<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['file1']) {?>
							<a href="###"><i class="fa fa-file"></i><?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['file_caption1']) {?><?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['file_caption1'];?>
<?php } else { ?>添付ファイル<?php }?></a>
							<?php }?>
							<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['file2']) {?>
							<a href="###"><i class="fa fa-file"></i><?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['file_caption2']) {?><?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['file_caption2'];?>
<?php } else { ?>添付ファイル<?php }?></a>
							<?php }?>
						</div>
						<?php }?>
					</div>
				</div>
				<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['image2']||$_smarty_tpl->tpl_vars['t_seminar']->value['image3']) {?>
				<div class="row mb50">
					<div class="col-xs-6 mb20">
						<div class="photo"><div class="img_rect"><img src="/common/photo/seminar/image2/l_<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['image2'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['title'];?>
"></div></div>
					</div>
					<div class="col-xs-6">
						<div class="photo"><div class="img_rect"><img src="/common/photo/seminar/image3/l_<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['image3'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['title'];?>
"></div></div>
					</div>
				</div>
				<?php }?>
				<?php if (smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_end'],"%Y-%m-%d %H:%M:%S")>smarty_modifier_date_format(time(),"%Y-%m-%d %H:%M:%S")&&$_smarty_tpl->tpl_vars['t_seminar']->value['application_flg']==1) {?>
					<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['url']!=null) {?>
					<div class="pos_ac">
						<a href="<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['url'];?>
" class="button _more mb10" target="_blank">このセミナーに申し込む<i class="fa fa-arrow-right"></i></a>
						<div class="small c_gray">※外部案内サイトへ移動します</div>
					</div>
					<?php } else { ?>
					<div class="pos_ac">
						<a href="/contact/?seminar=<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['id_seminar'];?>
" class="button _more">このセミナーに申し込む<i class="fa fa-arrow-right"></i></a>
					</div>
					<?php }?>
				<?php }?>

				<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['application_flg']==0&&smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_end'],"%Y-%m-%d %H:%M:%S")>smarty_modifier_date_format(time(),"%Y-%m-%d %H:%M:%S")) {?>
				<div class="pos_ac c_gray">このセミナーの申込みは締め切りました</div>
				<?php }?>


				<?php if (smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_seminar']->value['date_end'],"%Y-%m-%d %H:%M:%S")<smarty_modifier_date_format(time(),"%Y-%m-%d %H:%M:%S")) {?>
				<div class="seminar_alert">このセミナーは終了しました。ご参加ありがとうございました。</div>
				<?php }?>
			</div>
		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
