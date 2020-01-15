<?php /* Smarty version Smarty-3.1.18, created on 2020-01-15 15:Jan:th
         compiled from "/var/www/vhosts/dorency.com/httpdocs/admin/contents/recruit/template/form.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15273771595e1eb42aa57a61-49104599%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '96e9e7344b958fd233cf98ca4bf316380b69bcc9' => 
    array (
      0 => '/var/www/vhosts/dorency.com/httpdocs/admin/contents/recruit/template/form.tpl',
      1 => 1577421322,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15273771595e1eb42aa57a61-49104599',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'message' => 0,
    'OptionRecruit' => 0,
    'arr_post' => 0,
    'OptionEmployment' => 0,
    'OptionSalaryUnit' => 0,
    '_ARR_IMAGE' => 0,
    'template_image' => 0,
    '_IMAGEFULLPATH' => 0,
    '_CONTENTS_DIR' => 0,
    'mode' => 0,
    '_CONTENTS_ID' => 0,
    '_CONTENTS_CONF_PATH' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.18',
  'unifunc' => 'content_5e1eb42ade37d6_86743501',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5e1eb42ade37d6_86743501')) {function content_5e1eb42ade37d6_86743501($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_radios')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_radios.php';
if (!is_callable('smarty_function_html_options')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_options.php';
if (!is_callable('smarty_function_html_select_ken')) include '/var/www/vhosts/dorency.com/httpdocs/data/smarty/libs/plugins/function.html_select_ken.php';
?><form id="inputForm" name="inputForm" class="form-horizontal" action="./preview.php?preview=1" method="post" enctype="multipart/form-data">
	<div class="ibox-content">
		<div class="form-group required">
			<label class="col-sm-2 control-label">採用種別</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['recruit'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['recruit'];?>
</p><?php }?>
				<div class="radio m-r-xs inline">
					<?php echo smarty_function_html_radios(array('options'=>$_smarty_tpl->tpl_vars['OptionRecruit']->value,'class'=>"recruit",'name'=>"recruit",'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['recruit'])===null||$tmp==='' ? "0" : $tmp),'separator'=>"&nbsp;&nbsp;"),$_smarty_tpl);?>

				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">募集職種</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['recruitment'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['recruitment'];?>
</p><?php }?>
				<input type="text" class="form-control" name="recruitment" id="recruitment" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['recruitment'])===null||$tmp==='' ? '' : $tmp);?>
" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">雇用形態</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['employment'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['employment'];?>
</p><?php }?>
				<div class="radio m-r-xs inline">
					<select class="form-control" name="employment" id="employment">
						<option value="0">選択してください</option>
						<?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['OptionEmployment']->value,'selected'=>$_smarty_tpl->tpl_vars['arr_post']->value['employment']),$_smarty_tpl);?>

					</select>
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">仕事内容 </label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['job_description'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['job_description'];?>
</p><?php }?>
				<textarea name="job_description" id="job_description" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['job_description'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
				<p>※30文字以上</p>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">求める人材 </label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['people'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['people'];?>
</p><?php }?>
				<textarea name="people" id="people" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['people'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">就業時間</label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['work_time'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['work_time'];?>
</p><?php }?>
				<textarea name="work_time" id="work_time" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['work_time'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">交通アクセス </label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['access'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['access'];?>
</p><?php }?>
				<textarea name="access" id="access" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['access'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">福利厚生</label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['welfare'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['welfare'];?>
</p><?php }?>
				<textarea name="welfare" id="welfare" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['welfare'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">条件 </label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['qualification'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['qualification'];?>
</p><?php }?>
				<textarea name="qualification" id="qualification" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['qualification'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">賃金支払い形態</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['salary_unit'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['salary_unit'];?>
</p><?php }?>
				<div class="radio m-r-xs inline">
					<?php echo smarty_function_html_radios(array('name'=>"salary_unit",'options'=>$_smarty_tpl->tpl_vars['OptionSalaryUnit']->value,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['salary_unit'])===null||$tmp==='' ? "MONTH" : $tmp)),$_smarty_tpl);?>

				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<style>label.control-label > span.hisu {display: inline-block;margin-right: 10px;padding: 2px 5px;background: #1AB394;color: #FFF;font-weight: normal;font-size: 11px;}</style>
		<div class="form-group">
			<label class="col-sm-2 control-label"><span class="hisu">最低値のみ必須</span>賃金</label>
			<div class="col-sm-5">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['min_salary'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['min_salary'];?>
</p><?php }?>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['max_salary'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['max_salary'];?>
</p><?php }?>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['salary'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['salary'];?>
</p><?php }?>
				<div class="input-group">
					<input type="number" class="form-control" name="min_salary" id="min_salary" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['min_salary'])===null||$tmp==='' ? '' : $tmp);?>
"  min="0"/><span class="input-group-addon">～</span>
					<input type="number" class="form-control" name="max_salary" id="max_salary" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['max_salary'])===null||$tmp==='' ? '' : $tmp);?>
" min="0" /><span class="input-group-addon">円</span>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-9">
				<textarea name="salary" id="salary" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['salary'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">賞与</label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['raise_bonus'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['raise_bonus'];?>
</p><?php }?>
				<textarea name="raise_bonus" id="raise_bonus" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['raise_bonus'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">勤務地</label>
			<div class="col-sm-4">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['zip'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['zip'];?>
</p><?php }?>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['prefecture'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['prefecture'];?>
</p><?php }?>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['address1'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['address1'];?>
</p><?php }?>
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['address2'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['address2'];?>
</p><?php }?>
				<strong>郵便番号</strong>
				<div class="input-group">
					<span class="input-group-addon">〒</span>
					<input type="text" class="form-control" name="zip" id="zip" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['zip'];?>
" maxlength="8" />
					<span class="input-group-addon"><a href="javascript:AjaxZip3.zip2addr('zip','','prefecture','address1');">住所自動入力</a></span>
				</div>
				<strong>都道府県</strong>
				<?php echo smarty_function_html_select_ken(array('name'=>"prefecture",'id'=>"prefecture",'str_default'=>"選択してください",'class'=>"form-control",'selected'=>$_smarty_tpl->tpl_vars['arr_post']->value['prefecture']),$_smarty_tpl);?>

				<strong>市区郡町村</strong>
				<input type="text" class="form-control" name="address1" id="address1" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['address1'];?>
" maxlength="255" />
				<strong>番地、町名、建物名</strong>
				<input type="text" class="form-control" name="address2" id="address2" value="<?php echo $_smarty_tpl->tpl_vars['arr_post']->value['address2'];?>
" maxlength="255" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">リモートワーク</label>
			<div class="col-sm-6">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['remote_work'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['remote_work'];?>
</p><?php }?>
				<div class="radio m-r-xs inline">
					<?php echo smarty_function_html_radios(array('name'=>"remote_work",'values'=>1,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['remote_work'])===null||$tmp==='' ? "0" : $tmp),'output'=>"リモートワークにする"),$_smarty_tpl);?>
&nbsp;&nbsp;
					<?php echo smarty_function_html_radios(array('name'=>"remote_work",'values'=>0,'selected'=>(($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['remote_work'])===null||$tmp==='' ? "0" : $tmp),'output'=>"リモートワークにしない"),$_smarty_tpl);?>

				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">通勤手当</label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['commute'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['commute'];?>
</p><?php }?>
				<textarea name="commute" id="commute" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['commute'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">休日等</label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['holiday'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['holiday'];?>
</p><?php }?>
				<textarea name="holiday" id="holiday" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['holiday'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">試用期間</label>
			<div class="col-sm-9">
				<?php if ((($tmp = @$_smarty_tpl->tpl_vars['message']->value['ng']['trial'])===null||$tmp==='' ? '' : $tmp)!=null) {?><p class="error"><?php echo $_smarty_tpl->tpl_vars['message']->value['ng']['trial'];?>
</p><?php }?>
				<textarea name="trial" id="trial" rows="4" class="form-control"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['arr_post']->value['trial'])===null||$tmp==='' ? '' : $tmp);?>
</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<?php if ($_smarty_tpl->tpl_vars['_ARR_IMAGE']->value!=null) {?>
			<?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['template_image']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('path'=>$_smarty_tpl->tpl_vars['_IMAGEFULLPATH']->value,'dir'=>$_smarty_tpl->tpl_vars['_CONTENTS_DIR']->value,'prefix'=>"s_"), 0);?>

		<?php }?>
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
<?php }} ?>
