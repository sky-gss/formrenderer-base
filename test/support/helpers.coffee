# Create `window.describe` etc. for our BDD-like tests.
mocha.setup ui: 'bdd'

# Create another global variable for simpler syntax.
window.expect = chai.expect

FormRenderer.prototype.defaults.screendoorBase = 'http://localhost'

window.fillIn = (label, value) ->
  id = $("label:contains(\"#{label}\")").attr('for')
  $("##{id}").val(value).trigger('input')

window.select = (label, value) ->
  id = $("label:contains(\"#{label}\")").attr('for')
  $("##{id}").val(value).trigger('change')

