class window.RowView
  constructor: (el)->
    @el = $(el)
    @registerEvents()

  registerEvents: ->
    @el.find('.btn').on 'click',  @handleClick

  handleClick: (e)->
    console?.log "got here", e

class window.RowViewWithBinding extends window.RowView
  registerEvents: ->
    @el.find('.btn').on 'click', => @handleClick(arguments...) # this anonymous function acts as an arguments shuttle for the callback handler

  handleClick: ({pageX, pageY})->
    @el.find('p:last').before("<p>clicked X = #{pageX}, Y = #{pageY}</p>")

$ ->
  # Example 1: plain jQuery
  playMessage = (e, message)->
    target = $(e.currentTarget).parents('.span4')
    target.find('p:last').before(message)

  $('#example_1 .btn').on 'click', (e)->
    e.preventDefault()
    message = "<p>clicked X = #{e.pageX}, Y = #{e.pageY}</p>"
    playMessage(e, message)

  # Example 2: the basic view class
  example2 = new window.RowView($('#example_2'))

  # Example 3: the row view with callback bindings
  example3 = new window.RowViewWithBinding($('#example_3'))
