class @Editor
  @options
  @editor
  constructor: (options = {}) ->
    @editor = new MediumEditor('.editable');

  save: ->
    $('.editable').each ->
      data = $(this).data()
      value = $(this).html()
      if data['paragraph'] != false then value = $(this).html() else value = $(this).text()
      $("input[name='#{data['target']}']").val(value) if data['target']
      $(this).parent('form').submit()