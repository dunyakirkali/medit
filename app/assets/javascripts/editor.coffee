class @Editor
  @options
  @editor
  constructor: (options = {}) ->
    @editor = new MediumEditor('.editable');

  save: ->
    $('.editable').each ->
      data = $(this).data()
      value = $(this).html()
      target = $(this).attr('for')
      if data['paragraph'] != false then value = $(this).html() else value = $(this).text()
      $("##{target}").val(value) if target
      $(this).closest('form').submit()