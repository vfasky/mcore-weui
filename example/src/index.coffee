###*
 * mcore-weui demo 
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{App} = require 'mcoreapp'
$ = require 'jquery'
weui = require 'mcore-weui'

app = new App $('body')

app.route '/', require './home'
   .route '*', require './home'

app.run()
