#ui-toolbar-toggle
A simple tool button that flips front to back.

    Polymer 'ui-toolbar-toggle',

##Events
###click
Good old click, handle this to do the deed.
###change
Fired when the active state changes.

##Attributes and Change Handlers
###active
Toggle state for the button, `true` is on. If there is a backface, the
button will flip.

      activeChanged: ->
        @fire 'change', @active

##Methods

##Event Handlers
Mouse and action handling is via PointerEvents. These are used to trigger
the animation styles.

      pointerdown: ->
        @$.button.classList.add 'pressed'
      pointerup: ->
        @$.button.classList.remove 'pressed'
      click: (evt) ->
        @active = not @active

##Polymer Lifecycle

      created: ->
        @active = true

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
