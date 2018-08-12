@global_variables = ->
  current_page        = document.body.attributes.class.value.split(/ /)
  @current_controller = current_page[0]
  @current_action     = current_page[1]
  return

# Обновляет DOM элементы
@update_dom = ->
  $(".update-dom").click ->
    setTimeout ->
      componentHandler.upgradeDom()
    , 50
    return

# Добавление названия картинки в форму
@add_label_for_image_form = ->
  if document.getElementById('uploadBtn')
    document.getElementById('uploadBtn').onchange = ->
      document.getElementById('uploadFile').value = @files[0].name
      return

# Выпадающие элементы из бокового меню
@dropdown = () ->
  $("[data-toggle='dropdown']").click ->
    if this.dataset.toggle=='dropdown'
      this.dataset.toggle='dropped'

      dropdown_content=$(this).parent().find(".dropdown-content")
      dropdown_content.attr('data-dropdown_content', "visible")

      arrow = $(this).find(".arrow")
      arrow.attr('data-arrow', "top")
      return
    else
      this.dataset.toggle='dropdown'

      dropdown_content=$(this).parent().find(".dropdown-content")
      dropdown_content.attr('data-dropdown_content', "hidden")

      arrow = $(this).find(".arrow")
      arrow.attr('data-arrow', "bottom")
      return

$(document).on 'turbolinks:load', global_variables
$(document).on 'turbolinks:load', dropdown
$(document).on 'turbolinks:load', update_dom
$(document).on 'turbolinks:load', add_label_for_image_form
