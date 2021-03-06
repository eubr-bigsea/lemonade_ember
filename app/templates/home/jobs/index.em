.__jobs__index
  .container-fluid.menu
    .row.centered
      .col-12.col-md-7
       .title-block.pull-left
         h3.title
           i.fa.fa-tasks
           '
           = t 'jobs.self'
         p.title-description: =t 'jobs.description'
      .col-12.col-md-5
        .search-block.pull-right
          form.form-inline onsubmit='return false'
            .input-group
              =input class='form-control' placeholder=(t 'workflows.searchFor') value=name key-up=(action 'search')
              span.input-group-btn
                button.btn.btn-secondary#submit type='button'
                  i.fa.fa-search
  .container-fluid.model: .row: .col-12
    = jobs/jobs-table model=model class="container-fluid" sortBy=(action 'sortBy') sortFromDropdown=(action 'sortFromDropdown') toggleSelect=(action 'toggleSelect') toggleDeleteModal=(action 'toggleDeleteModal') selectSingle=(action 'selectSingle') timeProperties=timeProperties loadNext=(action 'loadNext') selectAll=selectAll sort=sort asc=asc
  = jobs/delete-modal deleteModal=deleteModal deleteJob=(action 'deleteJob') job=toDelete.firstObject jobs=toDelete
  button.btn.btn-default.btn-circle id="fading-button"
    i.mdi.mdi-delete click={action 'toggleDeleteMultipleModal'}
