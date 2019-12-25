<?php /* Smarty version Smarty-3.1.18, created on 2019-12-25 17:Dec:th
         compiled from "./mail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:13843066355e03222486add2-25057072%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '140ed6d1ad3b6643e3b58b9fe629cd46e8b9926b' => 
    array (
      0 => './mail.tpl',
      1 => 1577262386,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13843066355e03222486add2-25057072',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'arr_post' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e0322248d24e5_56236014',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e0322248d24e5_56236014')) {function content_5e0322248d24e5_56236014($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_select_ken')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_select_ken.php';
?>--------------------------------------------------------
■ お問い合わせ内容
--------------------------------------------------------
[会社名]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['company'])===null||$tmp==='' ? '' : $tmp);?>


[部署名]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['post'])===null||$tmp==='' ? "--" : $tmp);?>


[ご担当者様名]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['name'])===null||$tmp==='' ? '' : $tmp);?>


[フリガナ]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['ruby'])===null||$tmp==='' ? '' : $tmp);?>


[ご住所]
〒<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['zip'])===null||$tmp==='' ? '' : $tmp);?>

<?php echo smarty_function_html_select_ken(array('selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['prefecture'])===null||$tmp==='' ? '' : $tmp),'pre'=>1),$_smarty_tpl);?>
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['address'])===null||$tmp==='' ? '' : $tmp);?>


[電話番号]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['tel'])===null||$tmp==='' ? '' : $tmp);?>


[メールアドレス]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['mail'])===null||$tmp==='' ? '' : $tmp);?>


[お問い合わせ内容]
<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['comment'])===null||$tmp==='' ? '' : $tmp);?>

<?php }} ?>
