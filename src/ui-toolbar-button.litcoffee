#ui-toolbar-button
A simple tool button that you press.

    Polymer 'ui-toolbar-button',

##Events
###click
Good old click, handle this to do the deed.

##Attributes and Change Handlers

##Methods

##Event Handlers
Mouse and action handling is via PointerEvents. These are used to trigger
the animation styles.

      pointerdown: ->
        @$.button.classList.add 'pressed'
      pointerup: ->
        @$.button.classList.remove 'pressed'

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
