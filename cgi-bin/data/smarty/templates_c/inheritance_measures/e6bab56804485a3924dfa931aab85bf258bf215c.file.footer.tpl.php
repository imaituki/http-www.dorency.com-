<?php /* Smarty version Smarty-3.1.18, created on 2019-11-13 16:05:25
         compiled from "/home/brownotter8/www//common/include/footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13167936645dcb793c2f6266-18993570%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e6bab56804485a3924dfa931aab85bf258bf215c' => 
    array (
      0 => '/home/brownotter8/www//common/include/footer.tpl',
      1 => 1573628724,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13167936645dcb793c2f6266-18993570',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dcb793c2fead9_48118052',
  'variables' => 
  array (
    'mst_siteconf' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dcb793c2fead9_48118052')) {function content_5dcb793c2fead9_48118052($_smarty_tpl) {?><footer>
<div id="foot" class="bg_black">
	<div class="foot_wrap">
		<h5 class="mb10"><a class="ov" href="/"><img src="/common/image/foot/logo.png" alt="R・Fマネージメント株式会社"></a></h5>
		<address class="mb10">〒<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['zip'];?>
 <?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['address'];?>
<br>
			TEL：<span class="tel" data-tel="<?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel'];?>
"><?php echo $_smarty_tpl->tpl_vars['mst_siteconf']->value['tel'];?>
</span></address>
		<div class="foot_navi">
			<ul>
				<li><a href="/company/">会社案内</a></li>
				<li><a href="/privacy/">個人情報の取り扱いについて</a></li>
			</ul>
		</div>
	</div>
	<div id="copyright">&copy; Copyright 2019 RF Management Co.,Ltd.</div>
</div>
<div id="pagetop"><a href="javascript:void(0);"><span>↑</span></a></div>
</footer>
<?php }} ?>
