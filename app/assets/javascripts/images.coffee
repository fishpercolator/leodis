# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
window.tags = new Bloodhound {
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('tags'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  local: [
    { tags: 'the headrow' },
    { tags: 'trinity' },
    { tags: 'roundhay park' }
  ]
}

window.tags.initialize()
