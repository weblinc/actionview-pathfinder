require "actionview/pathfinder/version"
require "actionview/pathfinder/template"

module ActionView
  module Pathfinder
    ActionView::Template.send(:prepend, Pathfinder::Template)
  end
end
