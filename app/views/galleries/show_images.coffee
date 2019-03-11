$(document).one "ajax:success", ".show_images", (e) ->
  if $(this).attr('data-open') == "false"
    $(this).attr('data-open', "true")
    data = $(this).next().html("<%= j render(partial: 'galleries/show_images') %>")
    $('main').animate( {scrollTop: $('main').scrollTop() + $(this).position().top + $(this).height() + 5 }, 400)

    thumbs = data.find(".thumb")
    thumbs.first().css "border", "3px solid white"

    cover  = data.find(".cover")

    last_thumb = thumbs.first()
    thumbs.click ->
      cover.children().first().attr("src", $(this).attr("data-cover"))
      cover.attr("href", $(this).attr("data-original"))
      $(this).css "border", "3px solid white"
      last_thumb.css "border", "3px solid gray"
      last_thumb = $(this)

    left_arrow_block = data.find(".left_arrow_block")
    right_arrow_block = data.find(".right_arrow_block")
    images_block = data.find(".images_block")
    max_width = images_block.width()
    x = 0
    left_arrow_block.click ->
      if x+333 > 0
        temp = -max_width+333
        images_block.transition x: temp
        x = temp
      else
        x+=333
        images_block.transition x: x
    right_arrow_block.click ->
      if x-333 <= -max_width
        images_block.transition x: 0
        x = 0
      else
        x-=333
        images_block.transition x: x
  else
    $(this).attr('data-open', "false")
    $(this).next().html("")
