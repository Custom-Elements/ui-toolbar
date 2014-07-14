#ui-toolbar-picker
A tool that lets you choose from multiple items. This is data bound to
a set of items in order to expose an actual data object value.

Using this works best with two templates:

* `<selected><template>...`: use this to show the current selected value
* `<template repeat='{{...}}'><ui-toolbar-picker-item>...`: use this to
  generate a list of optional values

When `value` is set, the `<selected><template>` is bound, rendering.

    Polymer 'ui-toolbar-picker',

##Events
###change
Fired when a new value is selected.

##Attributes and Change Handlers
###value
This is the data bound current value, which will be the object bound used
to generate each `ui-toolbar-picker-item`.

      valueChanged: ->
        @fire 'change', @value
        @$.button.classList.add 'flip'

##Methods

      open: ->
        @$.box.classList.add 'open'
        @$.button.classList.add 'open'
        @$.dropdown.classList.add 'open'

      close: ->
        @$.dropdown.classList.remove 'open'
        @$.box.classList.remove 'open'
        @$.button.classList.remove 'open'
        @$.button.classList.remove 'flip'
        selectedTemplate = @querySelector 'selected template'
        if selectedTemplate
          selectedTemplate.setAttribute 'bind', '{{value}}'
          selectedTemplate.model = value: @value

##Event Handlers
Mouse and action handling is via PointerEvents. These are used to trigger
the animation styles opening the picker dropdown. This stays open until
a selection is made like a drop down, less like a pulldown menu.

      pointerdown: ->
        @$.button.classList.add 'pressed'
        @open()
      pointerup: ->
        @$.button.classList.remove 'pressed'

Clicking picks a current value, but there may be no change in which case
the drop down needs to close.

      dropdownclick: (evt) ->
        if @value is evt.srcElement?.templateInstance?.model
          @close()
        @value = evt.srcElement?.templateInstance?.model
      buttonflipped: (evt) ->
        if @$.button.classList.contains 'flip'
          @close()

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
