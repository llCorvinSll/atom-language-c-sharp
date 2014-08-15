{View} = require 'atom'

module.exports =
class LanguageCSharpView extends View
  @content: ->
    @div class: 'language-c# overlay from-top', =>
      @div "The LanguageC# package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "language-c#:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguageC#View was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
