###*
 * mcore-weui demo
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{App} = require 'mcoreapp'
$ = require 'jquery'
weui = require 'mcore-weui'

app = new App $('body')

app.route '/button', require './button'
   .route '/cells-radio', require './cellsRadio'
   .route '/cells-checkbox', require './cellsCheckbox'
   .route '/cells-switch', require './cellsSwitch'
   .route '/validator', require './validator'
   .route '/toast', require './toast'
   .route '*', require './home'

app.run()
