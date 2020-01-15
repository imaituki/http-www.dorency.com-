<?php /* Smarty version Smarty-3.1.18, created on 2020-01-15 18:Jan:th
         compiled from "./detail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8931530925e1edfc60c3c48-48432722%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8f2188843651849d229ec72d945b4ebcb639e332' => 
    array (
      0 => './detail.tpl',
      1 => 1579051681,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8931530925e1edfc60c3c48-48432722',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_meta' => 0,
    '_RENEWAL_DIR' => 0,
    'template_javascript' => 0,
    'template_header' => 0,
    't_product_category_detail' => 0,
    't_product' => 0,
    'product' => 0,
    'product_parts' => 0,
    't_product_category' => 0,
    'product_category' => 0,
    'template_product_foot' => 0,
    'template_footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e1edfc63478d1_57986135',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e1edfc63478d1_57986135')) {function content_5e1edfc63478d1_57986135($_smarty_tpl) {?><!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_meta']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/css/import.css">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_javascript']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body id="product">
<div id="base">
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_header']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<main>
<div id="body">
	<div id="page_title" class="b_sh">
		<div><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/product/top.jpg" alt="鮮度保持剤"></div>
		<div class="page_title_wrap">
			<div class="center">
				<div class="disp_td">
					<h2 class="hl_6">鮮度保持剤<span class="sub">Freshness preservation material</span></h2>
				</div>
			</div>
		</div>
	</div>
	<div id="pankuzu" class="bg_gg">
		<div class="center">
			<ul>
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/"><i class="fa fa-home"></i></a></li>
				<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/product/">鮮度保持剤</a></li>
				<li><?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['name'];?>
</li>
			</ul>
		</div>
	</div>
	<section>
		<div class="wrapper-t center detail">
			<h2 class="hl_4"><?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['name'];?>
</h2>
			<div class="row">
				<div class="col-xs-4 height-1"><div class="img_sq"><img src="<?php if ($_smarty_tpl->tpl_vars['t_product_category_detail']->value['image1_2']!=null) {?>/common/photo/product_category/image1_2/m_<?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['image1_2'];?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/null_sq.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['name'];?>
"></div></div>
				<div class="col-xs-8 d_tbl height-1">
					<div class="disp_td">
						<h3><?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['catchtitle'];?>
</h3>
						<p><?php echo nl2br($_smarty_tpl->tpl_vars['t_product_category_detail']->value['comment']);?>
</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<?php if ($_smarty_tpl->tpl_vars['t_product_category_detail']->value['index1']!=null||$_smarty_tpl->tpl_vars['t_product_category_detail']->value['comment1']!=null||$_smarty_tpl->tpl_vars['t_product_category_detail']->value['index2']!=null||$_smarty_tpl->tpl_vars['t_product_category_detail']->value['comment2']!=null) {?>
	<section>
		<div class="wrapper-t center main_feature">
			<h2 class="hl_4">主な特徴</h2>
			<div class="row">
				<?php if ($_smarty_tpl->tpl_vars['t_product_category_detail']->value['index1']!=null||$_smarty_tpl->tpl_vars['t_product_category_detail']->value['comment1']!=null) {?>
				<div class="col-xs-6 height-1 mb50">
					<div class="pos_ac"><img src="<?php if ($_smarty_tpl->tpl_vars['t_product_category_detail']->value['image2']!=null) {?>/common/photo/product_category/image2/m_<?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['image2'];?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/null_re.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['name'];?>
"></div>
				</div>
				<div class="col-xs-6 height-1 mb50 flex_c">
					<div class="text_unit pos_al">
						<h3><?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['index1'];?>
</h3>
						<p><?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['comment1'];?>
</p>
					</div>
				</div>
				<?php }?>
				<?php if ($_smarty_tpl->tpl_vars['t_product_category_detail']->value['index2']!=null||$_smarty_tpl->tpl_vars['t_product_category_detail']->value['comment2']!=null) {?>
				<div class="col-xs-6 col-xs-push-6 height-1">
					<div class="pos_ac"><img src="<?php if ($_smarty_tpl->tpl_vars['t_product_category_detail']->value['image3']!=null) {?>/common/photo/product_category/image3/m_<?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['image3'];?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/null_re.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['name'];?>
"></div>
				</div>
				<div class="col-xs-6 col-xs-pull-6 height-1 flex_c">
					<div class="text_unit pos_al">
						<h3><?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['index2'];?>
</h3>
						<p><?php echo $_smarty_tpl->tpl_vars['t_product_category_detail']->value['comment2'];?>
</p>
					</div>
				</div>
				<?php }?>
			</div>
		</div>
	</section>
	<?php }?>
	<section>
		<div class="wrapper-t center">
			<?php  $_smarty_tpl->tpl_vars["product"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_product']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["product"]->key => $_smarty_tpl->tpl_vars["product"]->value) {
$_smarty_tpl->tpl_vars["product"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["product"]->key;
?>
			<div class="unit mb50">
				<p class="fw_bold"><?php echo $_smarty_tpl->tpl_vars['product']->value['name'];?>
　製品仕様</p>
				<div class="hidden-only">
					<table class="tbl_product mb10">
						<thead>
							<tr>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['type_flg']==1) {?>
								<th><span class="th">種類</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['feature_flg']==1) {?>
								<th><span class="th">特徴</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['days_flg']==1) {?>
								<th><span class="th">脱酸素日数</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['time_flg']==1) {?>
								<th><span class="th">放置可能時間</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['use_flg']==1) {?>
								<th><span class="th">主な用途</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['necessary_time_flg']==1) {?>
								<th><span class="th">変化所要時間</span></th>
								<?php }?>
							</tr>
						</thead>
						<?php  $_smarty_tpl->tpl_vars["product_parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product_parts"]->_loop = false;
 $_smarty_tpl->tpl_vars["key2"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['product']->value['detail']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["product_parts"]->key => $_smarty_tpl->tpl_vars["product_parts"]->value) {
$_smarty_tpl->tpl_vars["product_parts"]->_loop = true;
 $_smarty_tpl->tpl_vars["key2"]->value = $_smarty_tpl->tpl_vars["product_parts"]->key;
?>
						<tbody>
							<tr>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['type']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['type']);?>
</td>
								<?php } elseif ($_smarty_tpl->tpl_vars['product']->value['type_flg']==1) {?>
									<td>―</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['feature']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['feature']);?>
</td>
								<?php } elseif ($_smarty_tpl->tpl_vars['product']->value['feature_flg']==1) {?>
									<td>―</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['days']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['days']);?>
</td>
								<?php } elseif ($_smarty_tpl->tpl_vars['product']->value['days_flg']==1) {?>
									<td>―</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['time']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['time']);?>
</td>
								<?php } elseif ($_smarty_tpl->tpl_vars['product']->value['time_flg']==1) {?>
									<td>―</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['use']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['use']);?>
</td>
								<?php } elseif ($_smarty_tpl->tpl_vars['product']->value['use_flg']==1) {?>
									<td>―</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['necessary_time']!=null) {?>
									<td><?php echo $_smarty_tpl->tpl_vars['product_parts']->value['necessary_time'];?>
</td>
								<?php } elseif ($_smarty_tpl->tpl_vars['product']->value['necessary_time_flg']==1) {?>
									<td>―</td>
								<?php }?>
							</tr>
						</tbody>
						<?php } ?>
					</table>
					<?php if ($_smarty_tpl->tpl_vars['product']->value['notice']!=null) {?><p>※<?php echo $_smarty_tpl->tpl_vars['product']->value['notice'];?>
</p><?php }?>
				</div>
				<div class="visible-only">
					<table class="tbl_product mb10">
						<thead>
							<tr>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['feature_flg']==1) {?>
								<th><span class="th">特徴</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['days_flg']==1) {?>
								<th><span class="th">脱酸素日数</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['time_flg']==1) {?>
								<th><span class="th">放置可能時間</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['use_flg']==1) {?>
								<th><span class="th">主な用途</span></th>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product']->value['necessary_time_flg']==1) {?>
								<th><span class="th">変化所要時間</span></th>
								<?php }?>
							</tr>
						</thead>
						<?php  $_smarty_tpl->tpl_vars["product_parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product_parts"]->_loop = false;
 $_smarty_tpl->tpl_vars["key2"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['product']->value['detail']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["product_parts"]->key => $_smarty_tpl->tpl_vars["product_parts"]->value) {
$_smarty_tpl->tpl_vars["product_parts"]->_loop = true;
 $_smarty_tpl->tpl_vars["key2"]->value = $_smarty_tpl->tpl_vars["product_parts"]->key;
?>
						<tbody>
							<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['type']!=null) {?>
							<tr class="visible-only">
								<th colspan="6"><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['type']);?>
</th>
							</tr>
							<?php }?>
							<tr>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['feature']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['feature']);?>
</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['days']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['days']);?>
</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['time']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['time']);?>
</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['use']!=null) {?>
									<td><?php echo nl2br($_smarty_tpl->tpl_vars['product_parts']->value['use']);?>
</td>
								<?php }?>
								<?php if ($_smarty_tpl->tpl_vars['product_parts']->value['necessary_time']!=null) {?>
									<td><?php echo $_smarty_tpl->tpl_vars['product_parts']->value['necessary_time'];?>
</td>
								<?php }?>
							</tr>
						</tbody>
						<?php } ?>
					</table>
					<?php if ($_smarty_tpl->tpl_vars['product']->value['notice']!=null) {?><p>※<?php echo $_smarty_tpl->tpl_vars['product']->value['notice'];?>
</p><?php }?>
				</div>
			</div>
			<?php } ?>
		</div>
	</section>
	<section>
		<div class="wrapper-t center">
			<h2 class="hl_4">キーピットの種類</h2>
			<div class="row mb50">
				<?php  $_smarty_tpl->tpl_vars["product_category"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product_category"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['t_product_category']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["product_category"]->key => $_smarty_tpl->tpl_vars["product_category"]->value) {
$_smarty_tpl->tpl_vars["product_category"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["product_category"]->key;
?>
				<div class="col-xs-4">
					<div class="cat_unit height-1">
						<a href="./detail.php?id=<?php echo $_smarty_tpl->tpl_vars['product_category']->value['id_product_category'];?>
">
							<div class="photo img_sq"><img src="<?php if ($_smarty_tpl->tpl_vars['product_category']->value['image1']) {?>/common/photo/product_category/image1/l_<?php echo $_smarty_tpl->tpl_vars['product_category']->value['image1'];?>
<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/null_sq.jpg<?php }?>" alt="<?php echo $_smarty_tpl->tpl_vars['product_category']->value['name'];?>
}"></div>
							<div class="text">
								<p class="pro_name"><?php echo $_smarty_tpl->tpl_vars['product_category']->value['name'];?>
</p>
							</div>
						</a>
					</div>
				</div>
				<?php }
if (!$_smarty_tpl->tpl_vars["product_category"]->_loop) {
?>
				<div class="pos_ac">キーピットの種類は現在掲載していません。</div>
				<?php } ?>
			</div>
		</div>
	</section>
	<section>
		<div class="center wrapper-t">
			<h2 class="hl_4">キーピットに関するお問い合わせ</h2>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_product_foot']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

		</div>
	</section>
</div>
</main>
<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_footer']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</div>
</body>
</html>
<?php }} ?>
