<?php /* Smarty version Smarty-3.1.18, created on 2019-11-27 19:55:06
         compiled from "./mail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17121292885dd6494564cfe6-53807001%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '140ed6d1ad3b6643e3b58b9fe629cd46e8b9926b' => 
    array (
      0 => './mail.tpl',
      1 => 1574852088,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17121292885dd6494564cfe6-53807001',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5dd649456b0a29_60391719',
  'variables' => 
  array (
    't_seminar' => 0,
    'arr_post' => 0,
    'content' => 0,
    'OptionContent' => 0,
    'OptionContentComment' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5dd649456b0a29_60391719')) {function content_5dd649456b0a29_60391719($_smarty_tpl) {?>--------------------------------------------------------
■ <?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']) {?>お申し込み<?php } else { ?>お問い合わせ<?php }?>内容
--------------------------------------------------------
<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']) {?>
[申し込みセミナー]
<?php echo $_smarty_tpl->tpl_vars['t_seminar']->value['title'];?>

<?php }?>

[お名前]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['name'])===null||$tmp==='' ? '' : $tmp);?>


[フリガナ]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['ruby'])===null||$tmp==='' ? '' : $tmp);?>


[メール]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['mail'])===null||$tmp==='' ? '' : $tmp);?>


[電話番号]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['tel'])===null||$tmp==='' ? '' : $tmp);?>


<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']==null) {?>
[お問い合わせ項目]
<?php  $_smarty_tpl->tpl_vars["content"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["content"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['arr_post']->value['content']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["content"]->key => $_smarty_tpl->tpl_vars["content"]->value) {
$_smarty_tpl->tpl_vars["content"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["content"]->key;
?>
・<?php echo $_smarty_tpl->tpl_vars['OptionContent']->value[$_smarty_tpl->tpl_vars['content']->value];?>

　<?php echo $_smarty_tpl->tpl_vars['OptionContentComment']->value[$_smarty_tpl->tpl_vars['content']->value];?>


<?php } ?>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['arr_post']->value['comment']) {?>
[<?php if ($_smarty_tpl->tpl_vars['t_seminar']->value['title']) {?>お申し込み<?php } else { ?>お問い合わせ<?php }?>内容]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['comment'])===null||$tmp==='' ? "--" : $tmp);?>

<?php }?>

<?php if ($_smarty_tpl->tpl_vars['arr_post']->value['referrer']) {?>
[ご紹介者名]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['referrer'])===null||$tmp==='' ? '' : $tmp);?>
様
<?php }?>
<?php }} ?>
