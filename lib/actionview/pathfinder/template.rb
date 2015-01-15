module ActionView
  module Pathfinder
    class Template < SimpleDelegator

      def initialize(template)
        super
        @template = template
      end

      # adds an html comment at the beginning and end of each template,
      # when rendering, that contains the path to that view file.
      #
      def render(view, locals, buffer=nil, &block)
        @template.instance_variable_set(:'@source', wrapped_source)

        super(view, locals, buffer, &block)
      end

      private

      def wrapped_source
        path = virtual_path.to_s

        [
          html_comment(path),
          source,
          html_comment("end of #{path}")
        ].join('')
      end

      def html_comment(text)
        return '' unless formats.include?(:html)

        if handler_type == 'haml'
          ["/ ", text, "\n\n"].join('')
        else
          ["\n<!-- ", text, " -->\n"].join('')
        end
      end

      def handler_type
        @handler_type ||= handler.to_s.
          split('::').first.downcase
      end
    end
  end
end
