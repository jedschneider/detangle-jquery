$ ->
  playMessage = (e, message)->
    target = $(e.currentTarget).parents('.span4')
    target.find('p:last').before(message)

  $('.btn').on 'click', (e)->
    e.preventDefault()
    message = "<p>clicked X = #{e.pageX}, Y = #{e.pageY}</p>"
    playMessage(e, message)



