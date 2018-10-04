@set_cover = ->
  $(".gallery_thumb").click ->
    # Get parameters
    galleryImageCoverToThumbUrl = $(this).closest(".mdl-grid").find(".gallery_cover").attr("data-image-cover-to-thumb-url")
    galleryImageThumbToCoverUrl = $(this).attr("data-image-thumb-to-cover-url")

    coverUrl = $(this).closest(".mdl-grid").find(".gallery_cover").attr('src')
    thumbUrl = $(this).attr('src')

    galleryCoverImageOriginal = $(this).closest(".mdl-grid").find(".gallery_cover").attr("data-image-original-url")
    galleryThumbImageOriginal = $(this).attr("data-image-original-url")

    # Change thumb data
    $(this).attr('src', galleryImageCoverToThumbUrl)
    $(this).attr("data-image-thumb-to-cover-url", coverUrl)
    $(this).attr("data-image-original-url", galleryCoverImageOriginal)

    # Change cover data
    $(this).closest(".mdl-grid").find(".gallery_cover").attr('src', galleryImageThumbToCoverUrl)
    $(this).closest(".mdl-grid").find(".gallery_cover").attr("data-image-cover-to-thumb-url", thumbUrl)
    $(this).closest(".mdl-grid").find(".gallery_cover").attr("data-image-original-url", galleryThumbImageOriginal)

    # Change link to original image
    $(this).closest(".mdl-grid").find(".cover_link").attr("href", galleryThumbImageOriginal)

@open_and_close_gallery = ->
  $(".title").click ->
    if $(this).attr('data-open') == "false"
      $(this).attr('data-open', "true")
      $(this).parents(".gallery").find(".images").css("display", "")
    else
      $(this).attr('data-open', "false")
      $(this).parents(".gallery").find(".images").css("display", "none")
all_ready = ->
  if @current_controller == "galleries" && @current_action == "index"
    window.set_cover()
    window.open_and_close_gallery()
$(document).on 'turbolinks:load', all_ready
