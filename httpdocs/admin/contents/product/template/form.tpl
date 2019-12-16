			<form class="form-horizontal" action="./{if $mode == 'edit'}update{else}insert{/if}.php" method="post" enctype="multipart/form-data" id="inputForm">
				<div class="ibox-content">
					<div class="form-group required">
						<label class="col-sm-2 control-label">製品カテゴリ</label>
						<div class="col-sm-6">
							{if $message.ng.id_product_category|default:"" != NULL}<p class="error">{$message.ng.id_product_category}</p>{/if}

							<div class="radio m-r-xs inline">
								<select class="form-control" name="id_product_category" id="id_product_category">
									<option value="0">選択してください</option>
									{html_options options=$OptionProductCategory selected=$arr_post.id_product_category}
								</select>
							</div>
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group required">
						<label class="col-sm-2 control-label">種類</label>
						<div class="col-sm-6">
							{if $message.ng.name|default:"" != NULL}<p class="error">{$message.ng.name}</p>{/if}
							<input type="text" class="form-control" name="name" id="name" value="{$arr_post.name|default:""}" />
						</div>
					</div>
					<div class="hr-line-dashed"></div>
					<div class="form-group">
						<label class="col-sm-2 control-label">事業所追加</label>
						<div class="col-sm-9">
							<p class="mb10 x-large"> <a href="javascript:void(0);" class="add_product_parts btn btn-primary btn-s"><i class="fa fa-r fa-plus-circle"></i>追加</a></p>
						</div>
					</div>
					<div id="item_container">
						{foreach from=$arr_post.detail item="product_parts" key="key" name="loopParts"}
						<div class="product_parts_loop" width="100%" data-sirial="{$key}">
							<div class="form-group">
								<label class="col-sm-2 control-label">種類</label>
								<div class="col-sm-6">
									{if $message.ng[detail_|cat:$key|cat:"_type"]|default:"" != NULL}<p class="error">{$message.ng[detail_|cat:$key|cat:"_type"]}</p>{/if}
									<input type="text" class="form-control product_parts_type" name="detail[{$key}][type]" id="product_parts_type_{$key}"  size="60" value="{$product_parts.type|default:""}" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">特徴</label>
								<div class="col-sm-9">
									{if $message.ng[detail_|cat:$key|cat:"_feature"]|default:"" != NULL}<p class="error">{$message.ng[detail_|cat:$key|cat:"_feature"]}</p>{/if}
									<textarea name="detail[{$key}][feature]" id="product_parts_feature_{$key}" rows="3" class="form-control text product_parts_feature">{$product_parts.feature|default:""}</textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">脱酸素日数</label>
								<div class="col-sm-6">
									{if $message.ng[detail_|cat:$key|cat:"_days"]|default:"" != NULL}<p class="error">{$message.ng[detail_|cat:$key|cat:"_days"]}</p>{/if}
									<input type="text" class="form-control product_parts_days" name="detail[{$key}][days]" id="product_parts_days_{$key}"  size="60" value="{$product_parts.days|default:""}" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">放置可能時間</label>
								<div class="col-sm-6">
									{if $message.ng[detail_|cat:$key|cat:"_time"]|default:"" != NULL}<p class="error">{$message.ng[detail_|cat:$key|cat:"_time"]}</p>{/if}
									<input type="text" class="form-control product_parts_time" name="detail[{$key}][time]" id="product_parts_time_{$key}"  size="60" value="{$product_parts.time|default:""}" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">主な用途</label>
								<div class="col-sm-9">
									{if $message.ng[detail_|cat:$key|cat:"_use"]|default:"" != NULL}<p class="error">{$message.ng[detail_|cat:$key|cat:"_use"]}</p>{/if}
									<textarea name="detail[{$key}][use]" id="product_parts_use_{$key}" rows="3" class="form-control text product_parts_use">{$product_parts.use|default:""}</textarea>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">変化所要時間</label>
								<div class="col-sm-6">
									{if $message.ng[detail_|cat:$key|cat:"_necessary_time"]|default:"" != NULL}<p class="error">{$message.ng[detail_|cat:$key|cat:"_necessary_time"]}</p>{/if}
									<input type="text" class="form-control product_parts_necessary_time" name="detail[{$key}][necessary_time]" id="product_parts_necessary_time_{$key}"  size="60" value="{$product_parts.necessary_time|default:""}" />
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
							{/foreach}
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">※表の下の注意書き</label>
						<div class="col-sm-6">
							{if $message.ng.notice|default:"" != NULL}<p class="error">{$message.ng.notice}</p>{/if}
							<input type="text" class="form-control" name="notice" id="notice" value="{$arr_post.notice|default:""}" />
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
					{if $mode == 'edit'}<input type="hidden" name="id_product" value="{$arr_post.id_product}" />{/if}
					<input type="hidden" name="_contents_dir" id="_contents_dir" value="{$_CONTENTS_DIR}" />
					<input type="hidden" name="_contents_conf_path" id="_contents_conf_path" value="{$_CONTENTS_CONF_PATH}" />
					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2 pos_ar">
							<button class="btn btn-primary"  type="submit">この内容で登録</button>
						</div>
					</div>
				</div>
			</form>
