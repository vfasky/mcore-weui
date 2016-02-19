###*
 * 单选列表
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'

class CellsRadio extends View

    run: ->
        @render require('../tpl/cellsRadio.html'),
            list: [
                {
                    title: 'test 0',
                    value: 0
                }
                {
                    title: 'test 1',
                    value: 1
                }
            ]

    changeValue: (event, el, value)->
        console.log value


module.exports = CellsRadio
module.exports.viewName = 'cellsRadio'
