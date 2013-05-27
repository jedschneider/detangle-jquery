$ ->
  # Example 1: plain jQuery
  playMessage = (e, message)->
    target = $(e.currentTarget).parents('.span4')
    target.find('p:last').before(message)

  $('#example_1').on 'click', (e)->
    e.preventDefault()
    message = "<p>clicked X = #{e.pageX}, Y = #{e.pageY}</p>"
    playMessage(e, message)
