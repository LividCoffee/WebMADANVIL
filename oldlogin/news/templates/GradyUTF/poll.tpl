<br>
<div class="panel panel-default" style="box-shadow: none;border: 1px solid #ddd;">
  <div class="panel-heading"><b>{question}</b></div>
  <div class="panel-body">
    {list}
    [voted]
      <div class="vote_votes grey">Проголосовало: {votes}</div>
	[/voted]
  </div>
    [not-voted]
    <div class="panel-footer">
		<button title="Голосовать" class="btn btn-default" type="submit" onclick="doPoll('vote', '{news-id}'); return false;" >Голосовать</button>
		<button title="Результаты" class="btn btn-default" type="button" onclick="doPoll('results', '{news-id}'); return false;" >Результаты</button>
        </div>
    [/not-voted]
</div>