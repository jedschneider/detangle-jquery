window.detangle ?= {}

class detangle.RowView
  constructor: (el)->
    @el = $(el)
    @el.find('.btn').on 'click',  @handleClick

  handleClick: (e)->
    console.log "got here", e

$ ->
  example1 = new detangle.RowView($('#example_1'))

