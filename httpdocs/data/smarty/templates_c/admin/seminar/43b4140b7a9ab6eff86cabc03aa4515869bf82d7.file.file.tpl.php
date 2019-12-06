<?php /* Smarty version Smarty-3.1.18, created on 2019-11-13 09:55:38
         compiled from "/home/brownotter8/www//admin/common/inc/file.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14182566425d9d9035bf46f3-78906125%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '43b4140b7a9ab6eff86cabc03aa4515869bf82d7' => 
    array (
      0 => '/home/brownotter8/www//admin/common/inc/file.tpl',
      1 => 1573454548,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14182566425d9d9035bf46f3-78906125',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5d9d9035c5c962_34152327',
  'variables' => 
  array (
    '_ARR_FILE' => 0,
    'file' => 0,
    'message' => 0,
    'mode' => 0,
    'arr_post' => 0,
    'path' => 0,
    'dir' => 0,
    'fnkey' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5d9d9035c5c962_34152327')) {function content_5d9d9035c5c962_34152327($_smarty_tpl) {?><?php  $_smarty_tpl->tpl_vars["file"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["file"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_ARR_FILE']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["file"]->key => $_smarty_tpl->tpl_vars["file"]->value) {
$_smarty_tpl->tpl_vars["file"]->_loop = true;
?>
<div class="form-group<?php if ((($tmp = @$_smarty_tpl->tpl_vars['file']->value['notnull'])===null||$tmp==='' ? '' : $tmp)==1) {?> required<?php }?>">
	<label class="col-sm-2 control-label"><?php echo $_smarty_tpl->tpl_vars['file']->value['column'];?>
</label>
	<div class="col-sm-6">
		<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][$_smarty_tpl->tpl_vars['file']->value['name']])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][$_smarty_tpl->tpl_vars['file']->value['name']];?>
</p><?php }?>
		<div class=" mb5">
		<?php if ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>
			<?php $_smarty_tpl->tpl_vars["fnkey"] = new Smarty_variable(($_smarty_tpl->tpl_vars['file']->value['name']).("_name"), null, 0);?>
			<?php if ($_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['file']->value['name']]==null) {?>
				NOT FILE<br />
			<?php } else { ?>
				<i class="icon-doc-text"></i> <a href="<?php echo $_smarty_tpl->tpl_vars['path']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['dir']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
/<?php echo $_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['file']->value['name']];?>
" target="_blank"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['fnkey']->value])===null||$tmp==='' ? "添付ファイル" : $tmp);?>
</a>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['file']->value['notnull'])===null||$tmp==='' ? '' : $tmp)!=1) {?>
				<input type="checkbox" name="_delete_file[<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
]" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['file']->value['name']])===null||$tmp==='' ? '' : $tmp);?>
" /> このファイルを削除する<br />
				<?php }?>
			<?php }?>
			<input type="hidden" name="_<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
_name_now" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['fnkey']->value])===null||$tmp==='' ? '' : $tmp);?>
" />
			<input type="hidden" name="_<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
_now" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['file']->value['name']])===null||$tmp==='' ? '' : $tmp);?>
" />
		<?php }?>
		</div>
		<input type="file" name="<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
" size="50" />
	</div>
</div>
<div class="hr-line-dashed"></div>
<?php if ($_smarty_tpl->tpl_vars['file']->value['name2']!=null) {?>
<div class="form-group<?php if ((($tmp = @$_smarty_tpl->tpl_vars['file']->value['notnull2'])===null||$tmp==='' ? '' : $tmp)==1) {?> required<?php }?>">
	<label class="col-sm-2 control-label"><?php echo $_smarty_tpl->tpl_vars['file']->value['column2'];?>
</label>
	<div class="col-sm-6">
		<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][$_smarty_tpl->tpl_vars['file']->value['name2']])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][$_smarty_tpl->tpl_vars['file']->value['name2']];?>
</p><?php }?>
		<input type="text" class="form-control" name="<?php echo $_smarty_tpl->tpl_vars['file']->value['name2'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['file']->value['name2'];?>
" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['file']->value['name2']])===null||$tmp==='' ? '' : $tmp);?>
" maxlength="255" />
	</div>
</div>
<div class="hr-line-dashed"></div>
<?php }?>
<?php } ?><?php }} ?>
