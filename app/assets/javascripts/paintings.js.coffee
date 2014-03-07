# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  if($.browser.msie && !$.support.xhrFileUpload)# works fine with jquery 1.8.3, in jquery 1.10 it does not work
    force_iframe = true 
    data_type = 'iframe'
  else
    force_iframe = false
    data_type = 'script'
  
  post_type = 'POST'
  $('#new_painting').fileupload
    dataType: data_type
    forceIframeTransport: force_iframe
    add: (e, data) ->
      data.context = $("<p/>").text("Uploading...").appendTo(document.body)
      data.submit()
    done: (e, data) ->
      data.context.text "Upload finished."
    progressall: (e, data) ->
      progress = parseInt(data.loaded / data.total * 100, 10)
      $("#progress .bar").css "width", progress + "%"  
  return
