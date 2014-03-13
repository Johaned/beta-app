# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#new_painting').fileupload
    dataType: 'script'
    forceIframeTransport: false
    autoUpload: false
    replaceFileInput: false
    add: (e, data) ->
      data.context = $("#new_painting .save").click(->
        data.context = $("<p/>").text("Uploading...").replaceAll($(this))
        data.submit()
        return
      )
      return           
    done: (e, data) ->
      data.context.text "Upload finished."
    progressall: (e, data) ->
      progress = parseInt(data.loaded / data.total * 100, 10)
      $("#progress .bar").css "width", progress + "%"  
  return
