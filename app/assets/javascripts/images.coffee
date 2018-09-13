@image_upload = ->
  file = null
  token = $('meta[name="csrf-token"]').attr('content')
  info_id = $("#info_id")[0].value

  if $(".uploadBtn") && $(".send-image") && (".delete-image")
    $(".uploadBtn").change ->
      file = @files[0]
      send_image_btn =   $(this).parent().parent().parent().find(".send-image")[0]
      $(send_image_btn).click ->
        title =           $(this).parent().find(".mdl-textfield__input")[0].value
        alt =             $(this).parent().find(".mdl-textfield__input")[1].value
        image_id =        $(this).parent().find(".image_id")[0].value
        image_status =    $(this).parent().find(".image_status")[0]
        image_url_thumb = $(this).parent().find(".image_url_thumb")[0]
        image_url_small = $(this).parent().find(".image_url_small")[0]
        image_url_med =   $(this).parent().find(".image_url_med")[0]
        if file && image_id == ""
          createImage token, title, alt, file, info_id, image_id,"", image_status, image_url_thumb, image_url_small, image_url_med
        else if file && image_id != ""
          updateImage token, title, alt, file, info_id, image_id,"", image_status, image_url_thumb, image_url_small, image_url_med
    $(".delete-image").click ->
      image_id = $(this).parent().parent().find(".image_id")[0].value
      deleteImage token, image_id

  $(document).on "fields_added.nested_form_fields", (event) ->
    if $(event.target).find(".uploadBtn") && $(event.target).find(".send-image") && $(event.target).find(".delete-image")
      uploadBtn = $(event.target).find(".uploadBtn")
      uploadBtn.change ->
        file = @files[0]
        $(event.target).find(".send-image").click ->
          title =          $(event.target).find(".mdl-textfield__input")[0].value
          alt =            $(event.target).find(".mdl-textfield__input")[1].value
          image_id =       $(event.target).find(".image_id")[0].value
          if file && image_id == ""
            createImage token, title, alt, file, info_id, image_id, event
          else if file && image_id != ""
            updateImage token, title, alt, file, info_id, image_id, event
        $(event.target).find(".delete-image").click ->
          image_id =       $(event.target).find(".image_id")[0].value
          if file && $(event.target).find(".image_id")[0].value != ""
            deleteImage token, image_id

  createImage = (token, title, alt, file, info_id, image_id, event = "", image_status = "", image_url_thumb, image_url_small, image_url_med) ->
    form = new FormData
    form.append 'image[title]',      title
    form.append 'image[alt]',        alt
    form.append 'image[info_image]', file
    form.append 'image[info_id]',    info_id
    xhr = new XMLHttpRequest
    xhr.open 'POST', '/images', true
    xhr.setRequestHeader("X-CSRF-Token", token)
    xhr.send form
    xhr.onload = ->
      created_image = JSON.parse(@responseText)
      if event != ""
        $(event.target).find(".image_url_thumb")[0].innerText = "Thumb: " + created_image.thumb
        $(event.target).find(".image_url_small")[0].innerText = "Small: " + created_image.small
        $(event.target).find(".image_url_med")[0].innerText   = "Med: "   + created_image.med

        $(event.target).find(".image_id")[0].value = created_image.image_id
        $(event.target).find(".image_status")[0].style.display = "inline-block"
        $(event.target).find(".image_status")[0].innerText = "Создано"
      else
        image_url_thumb.innerText = "Thumb: " + created_image.thumb
        image_url_small.innerText = "Small: " + created_image.small
        image_url_med.innerText =   "Med: "   + created_image.med

        image_status.style.display = "inline-block"
        image_status.innerText = "Создано"

  updateImage = (token, title, alt, file, info_id, image_id, event = "", image_status = "", image_url_thumb, image_url_small, image_url_med) ->
    form = new FormData
    form.append 'image[title]',      title
    form.append 'image[alt]',        alt
    form.append 'image[info_image]', file
    form.append 'image[info_id]',    info_id
    form.append 'image[id]',         image_id
    xhr = new XMLHttpRequest
    xhr.open 'PUT', '/images/' + image_id, true
    xhr.setRequestHeader("X-CSRF-Token", token)
    xhr.send form
    xhr.onload = ->
      updated_image = JSON.parse(@responseText)
      if event != "" && image_status == ""
        $(event.target).find(".image_url_thumb")[0].innerText = "Thumb: " + updated_image.thumb
        $(event.target).find(".image_url_small")[0].innerText = "Small: " + updated_image.small
        $(event.target).find(".image_url_med")[0].innerText   = "Med: "   + updated_image.med

        $(event.target).find(".image_status")[0].style.display = "inline-block"
        $(event.target).find(".image_status")[0].innerText =     "Обновлено"
      else
        image_url_thumb.innerText = "Thumb: " + updated_image.thumb
        image_url_small.innerText = "Small: " + updated_image.small
        image_url_med.innerText =   "Med: "   + updated_image.med

        image_status.style.display = "inline-block"
        image_status.innerText =     "Обновлено"

  deleteImage = (token, image_id) ->
    xhr = new XMLHttpRequest
    xhr.open 'DELETE', '/images/' + image_id, true
    xhr.setRequestHeader("X-CSRF-Token", token)
    xhr.send null
  return

all_ready = ->
  if @current_controller == "infos" && @current_action == "edit"
    window.image_upload()

$(document).on 'turbolinks:load', all_ready
