###
 Copyright 2013 ajf http://github.com/ajf8

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
###
MCM.Views.NodeApplicationItem = Backbone.Marionette.ItemView.extend({
  # the node_template attribute of the node model chooses the template
  template: (ctx) ->
    if ctx.node_template
      return HandlebarsTemplates[ctx.node_template](ctx)
    else
      return ""
  
  templateHelpers: ->
    # provide the node ID so it can be used in a URL
    if @options.nodemodel
      return {
        nodeid : @options.nodemodel.attributes.id
      }
    else
      return { }
})
