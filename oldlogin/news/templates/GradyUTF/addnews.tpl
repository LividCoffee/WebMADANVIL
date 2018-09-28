<div class="col-xs-12 my">
<div class="panel panel-default ">
    <div class="panel-heading" style="border-color: #40b1d0;">
<div class="media">
  <div class="media-left">
   <i class="icon-printer" style="font-size: 25px;"></i>
  </div>
  <div class="media-body">
    <h4 class="media-heading ph">Добавить статью</h4>
      <div class="pt">Заполните поля ниже и опубликуйте статью!</div>
  </div>
</div>
    </div>
  <div class="panel-body">
<div class="input-group" style="width: 100%;margin-bottom: 12px;" >
  <input type="text" name="title" id="title" value="{title}" class="form-control" placeholder="Заголовок" required>
</div>
<div class="input-group" style="width: 100%;margin-bottom: 12px;">
  <input type="text" name="tags" id="tags" value="{tags}" maxlength="150" class="form-control" autocomplete="off" placeholder="Несколько ключевых слов через запятую">
</div>
      
[urltag]   
<div class="input-group" style="width: 100%;margin-bottom: 12px;">
  <input type="text" name="alt_name" id="alt_name" value="{alt-name}" class="form-control" placeholder="URL статьи">
</div>
[/urltag]

      <label for="short_story">Краткое описание</label>
			[not-wysywyg]
			<div class="bb-editor">
				{bbcode}
				<textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="8" class="wide" required>{short-story}</textarea>
			</div>
			[/not-wysywyg]
			{shortarea}<br>
      <label for="full_story">Полное описание</label>
			[not-wysywyg]
			<div class="bb-editor">
				{bbcode}
				<textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="18" class="wide" >{full-story}</textarea>
			</div>
			[/not-wysywyg]
			{fullarea}
      <br />
      <a href="#myModal" class="btn btn-default" data-toggle="modal" onclick="$('.addvote').toggle();return false;" style="margin-bottom:10px;"> <span class="icon-options-vertical"></span> Прикрепить опрос к статье</a>
    
<div id="myModal" class="modal fade">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <!-- Заголовок модального окна -->
      <div class="modal-header" >
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Добавить опрос к статье</h4>
      </div>
      <!-- Основное содержимое модального окна -->
      <div class="modal-body">
        <div class="input-group" style="width: 100%;">
        <input type="text" name="vote_title" value="{votetitle}" class="form-control" placeholder="Заголовок опроса" />
        </div><br>
        <div class="input-group" style="width: 100%;">
        <input type="text" name="frage" value="{frage}" class="form-control" placeholder="Вопрос" />
        </div><br>
			<textarea name="vote_body" style="width: 100%;" rows="5" class="form-control" placeholder="Каждая новая строка является новым вариантом ответа">{votebody}</textarea><br /><input type="checkbox" name="allow_m_vote" value="1" {allowmvote}> Разрешить выбор нескольких вариантов
        </div>
      <!-- Футер модального окна -->
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Готово</button>
      </div>
    </div>
  </div>
</div>
      <div class="row  row-flex row-flex-wrap my" style="margin: 0px -10px 0 -10px;">
        <div class="col-md-6 my">
             <div class="panel panel-default" style="width:100%;box-shadow: none;border: 1px solid #DBE0E4;">
        <div class="panel-heading"><i class="icon-folder" aria-hidden="true"></i> Выбор категории</div>
        <div class="panel-body">
        <div class="admin_checkboxs">{category}</div><br>
            
        </div>
        </div>
          
        </div>
        <div class="col-md-6 my">
       [group=1,2]
            <div class="panel panel-default" style="width:100%;box-shadow: none;border: 1px solid #DBE0E4;">
            <div class="panel-heading"><i class="fa fa-user-secret" aria-hidden="true"></i> Настройки администратора</div>
            <div class="panel-body" style="padding: 0px 10px 0px 10px;">
                <div class="admin_checkboxs">{admintag}</div>
            </div>
      </div>
	   [/group]
        </div>
      </div>
    <table style="width:100%">
				{xfields}
      </table>

    <article class="block story">
	<ul class="ui-form">
		
	[recaptcha]
		<center>{recaptcha}</center>
	[/recaptcha]
	[question]
		<li class="form-group">
			<label for="question_answer">{question}</label>
			<input placeholder="Введите ответ" type="text" name="question_answer" id="question_answer" class="wide" required>
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
		<button class="btn btn-primary" type="submit" name="add"><b>Опубликовать</b></button>
	</div>
</article>
  </div>
</div> 
</div>