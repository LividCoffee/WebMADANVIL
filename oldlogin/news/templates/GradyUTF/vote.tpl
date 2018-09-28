<div class="panel panel-default">
  <div class="panel-heading" >{title} </div>
  <div class="panel-body">
    <div id="votes" class="block">
	<!--<div class="vote_more"><a href="#" onclick="ShowAllVotes(); return false;">Другие опросы...</a></div>-->
	[votelist]
	<form method="post" name="vote">
	[/votelist]
		<div class="vote_list">
			{list}
		</div>
	[voteresult]
		<div class="vote_votes grey">Проголосовало: {votes}</div>
	[/voteresult]
	[votelist]
		<input type="hidden" name="vote_action" value="vote">
		<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
<div class="btn-group btn-group-justified">
  <div class="btn-group" style="padding-right: 3px;">
    <button title="Голосовать" class="btn btn-default" type="submit" onclick="doVote('vote'); return false;" >Голосовать</button>
  </div>
  <div class="btn-group" style="padding-left: 3px;">
    <button title="Результаты опроса" class="btn btn-default" type="button" onclick="doVote('results'); return false;" >Результаты</button>
  </div>
    
</div>

	</form>
	[/votelist]
</div>
  </div>
</div>