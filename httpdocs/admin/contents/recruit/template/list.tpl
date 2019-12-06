			{include file=$template_pagenavi}
			<table class="footable table table-stripped toggle-arrow-tiny tbl_1">
				{capture name="Thead"}
				<tr>
					<th width="100">掲載期間</th>
					<th width="150">雇用形態</th>
					<th>タイトル</th>
					<th width="70" class="showhide">表示</th>
					<th width="70" class="delete">削除</th>
				</tr>
				{/capture}
				<thead>
					{$smarty.capture.Thead}
				</thead>
				<tfoot>
					{$smarty.capture.Thead}
				</tfoot>
				<tbody>
					{foreach from=$t_recruit item="recruit" name="loopRecruit"}
					<tr>
						<td>
							{if $recruit.display_indefinite_flg == 0}
								{$recruit.display_start|date_format:"%Y/%m/%d"}<br />
								{$recruit.display_end|date_format:"%Y/%m/%d"}
							{else}
								無期限
							{/if}
						</td>
						<td>{$OptionEmployment[$recruit.employment]}</td>
						<td><a href="./edit.php?id={$recruit.id_recruit}">{$recruit.title}</a></td>
						<td class="pos_ac">
							<div class="switch">
								<div class="onoffswitch">
									<input type="checkbox" value="1" class="onoffswitch-checkbox btn_display" id="display{$recruit.id_recruit}" data-id="{$recruit.id_recruit}"{if $recruit.display_flg == 1} checked{/if}>
									<label class="onoffswitch-label" for="display{$recruit.id_recruit}">
										<span class="onoffswitch-inner"></span>
										<span class="onoffswitch-switch"></span>
									</label>
								</div>
							</div>
						</td>
						<td class="pos_ac">
							<a href="javascript:void(0)" class="btn btn-danger btn_delete" data-id="{$recruit.id_recruit}">削除</a>
						</td>
					</tr>
					{foreachelse}
					<tr>
						<td colspan="4">{$_CONTENTS_NAME}は見つかりません。</td>
					</tr>
					{/foreach}
				</tbody>
			</table>
			{include file=$template_pagenavi}
