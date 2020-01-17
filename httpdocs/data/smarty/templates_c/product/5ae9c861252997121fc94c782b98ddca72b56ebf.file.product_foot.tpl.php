<?php /* Smarty version Smarty-3.1.18, created on 2020-01-17 11:Jan:th
         compiled from "/var/www/vhosts/dorency.com/httpdocs/renewal/common/include/product_foot.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3876016705e211d7e388c14-81239146%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5ae9c861252997121fc94c782b98ddca72b56ebf' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/renewal/common/include/product_foot.tpl',
      1 => 1578551284,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3876016705e211d7e388c14-81239146',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'mode' => 0,
    'mst_siteconf' => 0,
    '_RENEWAL_DIR' => 0,
    '_HTML_HEADER' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e211d7e3cec32_29863916',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e211d7e3cec32_29863916')) {function content_5e211d7e3cec32_29863916($_smarty_tpl) {?><div id="common_product_foot">
	<?php if ($_smarty_tpl->tpl_vars['mode']->value!="menu") {?>
	<div class="center">
		<div id="contact_area">
			<div class="contact_area bg_gray">
				<div class="row">
					<div class="col-xs-6">
						<div class="tel_unit cg">
							<h4>お電話でのお問い合わせ</h4>
							<span class="tel" data-tel="<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel1'];?>
"><i class="fa fa-phone-alt"></i><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel1'];?>
</span>
						</div>
					</div>
					<div class="col-xs-6">
						<a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/contact/" class="button _green _large"><i class="fa fa-envelope"></i>お問い合わせフォーム</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php }?>
	<div class="wrapper-t">
		<h2 class="hl_4">関連メニュー</h2>
		<div class="row">
			<?php if ($_smarty_tpl->tpl_vars['_HTML_HEADER']->value['id']!="product") {?>
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/product/">
						<div class="photo"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/menu1.jpg" alt="鮮度保持材"></div>
						<div class="text">鮮度保持材</div>
					</a>
				</div>
			</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['_HTML_HEADER']->value['id']!="way") {?>
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/way/">
						<div class="photo"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/menu2.jpg" alt="用途のご紹介"></div>
						<div class="text">用途のご紹介</div>
					</a>
				</div>
			</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['_HTML_HEADER']->value['id']!="virtual") {?>
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/virtual/">
						<div class="photo"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/menu3.jpg" alt="バーチャル工場見学"></div>
						<div class="text">バーチャル工場見学</div>
					</a>
				</div>
			</div>
			<?php }?>
			<?php if ($_smarty_tpl->tpl_vars['_HTML_HEADER']->value['id']!="cairo") {?>
			<div class="col-xs-4 height-1">
				<div class="page_link">
					<a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/cairo/">
						<div class="photo"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/contents/menu4.jpg" alt="カイロ"></div>
						<div class="text">カイロ</div>
					</a>
				</div>
			</div>
			<?php }?>
		</div>
	</div>
</div>
<?php }} ?>
