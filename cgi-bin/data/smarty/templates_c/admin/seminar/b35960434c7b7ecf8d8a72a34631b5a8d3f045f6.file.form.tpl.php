<?php /* Smarty version Smarty-3.1.18, created on 2019-11-14 17:23:59
         compiled from "/home/brownotter8/www/admin/contents/seminar/template/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21271571015d9d8c9bc982c9-71501596%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b35960434c7b7ecf8d8a72a34631b5a8d3f045f6' => 
    array (
      0 => '/home/brownotter8/www/admin/contents/seminar/template/form.tpl',
      1 => 1573719837,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21271571015d9d8c9bc982c9-71501596',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5d9d8c9bda9237_91283062',
  'variables' => 
  array (
    'message' => 0,
    'arr_post' => 0,
    'OptionSeminarCategory' => 0,
    '_ARR_IMAGE' => 0,
    'template_image' => 0,
    '_IMAGEFULLPATH' => 0,
    '_CONTENTS_DIR' => 0,
    '_ARR_FILE' => 0,
    'template_file' => 0,
    '_FILEFULLPATH' => 0,
    'mode' => 0,
    '_CONTENTS_ID' => 0,
    '_CONTENTS_CONF_PATH' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5d9d8c9bda9237_91283062')) {function content_5d9d8c9bda9237_91283062($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_select_time')) include '/home/brownotter8/data/smarty/libs/plugins/function.html_select_time.php';
if (!is_callable('smarty_function_html_options')) include '/home/brownotter8/data/smarty/libs/plugins/function.html_options.php';
if (!is_callable('smarty_function_html_radios')) include '/home/brownotter8/data/smarty/libs/plugins/function.html_radios.php';
?><form id="inputForm" name="inputForm" class="form-horizontal" action="./preview.php?preview=1" method="post" enctype="multipart/form-data">
	<div class="ibox-content">
		<div class="form-group required">
			<label class="col-sm-2 control-label">開催日 </label>
			<div style="display:flex;">
				<div class="col-sm-2">
					<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['date_start'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['date_start'];?>
</p><?php }?>
					<div class="input-daterange input-group" id="datepicker">
						<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
						<input type="text" class="input-sm form-control dtp datepicker" name="date_start" id="date_start" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['date_start'])===null||$tmp==='' ? '' : $tmp);?>
" readonly>
					</div>
				</div>
				<div class="col-sm-1" style="vertical-align: middle; align-items: center; display: flex;">～</div>
				<div class="col-sm-2">
					<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['date_end'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['date_end'];?>
</p><?php }?>
					<div class="input-daterange input-group" id="datepicker">
						<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
						<input type="text" class="input-sm form-control dtp datepicker" name="date_end" id="date_end" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['date_end'])===null||$tmp==='' ? '' : $tmp);?>
" readonly>
					</div>
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">開催時間</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['start_time'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['start_time'];?>
</p><?php }?>
			<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['end_time'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['end_time'];?>
</p><?php }?>
			<?php echo smarty_function_html_select_time(array('field_array'=>'start_time','prefix'=>'','field_separator'=>"\n:\n",'display_seconds'=>false,'minute_interval'=>10,'time'=>(($tmp = @strtotime($_smarty_tpl->tpl_vars['arr_post']->value['start_time']))===null||$tmp==='' ? time() : $tmp)),$_smarty_tpl);?>
&nbsp;～<?php echo smarty_function_html_select_time(array('field_array'=>'end_time','prefix'=>'','field_separator'=>"\n:\n",'display_seconds'=>false,'minute_interval'=>10,'time'=>(($tmp = @strtotime($_smarty_tpl->tpl_vars['arr_post']->value['end_time']))===null||$tmp==='' ? time() : $tmp)),$_smarty_tpl);?>

			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">カテゴリ</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['seminar_category'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['seminar_category'];?>
</p><?php }?>

				<div class="radio m-r-xs inline">
					<select class="form-control" name="seminar_category" id="seminar_category">
						<option value="0">選択してください</option>
						<?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['OptionSeminarCategory']->value,'selected'=>$_smarty_tpl->tpl_vars['arr_post']->value['seminar_category']),$_smarty_tpl);?>

					</select>
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">主催</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['sponsor'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['sponsor'];?>
</p><?php }?>
				<input type="text" class="form-control" name="sponsor" id="sponsor" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['sponsor'])===null||$tmp==='' ? '' : $tmp);?>
" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">タイトル</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['title'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['title'];?>
</p><?php }?>
				<input type="text" class="form-control" name="title" id="title" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['title'])===null||$tmp==='' ? '' : $tmp);?>
" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">本文 </label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['comment'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['comment'];?>
</p><?php }?>
				<textarea name="comment" id="comment" rows="7" class="form-control ckeditor"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['comment'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">地域</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['area'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['area'];?>
</p><?php }?>
				<input type="text" class="form-control" name="area" id="area" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['area'])===null||$tmp==='' ? '' : $tmp);?>
" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">会場</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['place'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['place'];?>
</p><?php }?>
				<input type="text" class="form-control" name="place" id="place" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['place'])===null||$tmp==='' ? '' : $tmp);?>
" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">定員</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['capacity'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['capacity'];?>
</p><?php }?>
				<input type="text" class="form-control" name="capacity" id="capacity" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['capacity'])===null||$tmp==='' ? '' : $tmp);?>
" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">参加費</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['price'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['price'];?>
</p><?php }?>
				<div style="display:flex;">
				<input type="text" class="form-control" name="price" id="price" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['price'])===null||$tmp==='' ? '' : $tmp);?>
" maxlength="255" /><span style="vertical-align: middle; align-items: center; display: flex;">円</span>
				</div>
				<br>
				<span style="color:red;">※未入力または0円の場合、参加費無料になります。</span>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<?php if ($_smarty_tpl->tpl_vars['_ARR_IMAGE']->value!=null) {?>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_image']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('path'=>$_smarty_tpl->tpl_vars['_IMAGEFULLPATH']->value,'dir'=>$_smarty_tpl->tpl_vars['_CONTENTS_DIR']->value,'prefix'=>"s_"), 0);?>

		<?php }?>
		<?php if ($_smarty_tpl->tpl_vars['_ARR_FILE']->value!=null) {?>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_file']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('path'=>$_smarty_tpl->tpl_vars['_FILEFULLPATH']->value,'dir'=>$_smarty_tpl->tpl_vars['_CONTENTS_DIR']->value), 0);?>

		<?php }?>
		<div class="form-group required">
			<label class="col-sm-2 control-label">申し込み開始・終了</label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['application_flg'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['application_flg'];?>
</p><?php }?>
				<?php echo smarty_function_html_radios(array('name'=>"application_flg",'values'=>1,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['application_flg'])===null||$tmp==='' ? 0 : $tmp),'output'=>"申し込み開始"),$_smarty_tpl);?>
　
				<?php echo smarty_function_html_radios(array('name'=>"application_flg",'values'=>0,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['application_flg'])===null||$tmp==='' ? 0 : $tmp),'output'=>"申し込み終了"),$_smarty_tpl);?>
　
				<?php echo smarty_function_html_radios(array('name'=>"application_flg",'values'=>2,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['application_flg'])===null||$tmp==='' ? 0 : $tmp),'output'=>"申し込み不要"),$_smarty_tpl);?>

			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">URL</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['url'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['url'];?>
</p><?php }?>
				<div style="display:flex;">
				<input type="text" class="form-control" name="url" id="url" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['url'])===null||$tmp==='' ? '' : $tmp);?>
" maxlength="255" /><span style="vertical-align: middle; align-items: center; display: flex;"></span>
				</div>
				<br>
				<span style="color:red;">※URL未入力の場合はお問い合わせフォームへリンクします。</span>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">掲載期間 </label>
			<div class="col-sm-4">
				<div class="radio m-r-xs inline mb15">
					<?php echo smarty_function_html_radios(array('name'=>"display_indefinite",'values'=>1,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['display_indefinite'])===null||$tmp==='' ? "1" : $tmp),'output'=>"設定しない"),$_smarty_tpl);?>
&nbsp;&nbsp;
					<?php echo smarty_function_html_radios(array('name'=>"display_indefinite",'values'=>0,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['display_indefinite'])===null||$tmp==='' ? "1" : $tmp),'output'=>"設定する"),$_smarty_tpl);?>

				</div>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['display_start'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['display_start'];?>
</p><?php }?>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['display_end'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['display_end'];?>
</p><?php }?>
				<div class="input-daterange input-group" id="datepicker">
					<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					<input type="text" class="input-sm form-control datepicker" name="display_start" id="display_start" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['display_start'])===null||$tmp==='' ? '' : $tmp);?>
" readonly>
					<span class="input-group-addon">～</span>
					<input type="text" class="input-sm form-control datepicker" name="display_end" id="display_end"  value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['display_end'])===null||$tmp==='' ? '' : $tmp);?>
" readonly>
				</div>
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
		<div class="button clearfix mb20">
			<?php if ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?><input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['_CONTENTS_ID']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value[$_smarty_tpl->tpl_vars['_CONTENTS_ID']->value];?>
" /><?php }?>
			<input type="hidden" name="_contents_dir" id="_contents_dir" value="<?php echo $_smarty_tpl->tpl_vars['_CONTENTS_DIR']->value;?>
" />
			<input type="hidden" name="_contents_conf_path" id="_contents_conf_path" value="<?php echo $_smarty_tpl->tpl_vars['_CONTENTS_CONF_PATH']->value;?>
" />
			<div class="form-group">
				<div style="text-align:right;">
					<input type="button" class="btn btn-primary" value="この内容で登録" id="<?php if ($_smarty_tpl->tpl_vars['mode']->value=='edit') {?>updateBtn<?php } else { ?>insertBtn<?php }?>" />
				</div>
			</div>
		</div>
	</div>
</form>

<script type="text/javascript">
$(function(){
	// プレビューボタンを押すとプレビューが別窓で表示される
	$('input[id="preview"]').on("click", function() {
		window.open("about:blank", "preview");
		document.inputForm.target = "preview";
		document.inputForm.submit();
	});
});
</script>

<?php }} ?>
