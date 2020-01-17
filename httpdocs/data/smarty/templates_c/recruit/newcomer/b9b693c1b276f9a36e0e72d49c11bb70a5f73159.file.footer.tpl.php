<?php /* Smarty version Smarty-3.1.18, created on 2020-01-16 15:Jan:th
         compiled from "/var/www/vhosts/dorency.com/httpdocs/renewal/common/include/footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15744824715e20064ba1c185-84792699%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b9b693c1b276f9a36e0e72d49c11bb70a5f73159' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/renewal/common/include/footer.tpl',
      1 => 1578551284,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15744824715e20064ba1c185-84792699',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_RENEWAL_DIR' => 0,
    'mst_siteconf' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e20064ba37f20_77176657',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e20064ba37f20_77176657')) {function content_5e20064ba37f20_77176657($_smarty_tpl) {?><footer>
<div id="foot">
	<div class="bg_greeno">
		<div class="center">
			<div class="row">
				<div class="col-xs-6">
					<div class="height-1">
						<h5 class="mb10"><a class="ov" href="/"><img src="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/common/image/foot/logo.png" alt="ドレンシー株式会社"></a></h5>
						<address class="mb10">〒<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['zip1'];?>
 <?php echo nl2br($_smarty_tpl->tpl_vars['mst_siteconf']->value['address1']);?>
<br>
							TEL：<span class="tel" data-tel="<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel1'];?>
"><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel1'];?>
</span><br>
							FAX：<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['fax1'];?>
</address>
					</div>
				</div>
				<div class="col-xs-6">
					<div class="foot_navi height-1">
						<ul>
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['_RENEWAL_DIR']->value;?>
/privacy/">プライバシーポリシー</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="copyright" class="bg_green2">&copy; 2019 Dorency Co.,Ltd. All rights reserved.</div>
</div>
<!--<div id="pagetop"><a href="javascript:void(0);"><span>↑</span></a></div>-->
</footer>
<?php }} ?>
