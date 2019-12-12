<?php /* Smarty version Smarty-3.1.18, created on 2019-12-12 11:49:46
         compiled from "/var/www/vhosts/dorency.com/httpdocs/admin/contents/recruit/template/list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11815209745df1a8e71767b0-52603641%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6d0c0a06d0b495c02aa04de3df3f391719803c1a' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/admin/contents/recruit/template/list.tpl',
      1 => 1576118982,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11815209745df1a8e71767b0-52603641',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5df1a8e722bd78_35662286',
  'variables' => 
  array (
    'template_pagenavi' => 0,
    't_recruit' => 0,
    'recruit' => 0,
    'OptionEmployment' => 0,
    '_ARR_IMAGE' => 0,
    'file' => 0,
    '_IMAGEFULLPATH' => 0,
    '_CONTENTS_NAME' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5df1a8e722bd78_35662286')) {function content_5df1a8e722bd78_35662286($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/modifier.date_format.php';
?>			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_pagenavi']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

			<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15">
				<thead>
					<tr>
						<th>掲載期間</th>
						<th>雇用形態</th>
						<th>募集</th>
						<th>エントリー</th>
						<th class="photo">写真</th>
						<th class="showhide">表示</th>
						<th class="delete">削除</th>
					</tr>
				</thead>
				<tbody>
					<?php  $_smarty_tpl->tpl_vars["recruit"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["recruit"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['t_recruit']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["recruit"]->key => $_smarty_tpl->tpl_vars["recruit"]->value) {
$_smarty_tpl->tpl_vars["recruit"]->_loop = true;
?>
					<tr>
						<td>
							<?php if ($_smarty_tpl->tpl_vars['recruit']->value['display_indefinite']==0) {?>
								<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['recruit']->value['display_start'],"%Y/%m/%d");?>
<br />
								<?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['recruit']->value['display_end'],"%Y/%m/%d");?>

							<?php } else { ?>
								無期限
							<?php }?>
						</td>
						<td><?php echo $_smarty_tpl->tpl_vars['OptionEmployment']->value[$_smarty_tpl->tpl_vars['recruit']->value['employment']];?>
</td>
						<td><a href="./edit.php?id=<?php echo $_smarty_tpl->tpl_vars['recruit']->value['id_recruit'];?>
"><?php echo $_smarty_tpl->tpl_vars['recruit']->value['recruitment'];?>
</a></td>
						<td><a href="./entry_list.php?id=<?php echo $_smarty_tpl->tpl_vars['recruit']->value['id_recruit'];?>
">一覧</a></td>
						<td class="pos_al">
							<div class="lightBoxGallery">
								<?php  $_smarty_tpl->tpl_vars["file"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["file"]->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_ARR_IMAGE']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["file"]->key => $_smarty_tpl->tpl_vars["file"]->value) {
$_smarty_tpl->tpl_vars["file"]->_loop = true;
?>
									<?php if ($_smarty_tpl->tpl_vars['recruit']->value[$_smarty_tpl->tpl_vars['file']->value['name']]) {?>
										<a href="<?php echo $_smarty_tpl->tpl_vars['_IMAGEFULLPATH']->value;?>
/recruit/<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
/l_<?php echo $_smarty_tpl->tpl_vars['recruit']->value[$_smarty_tpl->tpl_vars['file']->value['name']];?>
" title="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['file']->value['comment'])===null||$tmp==='' ? '' : $tmp);?>
" data-gallery=""><img src="<?php echo $_smarty_tpl->tpl_vars['_IMAGEFULLPATH']->value;?>
/recruit/<?php echo $_smarty_tpl->tpl_vars['file']->value['name'];?>
/s_<?php echo $_smarty_tpl->tpl_vars['recruit']->value[$_smarty_tpl->tpl_vars['file']->value['name']];?>
" width="50" /></a>
									<?php }?>
								<?php } ?>
							</div>
						</td>
						<td class="pos_ac">
							<div class="switch">
								<div class="onoffswitch">
									<input type="checkbox" value="1" class="onoffswitch-checkbox btn_display" id="display<?php echo $_smarty_tpl->tpl_vars['recruit']->value['id_recruit'];?>
" data-id="<?php echo $_smarty_tpl->tpl_vars['recruit']->value['id_recruit'];?>
"<?php if ($_smarty_tpl->tpl_vars['recruit']->value['display_flg']==1) {?> checked<?php }?>>
									<label class="onoffswitch-label" for="display<?php echo $_smarty_tpl->tpl_vars['recruit']->value['id_recruit'];?>
">
										<span class="onoffswitch-inner"></span>
										<span class="onoffswitch-switch"></span>
									</label>
								</div>
							</div>
						</td>
						<td class="pos_ac">
							<a href="javascript:void(0)" class="btn btn-danger btn_delete" data-id="<?php echo $_smarty_tpl->tpl_vars['recruit']->value['id_recruit'];?>
">削除</a>
						</td>
					</tr>
					<?php }
if (!$_smarty_tpl->tpl_vars["recruit"]->_loop) {
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
			<div id="blueimp-gallery" class="blueimp-gallery">
				<div class="slides"></div>
				<h3 class="title"></h3>
				<a class="prev">‹</a>
				<a class="next">›</a>
				<a class="close">×</a>
				<a class="play-pause"></a>
				<ol class="indicator"></ol>
			</div>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_pagenavi']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php }} ?>
