# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
 	new FastClick(document.body)

$ ->
	c = 0
	n = cardArray.length
	$("#nextCard, #previousCard").click (e) ->
	  e.preventDefault()
	  c = (if @id is "nextCard" then ++c else --c)
	  c = (if c < 0 then n - 1 else c % n)
	  $("#text").text cardArray[c]

# paintIt = (element, backgroundColor, textColor) ->
#   element.style.backgroundColor = backgroundColor
#   if textColor?
#     element.style.color = textColor
 
# $ ->
#   $("a[data-background-color]").click ->
#     backgroundColor = $(this).data("background-color")
#     textColor = $(this).data("text-color")
#     paintIt(this, backgroundColor, textColor)