###*
 * 复选列表
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'

class CellsSwitch extends View

    run: ->
        @render require('../tpl/cellsSwitch.html'),
            list: [
                {
                    title: 'test 0',
                    value: 0
                }
                {
                    title: 'test 1',
                    value: 1
                }
                {
                    title: 'test 2',
                    value: 2
                }
            ],
            value: [1, 2]

    changeValue: (event, el, value)->
        console.log value


module.exports = CellsSwitch
module.exports.viewName = 'cellsSwitch'
