<?php /* Smarty version Smarty-3.1.18, created on 2020-01-15 12:Jan:th
         compiled from "/var/www/vhosts/dorency.com/httpdocs/admin/common/inc/pagenavi.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3001878225e1e84c7bd9928-51281704%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '97fb29e8ede430584c54f2fa8efb16c028a2bf1a' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/admin/common/inc/pagenavi.tpl',
      1 => 1575597285,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3001878225e1e84c7bd9928-51281704',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_navi' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e1e84c7c01ae2_76127982',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e1e84c7c01ae2_76127982')) {function content_5e1e84c7c01ae2_76127982($_smarty_tpl) {?><?php if ((($tmp = @$_smarty_tpl->tpl_vars['page_navi']->value['PageTotal'])===null||$tmp==='' ? 0 : $tmp)>1) {?>
<div class="page_navi mb20">
	<?php echo number_format($_smarty_tpl->tpl_vars['page_navi']->value['PageItemTotal']);?>
件中<?php echo number_format($_smarty_tpl->tpl_vars['page_navi']->value['PageShowStart']);?>
_<?php echo number_format($_smarty_tpl->tpl_vars['page_navi']->value['PageShowEnd']);?>
件目 ：
	<?php echo (($tmp = @$_smarty_tpl->tpl_vars['page_navi']->value['LinkBack'])===null||$tmp==='' ? '' : $tmp);?>
 <?php echo (($tmp = @$_smarty_tpl->tpl_vars['page_navi']->value['LinkPage'])===null||$tmp==='' ? '' : $tmp);?>
 <?php echo (($tmp = @$_smarty_tpl->tpl_vars['page_navi']->value['LinkNext'])===null||$tmp==='' ? '' : $tmp);?>

</div>
<?php }?><?php }} ?>
