require 'watir-webdriver'
require 'rukuli'

browser = Watir::Browser.start 'www.google.com'
browser.text_field(:name => 'q').set ''
puts browser.title

screen = Rukuli::Screen.new
screen.type 'yellow'
browser.screenshot.save 'google.png'
browser.close
