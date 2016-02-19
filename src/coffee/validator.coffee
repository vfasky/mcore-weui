###*
 * # 显示表单验证错误信息
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Component} = require 'mcore'

class Validator extends Component

    getTarget: -> @errData.$el.data('proxyEl') or @errData.$el

    showError: (@errData)->
        $el = @getTarget().off('focus.weui_validator').focus()
        $parent = $el.parent()
        if $parent.is('.weui_cell_bd')
            $root = $parent.parent().addClass 'weui_cell_warn'
            $ft = $root.find '.weui_cell_ft'
            if $ft.length == 0
                $ft = $ '<div class="weui_cell_ft"><i class="weui_icon_warn"></i></div>'
                $ft.appendTo $root

            #TODO 点击时，添加弹窗提示
            $ft.find('.weui_icon_warn').attr 'title', @errData.err
               .off('click.weui_validator')
               .on 'click.weui_validator', =>
                   false

        else
            $el.addClass 'weui_cell_warn'
            $el.attr 'title', @errData.err


        $el.on 'focus.weui_validator', => @hideError()
           .off('change.weui_validator').on 'change.weui_validator', => @hideError()

    hideError: ->
        $el = @getTarget()
        $parent = $el.parent()
        if $parent.is('.weui_cell_bd')
            $parent.parent().removeClass 'weui_cell_warn'
        else
            $el.removeClass 'weui_cell_warn'
            $el.attr 'title', ''



module.exports = Validator
