			<form class="form-horizontal" action="./{if $mode == 'edit'}update{else}insert{/if}.php" method="post" enctype="multipart/form-data" id="inputForm">
				<div class="ibox-content">
					<div class="form-group required">
						<label class="col-sm-2 control-label">募集</label>
						<div class="col-sm-6">
							{if $message.ng.employment|default:"" != NULL}<p class="error">{$message.ng.employment}</p>{/if}
							<div class="radio m-r-xs inline">
								{html_radios options=$OptionRecruitType class="employment" name="employment" selected=$arr_post.employment|default:"1" separator="&nbsp;&nbsp;"}
							</div>
						</div>
					</div>
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
						<label class="col-sm-2 control-label">エリア</label>
						<div class="col-sm-6">
							{if $message.ng.area|default:"" != NULL}<p class="error">{$message.ng.area}</p>{/if}
							<select name="area" id="area" class="form-control inline input-s">
								{html_options options=$OptionArea selected=$arr_post.area|default:1}
							</select>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">グループ会社</label>
						<div class="col-sm-6">
							{if $message.ng.id_group|default:"" != NULL}<p class="error">{$message.ng.id_group}</p>{/if}
							<div class="checkbox m-r-xs">
								<ul>
									{foreach from=$OptionGroup item="recruit_id_group" key="key" name="loopRecruitGroup"}
										<li>{html_checkboxes name="id_group" output=$recruit_id_group values=$key selected=$arr_post.id_group|default:""}</li>
									{/foreach}
								</ul>
							</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div id="car_select" class="form-group required">
						<label class="col-sm-2 control-label">車種</label>
						<div class="col-sm-6">
							{if $message.ng.car_type|default:"" != NULL}<p class="error">{$message.ng.car_type}</p>{/if}
							<select name="car_type" id="car_type" class="form-control inline input-s">
								<option value="">選択してください</option>
								{html_options options=$OptionCarType selected=$arr_post.car_type|default:""}
							</select>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group required">
						<label class="col-sm-2 control-label">働き方</label>
						<div class="col-sm-6">
							{if $message.ng.work_type|default:"" != NULL}<p class="error">{$message.ng.work_type}</p>{/if}
							<span id="work_type">
								<select name="work_type" class="form-control inline input-s">
									<option value="">選択してください</option>
									{html_options options=$OptionWorkType selected=$arr_post.work_type|default:""}
								</select>
							</span>
							<span id="work_type2" style="display:none;">
								<select name="_work_type" class="form-control inline input-s" >
									<option value="">選択してください</option>
									{html_options options=$OptionWorkType2 selected=$arr_post.work_type|default:""}
								</select>
							</span>
						</div>
					</div>


					<div class="hr-line-dashed"></div>
					<div class="form-group required">
						<label class="col-sm-2 control-label">見出し</label>
						<div class="col-sm-6">
							{if $message.ng.title|default:"" != NULL}<p class="error">{$message.ng.title}</p>{/if}
							<input type="text" class="form-control" name="title" id="title" value="{$arr_post.title|default:""}" />
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">紹介文</label>
						<div class="col-sm-6">
							{if $message.ng.comment|default:"" != NULL}<p class="error">{$message.ng.comment}</p>{/if}
							<textarea name="comment" id="comment" rows="7" class="form-control">{$arr_post.comment|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group ">
						<label class="col-sm-2 control-label">主な仕事内容</label>
						<div class="col-sm-9">
							{if $message.ng.job_description|default:"" != NULL}<p class="error">{$message.ng.job_description}</p>{/if}
							<textarea name="job_description" id="job_description" rows="7" class="form-control">{$arr_post.job_description|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group required">
						<label class="col-sm-2 control-label">勤務地</label>
						<div class="col-sm-6">
							{if $message.ng.worklocation|default:"" != NULL}<p class="error">{$message.ng.worklocation}</p>{/if}
							<textarea name="worklocation" id="worklocation" rows="7" class="form-control">{$arr_post.worklocation|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group required">
						<label class="col-sm-2 control-label">勤務時間</label>
						<div class="col-sm-6">
							{if $message.ng.work_time|default:"" != NULL}<p class="error">{$message.ng.work_time}</p>{/if}
							<textarea name="work_time" id="work_time" rows="7" class="form-control">{$arr_post.work_time|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group ">
						<label class="col-sm-2 control-label">給与</label>
						<div class="col-sm-9">
							{if $message.ng.salary|default:"" != NULL}<p class="error">{$message.ng.salary}</p>{/if}
							<textarea name="salary" id="salary" rows="7" class="form-control">{$arr_post.salary|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group ">
						<label class="col-sm-2 control-label">給与幅</label>
						<div class="col-sm-6">
							{if $message.ng.max_salary|default:"" != NULL}<p class="error">{$message.ng.max_salary}</p>{/if}
							{if $message.ng.min_salary|default:"" != NULL}<p class="error">{$message.ng.min_salary}</p>{/if}
							<div class="input-group">
								<input type="number" name="min_salary" id="min_salary" class="form-control" value="{$arr_post.min_salary|default:""}" /><span class="input-group-addon">円</span><span class="input-group-addon">～</span><input type="number" name="max_salary" id="max_salary" class="form-control" value="{$arr_post.max_salary|default:""}" /><span class="input-group-addon">円</span>
							</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">昇給・賞与</label>
						<div class="col-sm-9">
							{if $message.ng.raise_bonus|default:"" != NULL}<p class="error">{$message.ng.raise_bonus}</p>{/if}
							<textarea name="raise_bonus" id="raise_bonus" rows="7" class="form-control">{$arr_post.raise_bonus|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">諸手当</label>
						<div class="col-sm-9">
							{if $message.ng.various_benefits|default:"" != NULL}<p class="error">{$message.ng.various_benefits}</p>{/if}
							<textarea name="various_benefits" id="various_benefits" rows="7" class="form-control">{$arr_post.various_benefits|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">休日・休暇</label>
						<div class="col-sm-9">
							{if $message.ng.holiday|default:"" != NULL}<p class="error">{$message.ng.holiday}</p>{/if}
							<textarea name="holiday" id="holiday" rows="7" class="form-control">{$arr_post.holiday|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">福利厚生</label>
						<div class="col-sm-9">
							{if $message.ng.welfare|default:"" != NULL}<p class="error">{$message.ng.welfare}</p>{/if}
							<textarea name="welfare" id="welfare" rows="7" class="form-control">{$arr_post.welfare|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group ">
						<label class="col-sm-2 control-label">応募資格</label>
						<div class="col-sm-9">
							{if $message.ng.qualification|default:"" != NULL}<p class="error">{$message.ng.qualification}</p>{/if}
							<textarea name="qualification" id="qualification" rows="7" class="form-control">{$arr_post.qualification|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">選考方法</label>
						<div class="col-sm-9">
							{if $message.ng.selection|default:"" != NULL}<p class="error">{$message.ng.selection}</p>{/if}
							<textarea name="selection" id="selection" rows="7" class="form-control">{$arr_post.selection|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">応募書類</label>
						<div class="col-sm-9">
							{if $message.ng.letters|default:"" != NULL}<p class="error">{$message.ng.letters}</p>{/if}
							<textarea name="letters" id="letters" rows="7" class="form-control">{$arr_post.letters|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">連絡先</label>
						<div class="col-sm-9">
							{if $message.ng.contact|default:"" != NULL}<p class="error">{$message.ng.contact}</p>{/if}
							<textarea name="contact" id="contact" rows="7" class="form-control">{$arr_post.contact|default:""}</textarea>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">備考</label>
						<div class="col-sm-9">
							{if $message.ng.others|default:"" != NULL}<p class="error">{$message.ng.others}</p>{/if}
							<textarea name="others" id="others" rows="7" class="form-control">{$arr_post.others|default:""}</textarea>
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
					{if $mode == 'edit'}<input type="hidden" name="id_recruit" value="{$arr_post.id_recruit}" />{/if}
					<input type="hidden" name="_contents_dir" id="_contents_dir" value="{$_CONTENTS_DIR}" />
					<input type="hidden" name="_contents_conf_path" id="_contents_conf_path" value="{$_CONTENTS_CONF_PATH}" />
					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2 pos_ar">
							<button class="btn btn-primary"  type="submit">この内容で登録</button>
					{*		<input type="button" value="プレビューを表示" class="btn" id="previewBtn" /><br /><br />
							<strong class="c_red">
								※プレビュー画面では、各種リンクは繋がっておりません。<br />
								※プレビュー表示を押しても保存にはなりません。変更を反映させる場合は「この内容で登録」を押して下さい。<br />
							</strong>*}
						</div>
					</div>
				</div>
			</form>
			{literal}
			<script>
				$(function(){
					$(document).on( 'change', '.employment', function(){
						if( $(this).val() == 3 ){
							$('#work_type').show();
							$('#work_type2').hide();
							$('#work_type2').children('select').attr("name","_work_type");
							$('#work_type').children('select').attr("name","work_type");
							$('#car_select').show();
						}else{
							$('#work_type').hide();
							$('#work_type2').show();
							$('#work_type2').children('select').attr("name","work_type");
							$('#work_type').children('select').attr("name","_work_type");
							$('#car_select').hide();
						}
					});
					if( $("input[name='employment']:checked").val() == 3 ){
						$('#work_type').show();
						$('#work_type2').hide();
						$('#work_type2').children('select').attr("name","_work_type");
						$('#work_type').children('select').attr("name","work_type");
						$('#car_select').show();
					}else{
						$('#work_type').hide();
						$('#work_type2').show();
						$('#work_type2').children('select').attr("name","work_type");
						$('#work_type').children('select').attr("name","_work_type");
						$('#car_select').hide();
					}
				});
			</script>
			{/literal}
