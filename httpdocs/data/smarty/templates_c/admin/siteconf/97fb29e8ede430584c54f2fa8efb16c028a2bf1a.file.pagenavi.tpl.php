<?php /* Smarty version Smarty-3.1.18, created on 2019-12-09 18:37:00
         compiled from "/var/www/vhosts/dorency.com/httpdocs/admin/common/inc/pagenavi.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8295909685dee15bc371873-45857675%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
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
  'nocache_hash' => '8295909685dee15bc371873-45857675',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_navi' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dee15bc39ffc3_64648060',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dee15bc39ffc3_64648060')) {function content_5dee15bc39ffc3_64648060($_smarty_tpl) {?><?php if ((($tmp = @$_smarty_tpl->tpl_vars['page_navi']->value['PageTotal'])===null||$tmp==='' ? 0 : $tmp)>1) {?>
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