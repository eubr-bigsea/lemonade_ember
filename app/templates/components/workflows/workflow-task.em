if isComment
  .comment-note
    = textarea value=task.forms.comment.value
  a.remove-task.pull-right href='#' click={action 'removeTask' task}
    i.mdi.mdi-close
else
  .task-wrapper.pull-left click={action 'clickTask'}
    .name-container
      i class={concat 'fa' task.operation.icon}
      span.operation-name: =task.name
