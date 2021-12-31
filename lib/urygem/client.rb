require "json"
require "net/http"

module Urygem
  class Client
    def initialize(base_url)
      @base_url = base_url
    end

    def get(path)
      res = Net::HTTP.get(URI("#{base_url}#{path}"))
      return parse_json(res)
    end

    private

    attr_reader :base_url

    def parse_json(content)
      JSON.parse(content, symbolize_names: true)
    rescue JSON::ParserError
      nil
    end
  end
end
