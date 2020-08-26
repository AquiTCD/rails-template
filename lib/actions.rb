# frozen_string_literal: true

module Lib
  module Actions
    def source_paths
      [File.expand_path("../templates", File.dirname(__FILE__))]
    end

    def download(source, destination)
      run %(curl -sL -o "#{destination}" "#{source}")
    end

    def uncomment(destination, comment)
      gsub_file destination, /#\s*(#{Regexp.escape(comment)})/, '\1'
    end
  end
end
