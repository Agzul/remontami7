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

@add_label_for_image_form = ->
  if $(".uploadBtn")
    # Добавление названия существующей картинки
    if $(".image_name")
      $(".image_name").each ->
        name = $(this)[0].value
        $(this).parent().find(".uploadFile")[0].value = name
    # Добавление названия картинки
    $(".uploadBtn").change ->
      uploadFile = $(this).parent().parent().find(".uploadFile")[0]
      uploadFile.value= @files[0].name
  # Добавление названия картинки после рендера формы
  $(document).on "fields_added.nested_form_fields", (event) ->
    if $(event.target).find(".uploadBtn")
      uploadBtn = $(event.target).find(".uploadBtn")
      uploadBtn.change ->
        uploadFile = $(this).parent().parent().find(".uploadFile")[0]
        uploadFile.value= @files[0].name

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
