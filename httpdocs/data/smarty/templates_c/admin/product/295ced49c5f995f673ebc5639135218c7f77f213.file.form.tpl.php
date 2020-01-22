<?php /* Smarty version Smarty-3.1.18, created on 2020-01-22 16:Jan:nd
         compiled from "/var/www/vhosts/dorency.com/httpdocs/admin/contents/product/template/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1543418965e27f9e86e61c4-86787176%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '295ced49c5f995f673ebc5639135218c7f77f213' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/admin/contents/product/template/form.tpl',
      1 => 1579234424,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1543418965e27f9e86e61c4-86787176',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'mode' => 0,
    'message' => 0,
    'OptionProductCategory' => 0,
    'arr_post' => 0,
    'key' => 0,
    'product_parts' => 0,
    'OptionExample' => 0,
    '_CONTENTS_DIR' => 0,
    '_CONTENTS_CONF_PATH' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e27f9e8894f11_00922013',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e27f9e8894f11_00922013')) {function content_5e27f9e8894f11_00922013($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_options.php';
if (!is_callable('smarty_function_html_checkboxes')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_checkboxes.php';
if (!is_callable('smarty_function_html_radios')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_radios.php';
?>			<form class="form-horizontal" action="./<?php if ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>update<?php } else { ?>insert<?php }?>.php" method="post" enctype="multipart/form-data" id="inputForm">
				<div class="ibox-content">
					<div class="form-group required">
						<label class="col-sm-2 control-label">製品カテゴリ</label>
						<div class="col-sm-6">
							<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['id_product_category'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['id_product_category'];?>
</p><?php }?>

							<div class="radio m-r-xs inline">
								<select class="form-control" name="id_product_category" id="id_product_category">
									<option value="0">選択してください</option>
									<?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['OptionProductCategory']->value,'selected'=>$_smarty_tpl->tpl_vars['arr_post']->value['id_product_category']),$_smarty_tpl);?>

								</select>
							</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group required">
						<label class="col-sm-2 control-label">製品名</label>
						<div class="col-sm-6">
							<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['name'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['name'];?>
</p><?php }?>
							<input type="text" class="form-control" name="name" id="name" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['name'])===null||$tmp==='' ? '' : $tmp);?>
" />
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">種類追加</label>
						<div class="col-sm-9">
							<p class="mb10 x-large"> <a href="javascript:void(0);" class="add_product_parts btn btn-primary btn-s"><i class="fa fa-r fa-plus-circle"></i>追加</a></p>
						</div>
					</div>
					<div id="item_container">
						<?php  $_smarty_tpl->tpl_vars["product_parts"] = new Smarty_Variable; $_smarty_tpl->tpl_vars["product_parts"]->_loop = false;
 $_smarty_tpl->tpl_vars["key"] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['arr_post']->value['detail']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars["product_parts"]->key => $_smarty_tpl->tpl_vars["product_parts"]->value) {
$_smarty_tpl->tpl_vars["product_parts"]->_loop = true;
 $_smarty_tpl->tpl_vars["key"]->value = $_smarty_tpl->tpl_vars["product_parts"]->key;
?>
						<div class="product_parts_loop" width="100%" data-sirial="<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
">
							<div class="form-group">
								<label class="col-sm-2 control-label">種類</label>
								<div class="col-sm-6">
									<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_type")])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_type")];?>
</p><?php }?>
									<input type="text" class="form-control product_parts_type" name="detail[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
][type]" id="product_parts_type_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"  size="60" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['product_parts']->value['type'])===null||$tmp==='' ? '' : $tmp);?>
" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">特徴</label>
								<div class="col-sm-9">
									<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_feature")])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_feature")];?>
</p><?php }?>
									<textarea name="detail[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
][feature]" id="product_parts_feature_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" rows="3" class="form-control text product_parts_feature"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['product_parts']->value['feature'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">脱酸素日数</label>
								<div class="col-sm-6">
									<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_days")])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_days")];?>
</p><?php }?>
									<input type="text" class="form-control product_parts_days" name="detail[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
][days]" id="product_parts_days_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"  size="60" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['product_parts']->value['days'])===null||$tmp==='' ? '' : $tmp);?>
" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">放置可能時間</label>
								<div class="col-sm-6">
									<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_time")])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_time")];?>
</p><?php }?>
									<input type="text" class="form-control product_parts_time" name="detail[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
][time]" id="product_parts_time_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"  size="60" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['product_parts']->value['time'])===null||$tmp==='' ? '' : $tmp);?>
" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">主な用途</label>
								<div class="col-sm-9">
									<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_use")])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_use")];?>
</p><?php }?>
									<textarea name="detail[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
][use]" id="product_parts_use_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" rows="3" class="form-control text product_parts_use"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['product_parts']->value['use'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">変化所要時間</label>
								<div class="col-sm-6">
									<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_necessary_time")])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_necessary_time")];?>
</p><?php }?>
									<input type="text" class="form-control product_parts_necessary_time" name="detail[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
][necessary_time]" id="product_parts_necessary_time_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
"  size="60" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['product_parts']->value['necessary_time'])===null||$tmp==='' ? '' : $tmp);?>
" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">使用商品例</label>
								<div class="col-sm-9">
									<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_example")])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng'][(('detail_').($_smarty_tpl->tpl_vars['key']->value)).("_example")];?>
</p><?php }?>
									<div class="checkbox m-r-xs inline">
										<?php echo smarty_function_html_checkboxes(array('options'=>$_smarty_tpl->tpl_vars['OptionExample']->value,'class'=>"product_parts_example",'name'=>"detail[".((string)$_smarty_tpl->tpl_vars['key']->value)."][example]",'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['product_parts']->value['example'])===null||$tmp==='' ? '' : $tmp),'separator'=>"&nbsp;"),$_smarty_tpl);?>

									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-9 pos_ar">
									<a href="javascript:void(0);" class="btn btn-danger detail-trash"><i class="icon-trash"></i> 削除</a>
								</div>
							</div>
							<div class="hr-line-dashed mb50"></div>
						</div>
							<?php } ?>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">※表の下の注意書き</label>
						<div class="col-sm-6">
							<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['notice'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['notice'];?>
</p><?php }?>
							<input type="text" class="form-control" name="notice" id="notice" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['notice'])===null||$tmp==='' ? '' : $tmp);?>
" />
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">表示／非表示</label>
						<div class="col-sm-6">
							<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['display_flg'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['display_flg'];?>
</p><?php }?>
							<div class="radio m-r-xs inline">
								<?php echo smarty_function_html_radios(array('name'=>"display_flg",'values'=>1,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['display_flg'])===null||$tmp==='' ? "1" : $tmp),'output'=>"する"),$_smarty_tpl);?>
&nbsp;&nbsp;
								<?php echo smarty_function_html_radios(array('name'=>"display_flg",'values'=>0,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['display_flg'])===null||$tmp==='' ? "1" : $tmp),'output'=>"しない"),$_smarty_tpl);?>

							</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<?php if ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?><input type="hidden" name="id_product" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['id_product'];?>
" /><?php }?>
					<input type="hidden" name="_contents_dir" id="_contents_dir" value="<?php echo $_smarty_tpl->tpl_vars['_CONTENTS_DIR']->value;?>
" />
					<input type="hidden" name="_contents_conf_path" id="_contents_conf_path" value="<?php echo $_smarty_tpl->tpl_vars['_CONTENTS_CONF_PATH']->value;?>
" />
					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2 pos_ar">
							<button class="btn btn-primary"  type="submit">この内容で登録</button>
						</div>
					</div>
				</div>
			</form>
<?php }} ?>
