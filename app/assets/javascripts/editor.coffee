class @Editor
  @options
  @editor
  constructor: (options = {}) ->
    @editor = new MediumEditor('.editable', {
      placeholder: false
    });

    $('.editable').each ->
      data = $(this).data()
      if data['paragraph'] != false then $(this).html(data['value']) else $(this).text(data['value'])

  save: ->
    $('.editable').each ->
      data = $(this).data()
      name = $(this).data('name')
      if data['paragraph'] != false then value = $(this).html() else value = $(this).text()
      $("input[name='#{name}']").val(value) if name
      $(this).closest('form').submit()
