define ['app', 'views/navbar', 'views/landing', 'views/socialLink', 'views/info', 'views/buynow', 'views/addtocart', 'views/completed'], (app, NavbarView, LandingView, SocialLinkView, InfoView, BuynowView, AddtocartView, CompletedView) ->
	"use strict"

	# Defining the application router, you can attach sub routers here.
	Router = Backbone.Router.extend
		routes:
			'': 'index'
			'info': 'info'
			'addtocart': 'addtocart'
			'buynow': 'buynow'
			'checkout': 'checkout'
			'completed':'completed'


		initialize: ->
      # set the application layout and attach views that are always present
			iab.start()
			app.useLayout 'layout'
			app.layout.setView('#navbar', new NavbarView()).render()
			app.layout.setView('#social-links', new SocialLinkView()).render()
			iab.stop()

		index: ->
			iab.start()
			app.layout.setView('#content',  new LandingView()).render()
			iab.stop()

		info: ->
			iab.start()
			app.layout.setView('#content',  new InfoView()).render()
			iab.stop()

		buynow: ->
			iab.start()
			app.layout.setView('#content', new BuynowView()).render()
			iab.stop()

		addtocart: ->
			iab.start()
			app.layout.setView('#content', new AddtocartView()).render()
			iab.stop()

		completed: ->
			iab.start()
			app.layout.setView('#content', new CompletedView()).render()
			iab.stop()




