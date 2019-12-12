<?php /* Smarty version Smarty-3.1.18, created on 2019-12-12 11:41:43
         compiled from "/var/www/vhosts/dorency.com/httpdocs/admin/common/inc/secondary.tpl" */ ?>
<?php /*%%SmartyHeaderCode:10315652995df1a8e70f3042-59476424%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7a2f9b7e5b81637de0b9e482f4d5ee97a103b3ae' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/admin/common/inc/secondary.tpl',
      1 => 1576117302,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10315652995df1a8e70f3042-59476424',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'manage' => 0,
    '_ADMIN' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5df1a8e7160d42_92334098',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5df1a8e7160d42_92334098')) {function content_5df1a8e7160d42_92334098($_smarty_tpl) {?><nav class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav metismenu" id="side-menu" style="padding-bottom:30px;">
			<li class="nav-header">
				
			</li>
			<li<?php if ($_smarty_tpl->tpl_vars['manage']->value=='') {?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/"><i class="fa fa-home"></i><span class="nav-label">HOME</span></a></li>
			<li <?php if ($_smarty_tpl->tpl_vars['action']->value=='information') {?>class="active"<?php }?>>
				<a href="#"><i class="fa fa-info-circle"></i><span class="nav-label">お知らせ管理</span><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level collapse">
					<li <?php if ($_smarty_tpl->tpl_vars['manage']->value=='information') {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/contents/information/">お知らせ一覧</a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['manage']->value=='information_category') {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/contents/information_category/">お知らせカテゴリ一覧</a></li>
				</ul>
			</li>
			<li <?php if ($_smarty_tpl->tpl_vars['action']->value=='product') {?>class="active"<?php }?>>
				<a href="#"><i class="fa fa-globe" aria-hidden="true"></i><span class="nav-label">製品管理</span><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level collapse">
					<li <?php if ($_smarty_tpl->tpl_vars['manage']->value=='product') {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/contents/product/">製品一覧</a></li>
					<li <?php if ($_smarty_tpl->tpl_vars['manage']->value=='product_category') {?>class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/contents/product_category/">製品カテゴリ一覧</a></li>
				</ul>
			</li>
			<li<?php if ($_smarty_tpl->tpl_vars['manage']->value=="base") {?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/contents/base/"><i class="fa fa-map-pin" aria-hidden="true"></i><span class="nav-label">拠点管理</span></a></li>
			<li<?php if ($_smarty_tpl->tpl_vars['manage']->value=="recruit") {?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/contents/recruit/"><i class="fa fa-user" aria-hidden="true"></i><span class="nav-label">採用管理</span></a></li>
			<li<?php if ($_smarty_tpl->tpl_vars['manage']->value=="siteconf") {?> class="active"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['_ADMIN']->value['home'];?>
/contents/siteconf/"><i class="fa fa-cog" aria-hidden="true"></i><span class="nav-label">サイト設定</span></a></li>
		</ul>
	</div>
</nav>
<?php }} ?>
