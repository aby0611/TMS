jQuery ->
  $('#pages').dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
    bProcessing: true
    sAjaxSource: $('#pages').data('source')
    setInterval('$("#pages").dataTable().ajax.reload()', 0)