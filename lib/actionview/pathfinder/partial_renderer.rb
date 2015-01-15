module ActionView
  module Pathfinder
    module PartialRenderer
      private

      def find_template(path, locals)
        template = Pathfinder::Template.new(super)
        template
      end
    end
  end
end
