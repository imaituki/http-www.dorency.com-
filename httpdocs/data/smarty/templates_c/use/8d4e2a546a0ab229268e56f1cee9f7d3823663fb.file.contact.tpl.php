<?php /* Smarty version Smarty-3.1.18, created on 2020-01-29 09:Jan:th
         compiled from "/var/www/vhosts/dorency.com/httpdocs/renewal/common/include/contact.tpl" */ ?>
<?php /*%%SmartyHeaderCode:9725825865e30cc66e92df9-17808286%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8d4e2a546a0ab229268e56f1cee9f7d3823663fb' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/renewal/common/include/contact.tpl',
      1 => 1579675657,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9725825865e30cc66e92df9-17808286',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'mst_siteconf' => 0,
    '_RENEWAL_DIR' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e30cc66e9e482_69629842',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e30cc66e9e482_69629842')) {function content_5e30cc66e9e482_69629842($_smarty_tpl) {?><div id="contact_area">
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
</div><?php }} ?>
