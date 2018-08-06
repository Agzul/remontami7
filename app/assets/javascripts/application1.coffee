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

@calculator = ->
  q = 0
  $('#pol1').click ->
    if q % 2 == 0
      $('#hidden_form_pol1').show()
    else
      $('#hidden_form_pol1').hide()
      $('.calculator .calculator_second_step #hidden_form_pol1 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    q += 1
  w = 0
  $('#potolok1').click ->
    if w % 2 == 0
      $('#hidden_form_potolok1').show()
    else
      $('#hidden_form_potolok1').hide()
      if $('#hidden_form_potolok1_2').css('display') != 'none'
        $('#hidden_form_potolok1_2').hide()
        e += 1
      $('.calculator .calculator_second_step #hidden_form_potolok1 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    w += 1
  e = 0
  $('#potolok1_2').click ->
    if e % 2 == 0
      $('#hidden_form_potolok1_2').show()
    else
      $('#hidden_form_potolok1_2').hide()
      $('.calculator .calculator_second_step #hidden_form_potolok1_2 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    e += 1
  r = 0
  $('#potolok2').click ->
    if r % 2 == 0
      $('#hidden_form_potolok2').show()
    else
      $('#hidden_form_potolok2').hide()
      $('.calculator .calculator_second_step #hidden_form_potolok2 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    r += 1
  t = 0
  $('#steny2').click ->
    if t % 2 == 0
      $('#hidden_form_steny2').show()
    else
      $('#hidden_form_steny2').hide()
      $('.calculator .calculator_second_step #hidden_form_steny2 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    t += 1
  y = 0
  $('#steny4').click ->
    if y % 2 == 0
      $('#hidden_form_steny4').show()
    else
      $('#hidden_form_steny4').hide()
      $('.calculator .calculator_second_step #hidden_form_steny4 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    y += 1
  u = 0
  $('#steny5').click ->
    if u % 2 == 0
      $('#hidden_form_steny5').show()
    else
      $('#hidden_form_steny5').hide()
      $('#hidden_form_steny5_1').hide()
      $('.calculator .calculator_second_step #hidden_form_steny5 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    u += 1
  $('#steny5_1').click ->
    $('#hidden_form_steny5_1').show()
  $('#steny5_2').click ->
    $('#hidden_form_steny5_1').hide()
    $('.calculator .calculator_second_step #hidden_form_steny5_1 input').each ->
      elem = $(this)[0]
      elem.checked = false
      return
  o = 0
  $('#steny6').click ->
    if o % 2 == 0
      $('#hidden_form_steny6').show()
    else
      $('#hidden_form_steny6').hide()
      if $('#hidden_form_steny6_1').css('display') != 'none'
        $('#hidden_form_steny6_1').hide()
        a += 1
      $('.calculator .calculator_second_step #hidden_form_steny6 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    o += 1
  a = 0
  $('#steny6_1').click ->
    if a % 2 == 0
      $('#hidden_form_steny6_1').show()
    else
      $('#hidden_form_steny6_1').hide()
      $('.calculator .calculator_second_step #hidden_form_steny6_1 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    a += 1
  p = 0
  $('#steny8').click ->
    if p % 2 == 0
      $('#hidden_form_steny8').show()
    else
      $('#hidden_form_steny8').hide()
      $('.calculator .calculator_second_step #hidden_form_steny8 input').each ->
        elem = $(this)[0]
        elem.checked = false
        return
    p += 1
  $(document).click ->
    width = $('#width')[0].value
    length = $('#length')[0].value
    height = $('#height')[0].value
    distance = $('#distance')[0].value
    if width.match(/[0-9],/)
      width = width.replace(/,/, '.')
    if length.match(/[0-9],/)
      length = length.replace(/,/, '.')
    if height.match(/[0-9],/)
      height = height.replace(/,/, '.')
    if distance.match(/[0-9],/)
      distance = distance.replace(/,/, '.')
    if distance > 15
      $('#over_distance')[0].innerHTML = 'Это слишком далеко. Мы работаем в пределах 15км МКАД, желательно перезвоните.'
    else
      $('#over_distance')[0].innerHTML = ''
    if isNaN(width) or isNaN(length) or isNaN(height) or isNaN(distance)
      $('#unpossible_entity')[0].innerHTML = 'Некорректный ввод'
      $('#price')[0].innerHTML = '0'
      return
    else
      $('#unpossible_entity')[0].innerHTML = ''
    sum_area = 0
    $('.calculator .calculator_second_step #section_area input').each ->
      elem = $(this)[0]
      if elem.checked == true
        return sum_area += elem.value * 1
      return
    sum_perimeter = 0
    $('.calculator .calculator_second_step #section_perimeter input').each ->
      elem = $(this)[0]
      if elem.checked == true
        return sum_perimeter += elem.value * 1
      return
    area = width * height
    perimeter = width * 2 + length * 2
    area_price = sum_area * area
    perimeter_price = sum_perimeter * height * perimeter
    price = area_price + perimeter_price
    $('#price')[0].innerHTML = price.toFixed(2)
@calculator_clear_checked = ->
  $('.calculator input').each ->
    elem = $(this)[0]
    if elem.checked == true
      elem.checked = false
    return
  return

@table_calculator = ->
  # Добавление поля счетчика
  $('.mdl-data-table').find("tr:last").after('
    <td></td>
    <td></td>
    <td>Стоимость за 1 ед.: <div class="sum">0</div> руб</td>
  ')

  # Подсчет
  form = $('.works_table')
  form.each ->
    sum = 0
    this.addEventListener 'change', (e) ->
      # Выбранная стоимость работы
      n = e.target.parentNode.parentNode.parentNode.childNodes[6].innerHTML
      # Исключение
      if isNaN(n*1)
        n = 0
      # Подсчет
      if e.target.checked == true
        sum +=n*1
      else
        sum -=n*1
      # Запись на страницу
      e.target.parentNode.parentNode.parentNode.parentNode.lastElementChild.children[0].innerHTML = sum
      return

all_ready = ->
  window.dropdown()
  window.calculator()
  window.calculator_clear_checked()
  window.table_calculator()
$(document).on 'turbolinks:load', all_ready
