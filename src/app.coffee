class window.RowView
  constructor: (el)->
    @el = $(el)
    @el.find('.btn').on 'click',  @handleClick

  handleClick: (e)->
    console.log "got here", e

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
