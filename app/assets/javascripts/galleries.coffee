@set_cover = ->

  $(".gallery_thumb").on "click", ->
    galleryImageThumbToCoverUrl = $(this).attr("data-gallery-image-thumb-to-cover-url")
    thumbUrl = $(this).attr('src')

    galleryImageCoverToThumbUrl = $(".gallery_cover").attr("data-gallery-image-cover-to-thumb-url")
    coverUrl = $(".gallery_cover").attr('src')

    $(this).attr('src', galleryImageCoverToThumbUrl)
    $(this).attr("data-gallery-image-thumb-to-cover-url", coverUrl)
    $(this).hide().fadeIn()

    $(".gallery_cover").attr('src', galleryImageThumbToCoverUrl)
    $(".gallery_cover").attr("data-gallery-image-cover-to-thumb-url", thumbUrl)
    $(".gallery_cover").hide().fadeIn()

all_ready = ->
  if @current_controller == "galleries" && @current_action == "index"
    window.set_cover()
$(document).on 'turbolinks:load', all_ready
