require "actionview/pathfinder/version"
require "actionview/pathfinder/template"
require "actionview/pathfinder/partial_renderer"

module ActionView
  module Pathfinder
    ActionView::PartialRenderer.send(:prepend, Pathfinder::PartialRenderer)
  end
end
