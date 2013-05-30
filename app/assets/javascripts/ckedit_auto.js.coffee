$(document).load ->
  elements = $('textarea.ckeditor')
  for elem in elements
    CKEDITOR.replace jQuery(elem).attr 'id',
      ->
        startupFocus: true,
        toolbar: [
          ['ajaxsave']
          ['Bold', 'Italic', 'Underline', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink' ]
          ['Cut','Copy','Paste','PasteText']
          ['Undo','Redo','-','RemoveFormat']
          ['TextColor','BGColor']
          ['Maximize', 'Image']]
