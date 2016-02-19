###*
 * 表单验证
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'

weui = require 'mcore-weui'

class Validator extends View
    init: ->
        @validator = new weui.Validator @.$el[0]
    run: ->
        @render require('../tpl/validator.html')


    send: (err, data)->
        return @validator.showError err if err
        console.log data


module.exports = Validator
module.exports.viewName = 'validator'
