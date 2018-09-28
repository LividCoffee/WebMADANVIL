<div class="col-xs-12 my">
<div class="panel panel-default">
    <div class="panel-heading">
<div class="btn-group pull-right" role="group">
  [inbox]<button type="button" class="btn btn-default">Входящие сообщения</button>[/inbox]
  [outbox]<button type="button" class="btn btn-default">Отправленные сообщения</button>[/outbox]
  [new_pm]<button type="button" class="btn btn-default">Написать сообщение</button>[/new_pm]
</div>
        <i class="fa fa-envelope-open-o" aria-hidden="true"></i> <b>Персональные сообщения</b></div>
  <div class="panel-body">

 <br>
  [pmlist]
<div class="panel panel-default" style="box-shadow: none;border: 1px solid #e9ecf3;margin-bottom: 0px;">
  <div class="panel-heading"><i class="icon-envelope-open" aria-hidden="true"></i> Список сообщений</div>
  <div class="panel-body">
   {pmlist}
  </div>
</div>
[/pmlist]
[newpm]
<div class="panel panel-default" style="margin:0px;">
  <div class="panel-heading" style="background: #f7f7f7;color: #35394b;border-bottom: 1px solid #ddd;">Создать сообщение</div>
  <div class="panel-body">
    <b>Имя адресата</b><br>
    <div class="input-group">
  <span class="input-group-addon"><i class="icon-action-redo" aria-hidden="true"></i></span>
  <input placeholder="Имя адресата" type="text" name="name" value="{author}" class="form-control" required>
    </div><br>
    <b>Тема сообщения</b><br>
    <div class="input-group">
  <span class="input-group-addon"><i class="icon-action-redo" aria-hidden="true"></i></span>
  <input placeholder="Тема сообщения" type="text" name="subj" value="{subj}" class="form-control" required>
    </div><br>
      {editor}
      <br><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy"> Сохранить сообщение в папке "Отправленные"</label>
	<br>
      
      <div class="addform addpm">
		<ul class="ui-form">
			    
		[recaptcha]
			{recaptcha}
		[/recaptcha]
		[question]
			<li class="form-group">
				<label for="question_answer">Вопрос: {question}</label>
				<input placeholder="Ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
			</li>
		[/question]
		</ul>
		<div class="form_submit">
			[sec_code]
				<div class="c-capcha">
					{sec_code}
					<input placeholder="Повторите код" title="Введите код указанный на картинке" type="text" name="sec_code" id="sec_code" required>
				</div>
			[/sec_code]
			<button class="btn btn-primary" type="submit" name="add">Отправить</button>
			<button class="btn btn-default" type="button" onclick="dlePMPreview()">Предпросмотр</button>
		</div>
	</div>
  </div>
</div>
[/newpm]
      [readpm]
		<div class="panel panel-default" style="border: 1px solid #f6bb42;box-shadow: none;border-radius: 0;margin-bottom: 0px;">
			<div class="panel-heading">
                <div class="pull-right" style="margin: -4px -8px 0 0;">
                [reply]<button type="button" class="btn btn-sm btn-default"><i class="fa fa-reply"></i> Ответить</button>[/reply]&nbsp;
				[del]<button type="button" class="btn btn-sm btn-default"><i class="fa fa-trash"></i> Удалить</button>[/del]
                </div>
                <i class="fa fa-user"></i> <strong>{author}:</strong>&nbsp;{subj}</div>
			<div class="panel-body">
				{text}
			</div>
		</div>
	
		[/readpm]

  </div>
</div>
    </div>