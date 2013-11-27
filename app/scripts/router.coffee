define ['app', 'views/navbar', 'views/landing', 'views/socialLink', 'views/info', 'views/buynow', 'views/buytoday', 'views/completed'], (app, NavbarView, LandingView, SocialLinkView, InfoView, BuyNowView, BuyTodayView, CompletedView) ->
	"use strict"

	# Defining the application router, you can attach sub routers here.
	Router = Backbone.Router.extend
		routes:
			'': 'index'
			'info': 'info'
			'buytoday': 'buytoday'
			'buynow': 'buynow'
			'checkout': 'checkout'
			'completed':'completed'


		initialize: ->
      # set the application layout and attach views that are always present
			app.useLayout 'layout'
			app.layout.setView('#navbar', new NavbarView()).render()
			app.layout.setView('#social-links', new SocialLinkView()).render()

		index: ->
			app.layout.setView('#content',  new LandingView()).render()

		info: ->
			app.layout.setView('#content',  new InfoView()).render()

		buynow: ->
			app.layout.setView('#content', new BuyNowView()).render()

		buytoday: ->
			app.layout.setView('#content', new BuyTodayView()).render()

		completed: ->
			app.layout.setView('#content', new CompletedView()).render()




