module ActionView
  module Pathfinder
    module Template

      # adds an html comment at the beginning and end of each template,
      # when rendering, that contains the path to that view file.
      #
      def render(view, locals, buffer=nil, &block)
        path = @virtual_path.to_s
        @source = [html_comment(path), source, html_comment("end of #{path}")].join('')
        super(view, locals, buffer, &block)
      end

      private

      def html_comment(text)
        if handler_type == 'haml'
          ["/", text, "\n\n"].join('')
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
