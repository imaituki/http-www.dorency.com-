<?php /* Smarty version Smarty-3.1.18, created on 2019-12-12 17:54:16
         compiled from "/var/www/vhosts/dorency.com/httpdocs/admin/contents/recruit/template/entry_list_body.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11139411265df20038e9ea29-68468183%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9fa8f40155061f06596a04be43de46a38819289f' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/admin/contents/recruit/template/entry_list_body.tpl',
      1 => 1576111030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11139411265df20038e9ea29-68468183',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'template_pagenavi' => 0,
    't_recruit_contact' => 0,
    'recruit_contact' => 0,
    '_CONTENTS_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5df20038f13e56_14732227',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5df20038f13e56_14732227')) {function content_5df20038f13e56_14732227($_smarty_tpl) {?>			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_pagenavi']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

			<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15">
				<thead>
					<tr>
						<th>お名前</th>
						<th>性別</th>
						<th>住所</th>
						<th>メール</th>
						<th>電話番号</th>
					</tr>
				</thead>
				<tbody>
					<?php  $_smarty_tpl->tpl_vars["recruit_contact"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["recruit_contact"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['t_recruit_contact']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["recruit_contact"]->key => $_smarty_tpl->tpl_vars["recruit_contact"]->value) {
$_smarty_tpl->tpl_vars["recruit_contact"]->_loop = true;
?>
					<tr>
						<td><a href="./entry_detail.php?id=<?php echo $_smarty_tpl->tpl_vars['recruit_contact']->value['id_recruit_contact'];?>
"><?php echo $_smarty_tpl->tpl_vars['recruit_contact']->value['name'];?>
</a></td>
						<td><?php echo $_smarty_tpl->tpl_vars['recruit_contact']->value['sex'];?>
</td>
						<td><?php echo $_smarty_tpl->tpl_vars['recruit_contact']->value['address'];?>
</td>
						<td><?php echo $_smarty_tpl->tpl_vars['recruit_contact']->value['mail'];?>
</td>
						<td><?php echo $_smarty_tpl->tpl_vars['recruit_contact']->value['tel'];?>
</td>
					</tr>
					<?php }
if (!$_smarty_tpl->tpl_vars["recruit_contact"]->_loop) {
?>
					<tr>
						<td colspan="6"><?php echo $_smarty_tpl->tpl_vars['_CONTENTS_NAME']->value;?>
は見つかりません。</td>
					</tr>
					<?php } ?>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="10"><ul class="pagination pull-right">
							</ul></td>
					</tr>
				</tfoot>
			</table>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_pagenavi']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
