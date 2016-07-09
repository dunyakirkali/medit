class @Editor
  @options
  @editor
  constructor: (options = {}) ->
    @editor = new MediumEditor('.editable', {
      placeholder: false
    });

    $('.editable').each ->
      value = $(this).data('value')
      $(this).text(value)

  save: ->
    $('.editable').each ->
      data = $(this).data()
      value = $(this).html()
      name = $(this).data('name')
      if data['paragraph'] != false then value = $(this).html() else value = $(this).text()
      $("input[name='#{name}']").val(value) if name
      $(this).closest('form').submit()
