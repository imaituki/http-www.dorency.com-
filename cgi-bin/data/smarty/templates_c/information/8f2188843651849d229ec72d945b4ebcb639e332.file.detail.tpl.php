<?php /* Smarty version Smarty-3.1.18, created on 2019-11-21 10:21:57
         compiled from "./detail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16079345195dc912400ee812-37862559%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f2188843651849d229ec72d945b4ebcb639e332' => 
    array (
      0 => './detail.tpl',
      1 => 1574299315,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16079345195dc912400ee812-37862559',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dc91240109e58_19999524',
  'variables' => 
  array (
    'template_meta' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    't_information' => 0,
    '_RENEWAL_DIR' => 0,
    'arr_get' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dc91240109e58_19999524')) {function content_5dc91240109e58_19999524($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/home/brownotter8/data/smarty/libs/plugins/modifier.date_format.php';
?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<script type="text/javascript" src="/common/js/lightbox/import.js"></script>

</head>
<body id="information">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body" class="bg_dot">
	<div id="page_title">
		<div class="img_back"><img src="/common/image/contents/information/top.jpg" alt="お知らせ"></div>
		<div class="page_title_wrap">
			<div class="center">
				<h2>お知らせ</h2>
			</div>
		</div>
	</div>
	<div id="pankuzu" >
		<div class="center">
			<ul>
				<li><a href="/">HOME</a></li>
				<li><a href="/information/">お知らせ</a></li>
				<li><?php echo $_smarty_tpl->tpl_vars['t_information']->value['title'];?>
</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper center">
			<div class="box mb50">
				<div class="hl_2">
					<h2><?php echo $_smarty_tpl->tpl_vars['t_information']->value['title'];?>
</h2>
					<div class="right">
						<span class="date"><?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['t_information']->value['date'],"%Y/%m/%d");?>
</span>
					</div>
				</div>
				<?php if ($_smarty_tpl->tpl_vars['t_information']->value['image1']) {?>
				<div class="photo pos_ac max"><img src="/common/photo/information/image1/l_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image1'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_information']->value['title'];?>
"></div>
				<?php if ($_smarty_tpl->tpl_vars['t_information']->value['caption1']) {?> <div class="small pos_ac mb30"><?php echo $_smarty_tpl->tpl_vars['t_information']->value['caption1'];?>
</div><?php }?>
				<?php }?>
				<div class="info_comment">
					<?php echo $_smarty_tpl->tpl_vars['t_information']->value['comment'];?>

				</div>
				<?php if ($_smarty_tpl->tpl_vars['t_information']->value['image2']||$_smarty_tpl->tpl_vars['t_information']->value['image3']||$_smarty_tpl->tpl_vars['t_information']->value['image4']||$_smarty_tpl->tpl_vars['t_information']->value['image5']) {?>
				<div class="row sub_photo">
					<?php if ($_smarty_tpl->tpl_vars['t_information']->value['image2']) {?>
					<div class="col-xs-3 col-6 height-1">
						<div class="photo mb30">
							<a href="/common/photo/information/image2/l_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image2'];?>
" rel="lightbox" ><div class="img_rect"><img src="/common/photo/information/image2/m_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image2'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_information']->value['title'];?>
"></div></a>
							<?php if ($_smarty_tpl->tpl_vars['t_information']->value['caption2']) {?> <div class="small"><?php echo $_smarty_tpl->tpl_vars['t_information']->value['caption2'];?>
</div><?php }?>
						</div>
					</div>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['t_information']->value['image3']) {?>
					<div class="col-xs-3 col-6 height-1">
						<div class="photo mb30">
							<a href="/common/photo/information/image3/l_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image3'];?>
" rel="lightbox" ><div class="img_rect"><img src="/common/photo/information/image3/m_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image3'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_information']->value['title'];?>
"></div></a>
							<?php if ($_smarty_tpl->tpl_vars['t_information']->value['caption3']) {?> <div class="small"><?php echo $_smarty_tpl->tpl_vars['t_information']->value['caption3'];?>
</div><?php }?>
						</div>
					</div>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['t_information']->value['image4']) {?>
					<div class="col-xs-3 col-6 height-1">
						<div class="photo mb30">
							<a href="/common/photo/information/image4/l_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image4'];?>
" rel="lightbox" ><div class="img_rect"><img src="/common/photo/information/image4/m_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image4'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_information']->value['title'];?>
"></div></a>
							<?php if ($_smarty_tpl->tpl_vars['t_information']->value['caption4']) {?> <div class="small"><?php echo $_smarty_tpl->tpl_vars['t_information']->value['caption4'];?>
</div><?php }?>
						</div>
					</div>
					<?php }?>
					<?php if ($_smarty_tpl->tpl_vars['t_information']->value['image5']) {?>
					<div class="col-xs-3 col-6 height-1">
						<div class="photo mb30">
							<a href="/common/photo/information/image5/l_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image5'];?>
" rel="lightbox" ><div class="img_rect"><img src="/common/photo/information/image5/m_<?php echo $_smarty_tpl->tpl_vars['t_information']->value['image5'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['t_information']->value['title'];?>
"></div></a>
							<?php if ($_smarty_tpl->tpl_vars['t_information']->value['caption5']) {?> <div class="small"><?php echo $_smarty_tpl->tpl_vars['t_information']->value['caption5'];?>
</div><?php }?>
						</div>
					</div>
					<?php }?>
				</div>
				<?php }?>
			</div>
			<div class="pos_ac"><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/information/<?php if ($_smarty_tpl->tpl_vars['arr_get']->value['page']!=null) {?>?page=<?php echo $_smarty_tpl->tpl_vars['arr_get']->value['page'];?>
<?php }?>" class="button _more"><i class="fa fa-arrow-left"></i>一覧に戻る</a></div>
		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
