			{include file=$template_pagenavi}
			<table class="footable table table-stripped toggle-arrow-tiny tbl_1" data-page-size="15">
				<thead>
					<tr>
						<th>お名前</th>
						<th>住所</th>
						<th>電話番号</th>
						<th>メール</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$t_recruit_contact item="recruit_contact" name="loopRecruit"}
					<tr>
						<td><a href="./entry_detail.php?id={$recruit_contact.id_recruit_contact}">{$recruit_contact.name}{if !empty($recruit_contact.ruby)}（{$recruit_contact.ruby}）{/if}</a></td>
						<td>
							〒{$recruit_contact.zip}　{html_select_ken selected=$recruit_contact.prefecture|default:"" pre=1}{$recruit_contact.address}
						</td>
						<td>{$recruit_contact.tel}</td>
						<td>{$recruit_contact.mail}</td>
					</tr>
					{foreachelse}
					<tr>
						<td colspan="6">{$_CONTENTS_NAME}は見つかりません。</td>
					</tr>
					{/foreach}
				</tbody>
				<tfoot>
					<tr>
						<td colspan="10"><ul class="pagination pull-right">
							</ul></td>
					</tr>
				</tfoot>
			</table>
			{include file=$template_pagenavi}
