###*
 * # mcore weui
 * @author vfasky <vfasky@gmail.com>
###

'use strict'

#加载样式
require '../style/weui.less'

mcore = require 'mcore'

#加载表单验证扩展
require('../../node_modules/mcoreapp/ext/binder/validator') mcore

module.exports =
    Cells: require './cells'
    CellsRadio: require './cellsRadio'
    CellsCheckbox: require './cellsCheckbox'
    CellsSwitch: require './cellsSwitch'
    Validator: require './validator'
    Toast: require './toast'
