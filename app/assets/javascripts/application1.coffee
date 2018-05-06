@dropdown = () ->
  $("[data-toggle='dropdown']").click ->
    if this.dataset.toggle=='dropdown'
      this.dataset.toggle='dropped'

      dropdown_content=$(this).parent().find(".dropdown-content")
      dropdown_content.attr('data-dropdown_content', "visible")

      arrow = $(this).find(".arrow")
      arrow.attr('data-arrow', "top")
    else
      this.dataset.toggle='dropdown'

      dropdown_content=$(this).parent().find(".dropdown-content")
      dropdown_content.attr('data-dropdown_content', "hidden")

      arrow = $(this).find(".arrow")
      arrow.attr('data-arrow', "bottom")

all_ready = ->
  window.dropdown()
$(document).on 'turbolinks:load', all_ready
