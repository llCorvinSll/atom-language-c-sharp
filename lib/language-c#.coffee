LanguageCSharpView = require './language-c#-view'

module.exports =
  languageCSharpView: null

  activate: (state) ->
    @languageCSharpView = new LanguageC#View(state.languageC#ViewState)

  deactivate: ->
    @languageCSharpView.destroy()

  serialize: ->
    languageCSharpViewState: @languageCSharpView.serialize()
