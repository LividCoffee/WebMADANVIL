<div class="form-wrap">
    <header class="form-title"><h1>Добавить Новость</h1></header>

    <div class="sep-input clearfix">
        <div class="label">
            <label for="title">Заголовок:</label>
        </div>
        <div class="input">
            <input type="text" id="title" name="title" value="{title}" maxlength="150" placeholder="Введите заголовок" />
        </div>
    </div>

    <div class="sep-vote-rel clearfix">
        <div class="clearfix">
            <input class="add-findrel" title="Найти похожие" onclick="find_relates(); return false;" type="button" value="Найти похожие" />
            <a href="#" class="add-votebut" onclick="$('.addvote').toggle();return false;">Добавить опрос</a>
        </div>
        <div id="related_news"></div>
        <div class="addvote" style="display:none;">
            <div class="sep-input clearfix">
                <div class="label">
                    <label>Заголовок:</label>
                </div>
                <div class="input">
                    <input type="text" name="vote_title" value="{votetitle}" maxlength="150" placeholder="Заголовок опроса" />
                </div>
            </div>
            <div class="sep-input clearfix">
                <div class="label">
                    <label>Сам вопрос:</label>
                </div>
                <div class="input">
                    <input type="text" name="frage" value="{frage}" maxlength="150" placeholder="Сам вопрос" />
                </div>
            </div>
            <div class="textarea-title">Варианты ответов (Каждая новая строка является новым вариантом ответа):</div>
            <div class="bb-editor">
                <textarea name="vote_body" rows="10" class="vote-textarea">{votebody}</textarea>
            </div>
            <div class="sep-checks">
                <input type="checkbox" name="allow_m_vote" value="1" {allowmvote}>
                <label>Разрешить выбор нескольких вариантов</label>
            </div>
        </div>
    </div>

    [urltag]
    <div class="sep-input clearfix">
        <div class="label">
            <label for="alt_name">URL статьи:</label>
        </div>
        <div class="input">
            <input type="text" name="alt_name" value="{alt-name}" maxlength="150" placeholder="УРЛ новости" />
        </div>
    </div>
	[/urltag]

    <div class="sep-textarea">
        <div class="textarea-title">Выбор категории:</div>
        {category}
    </div>

    <div class="sep-textarea">
        <div class="textarea-title">Вводная часть: <i>(Обязательно)</i></div>
        [not-wysywyg]
        <div class="bb-editor">
            {bbcode}
            <textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="15" class="f_textarea">{short-story}</textarea>
        </div>
        [/not-wysywyg] 
		{shortarea}
    </div>

    <div class="sep-textarea">
        <div class="textarea-title">Подробная часть: <i>(Необязательно)</i></div>
        [not-wysywyg]
        <div class="bb-editor">
            {bbcode}
            <textarea name="full_story" id="full_story" onfocus="setFieldName(this.name)" rows="20" class="f_textarea">{full-story}</textarea>
        </div>
        [/not-wysywyg] 
		{fullarea}
    </div>

    <div class="sep-xfield">
        <div>
            <table class="tableform">{xfields}</table>
        </div>
    </div>

    <div class="sep-input clearfix">
        <div class="label">
            <label for="tags">Ключевые слова:</label>
        </div>
        <div class="input">
            <input type="text" name="tags" id="tags" value="{tags}" maxlength="150" autocomplete="off" />
        </div>
    </div>

    <div class="sep-checks">{admintag}</div>

	[not-group=1]
    <div class="sep-input secur clearfix">
        <div class="label">
            <label>Защита от спама:</label>
        </div>
        <div class="input">
            [question]
            <div class="sec-label"><span>Вопрос:</span><span class="impot">*</span> {question}</div>
            <div class="sec-answer">
                <input type="text" name="question_answer" placeholder="Впишите ответ на вопрос" />
            </div>
            [/question] 
			[sec_code]
            <div class="sec-label">Введите код с картинки:<span class="impot">*</span> </div>
            <div class="sec-capcha clearfix">
                <input type="text" name="sec_code" id="sec_code" maxlength="45" />{sec_code}</div>
            [/sec_code] 
			[recaptcha]
            <div class="sec-label"><span>Введите два слова, показанных на изображении:</span><span class="impot">*</span></div>
            <div>{recaptcha}</div>
            [/recaptcha]
        </div>
    </div>
	[/not-group]

    <div class="sep-submit">
        <button name="add" type="submit">Отправить</button>
        <button name="nview" onclick="preview()" type="submit">Просмотр</button>
    </div>

</div>