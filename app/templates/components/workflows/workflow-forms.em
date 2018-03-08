fieldset style='border:none'
  .form-group.title
    span: t 'form.title'
    a.btn.btn-primary.btn-md.remove-task.pull-right href='#' click={action 'removeTask' task}
      i.mdi.mdi-delete
  .form-group
    p.title
      span.label title={t 'form.task.name'}
        =t 'form.task.name'
      span.fa.fa-question-circle.pull-right title={t 'form.task.helper'}
    .form-field
      =input class="form-control" value=task.name
each task.operation.forms as |form|
  fieldset
    legend: =form.name
    each form.fields as |field|
      =component (concat 'forms/form-' field.suggested_widget) currentValue=(get (get task.forms field.name) 'value') name=field.name field=field onValueChanged=(action 'formChanged') getAttributeSuggestions=getAttributeSuggestions