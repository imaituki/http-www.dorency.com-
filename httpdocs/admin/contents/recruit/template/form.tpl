<form id="inputForm" name="inputForm" class="form-horizontal" action="./preview.php?preview=1" method="post" enctype="multipart/form-data">
	<div class="ibox-content">
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">募集職種</label>
			<div class="col-sm-6">
				{if $message.ng.recruitment|default:"" != NULL}<p class="error">{$message.ng.recruitment}</p>{/if}
				<input type="text" class="form-control" name="recruitment" id="recruitment" value="{$arr_post.recruitment|default:""}" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">雇用形態</label>
			<div class="col-sm-6">
				{if $message.ng.employment|default:"" != NULL}<p class="error">{$message.ng.employment}</p>{/if}
				<div class="radio m-r-xs inline">
					{html_radios options=$OptionEmployment class="employment" name="employment" selected=$arr_post.employment|default:"1" separator="&nbsp;&nbsp;"}
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">仕事内容 </label>
			<div class="col-sm-9">
				{if $message.ng.job_description|default:"" != NULL}<p class="error">{$message.ng.job_description}</p>{/if}
				<textarea name="job_description" id="job_description" rows="4" class="form-control">{$arr_post.job_description|default:""}</textarea>
				<p>※30文字以上</p>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">求める人材 </label>
			<div class="col-sm-9">
				{if $message.ng.people|default:"" != NULL}<p class="error">{$message.ng.people}</p>{/if}
				<textarea name="people" id="people" rows="4" class="form-control">{$arr_post.people|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">就業時間</label>
			<div class="col-sm-9">
				{if $message.ng.work_time|default:"" != NULL}<p class="error">{$message.ng.work_time}</p>{/if}
				<textarea name="work_time" id="work_time" rows="4" class="form-control">{$arr_post.work_time|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">交通アクセス </label>
			<div class="col-sm-9">
				{if $message.ng.access|default:"" != NULL}<p class="error">{$message.ng.access}</p>{/if}
				<textarea name="access" id="access" rows="4" class="form-control">{$arr_post.access|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">福利厚生</label>
			<div class="col-sm-9">
				{if $message.ng.welfare|default:"" != NULL}<p class="error">{$message.ng.welfare}</p>{/if}
				<textarea name="welfare" id="welfare" rows="4" class="form-control">{$arr_post.welfare|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">条件 </label>
			<div class="col-sm-9">
				{if $message.ng.qualification|default:"" != NULL}<p class="error">{$message.ng.qualification}</p>{/if}
				<textarea name="qualification" id="qualification" rows="4" class="form-control">{$arr_post.qualification|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">賃金支払い形態</label>
			<div class="col-sm-6">
				{if $message.ng.salary_unit|default:"" != NULL}<p class="error">{$message.ng.salary_unit}</p>{/if}
				<div class="radio m-r-xs inline">
					{html_radios name="salary_unit" options=$OptionSalaryUnit selected=$arr_post.salary_unit|default:"MONTH"}
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<style>{literal}label.control-label > span.hisu {display: inline-block;margin-right: 10px;padding: 2px 5px;background: #1AB394;color: #FFF;font-weight: normal;font-size: 11px;}{/literal}</style>
		<div class="form-group">
			<label class="col-sm-2 control-label"><span class="hisu">最低値のみ必須</span>賃金</label>
			<div class="col-sm-5">
				{if $message.ng.min_salary|default:"" != NULL}<p class="error">{$message.ng.min_salary}</p>{/if}
				{if $message.ng.max_salary|default:"" != NULL}<p class="error">{$message.ng.max_salary}</p>{/if}
				{if $message.ng.salary|default:"" != NULL}<p class="error">{$message.ng.salary}</p>{/if}
				<div class="input-group">
					<input type="number" class="form-control" name="min_salary" id="min_salary" value="{$arr_post.min_salary|default:""}" /><span class="input-group-addon">～</span>
					<input type="number" class="form-control" name="max_salary" id="max_salary" value="{$arr_post.max_salary|default:""}" /><span class="input-group-addon">円</span>
				</div>
			</div>
			<div class="col-sm-offset-2 col-sm-9">
				<textarea name="salary" id="salary" rows="4" class="form-control">{$arr_post.salary|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">賞与</label>
			<div class="col-sm-9">
				{if $message.ng.raise_bonus|default:"" != NULL}<p class="error">{$message.ng.raise_bonus}</p>{/if}
				<textarea name="raise_bonus" id="raise_bonus" rows="4" class="form-control">{$arr_post.raise_bonus|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group required">
			<label class="col-sm-2 control-label">勤務地</label>
			<div class="col-sm-4">
				{if $message.ng.zip|default:"" != NULL}<p class="error">{$message.ng.zip}</p>{/if}
				{if $message.ng.prefecture|default:"" != NULL}<p class="error">{$message.ng.prefecture}</p>{/if}
				{if $message.ng.address1|default:"" != NULL}<p class="error">{$message.ng.address1}</p>{/if}
				{if $message.ng.address2|default:"" != NULL}<p class="error">{$message.ng.address2}</p>{/if}
				<strong>郵便番号</strong>
				<div class="input-group">
					<span class="input-group-addon">〒</span>
					<input type="text" class="form-control" name="zip" id="zip" value="{$arr_post.zip}" maxlength="8" />
					<span class="input-group-addon"><a href="javascript:AjaxZip3.zip2addr('zip','','prefecture','address1');">住所自動入力</a></span>
				</div>
				<strong>都道府県</strong>
				{html_select_ken name="prefecture" id="prefecture" str_default="選択してください" class="form-control" selected=$arr_post.prefecture}
				<strong>市区郡町村</strong>
				<input type="text" class="form-control" name="address1" id="address1" value="{$arr_post.address1}" maxlength="255" />
				<strong>番地、町名、建物名</strong>
				<input type="text" class="form-control" name="address2" id="address2" value="{$arr_post.address2}" maxlength="255" />
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">リモートワーク</label>
			<div class="col-sm-6">
				{if $message.ng.remote_work|default:"" != NULL}<p class="error">{$message.ng.remote_work}</p>{/if}
				<div class="radio m-r-xs inline">
					{html_radios name="remote_work" values=1 selected=$arr_post.remote_work|default:"0" output="リモートワークにする"}&nbsp;&nbsp;
					{html_radios name="remote_work" values=0 selected=$arr_post.remote_work|default:"0" output="リモートワークにしない"}
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">通勤手当</label>
			<div class="col-sm-9">
				{if $message.ng.commute|default:"" != NULL}<p class="error">{$message.ng.commute}</p>{/if}
				<textarea name="commute" id="commute" rows="4" class="form-control">{$arr_post.commute|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">休日等</label>
			<div class="col-sm-9">
				{if $message.ng.holiday|default:"" != NULL}<p class="error">{$message.ng.holiday}</p>{/if}
				<textarea name="holiday" id="holiday" rows="4" class="form-control">{$arr_post.holiday|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">試用期間</label>
			<div class="col-sm-9">
				{if $message.ng.trial|default:"" != NULL}<p class="error">{$message.ng.trial}</p>{/if}
				<textarea name="trial" id="trial" rows="4" class="form-control">{$arr_post.trial|default:""}</textarea>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		{if $_ARR_IMAGE != NULL}
			{include file=$template_image path=$_IMAGEFULLPATH dir=$_CONTENTS_DIR prefix="s_"}
		{/if}
		<div class="form-group">
			<label class="col-sm-2 control-label">掲載期間 </label>
			<div class="col-sm-4">
				<div class="radio m-r-xs inline mb15">
					{html_radios name="display_indefinite" values=1 selected=$arr_post.display_indefinite|default:"1" output="設定しない"}&nbsp;&nbsp;
					{html_radios name="display_indefinite" values=0 selected=$arr_post.display_indefinite|default:"1" output="設定する"}
				</div>
				{if $message.ng.display_start|default:"" != NULL}<p class="error">{$message.ng.display_start}</p>{/if}
				{if $message.ng.display_end|default:"" != NULL}<p class="error">{$message.ng.display_end}</p>{/if}
				<div class="input-daterange input-group" id="datepicker">
					<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
					<input type="text" class="input-sm form-control datepicker" name="display_start" id="display_start" value="{$arr_post.display_start|default:""}" readonly>
					<span class="input-group-addon">～</span>
					<input type="text" class="input-sm form-control datepicker" name="display_end" id="display_end"  value="{$arr_post.display_end|default:""}" readonly>
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="form-group">
			<label class="col-sm-2 control-label">表示／非表示</label>
			<div class="col-sm-6">
				{if $message.ng.display_flg|default:"" != NULL}<p class="error">{$message.ng.display_flg}</p>{/if}
				<div class="radio m-r-xs inline">
					{html_radios name="display_flg" values=1 selected=$arr_post.display_flg|default:"1" output="する"}&nbsp;&nbsp;
					{html_radios name="display_flg" values=0 selected=$arr_post.display_flg|default:"1" output="しない"}
				</div>
			</div>
		</div>
		<div class="hr-line-dashed"></div>
		<div class="button clearfix mb20">
			{if $mode == 'edit'}<input type="hidden" name="{$_CONTENTS_ID}" value="{$arr_post.$_CONTENTS_ID}" />{/if}
			<input type="hidden" name="_contents_dir" id="_contents_dir" value="{$_CONTENTS_DIR}" />
			<input type="hidden" name="_contents_conf_path" id="_contents_conf_path" value="{$_CONTENTS_CONF_PATH}" />
			<div class="form-group">
				<div style="text-align:right;">
					<input type="button" class="btn btn-primary" value="この内容で登録" id="{if $mode == 'edit'}updateBtn{else}insertBtn{/if}" />
				</div>
			</div>
		</div>
	</div>
</form>
