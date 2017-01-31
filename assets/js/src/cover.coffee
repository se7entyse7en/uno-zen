'use strict'

$ ->

  _expand = (options)->
    $('main, .cover, .links > li, html').toggleClass 'expanded'
    Uno.search.form options.form

  $('#menu-button').click ->
    $('.cover, main, #menu-button, html').toggleClass 'expanded'

  $('#avatar-link').click (event) ->
    if Uno.is 'page', 'home'
      event.preventDefault()
      return $('#menu-button').trigger 'click' unless Uno.is 'device', 'desktop'
      _expand form: 'toggle'
