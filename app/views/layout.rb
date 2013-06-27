class App
  module Views
    class Layout < Mustache
    	include ViewHelpers
    		
      def page_title 
        @page_title
      end
    end
  end
end