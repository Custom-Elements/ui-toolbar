#ui-toolbar-picker-item
An individual item to pick from a `ui-toolbar-picker`. This works best
when data bound, so that a click on it will raise up with template bound
data.

    Polymer 'ui-toolbar-picker-item',

##Events

##Attributes and Change Handlers

##Methods

##Event Handlers
Clicking selects the data bound value.

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
