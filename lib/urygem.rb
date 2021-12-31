# frozen_string_literal: true

# require "json"
# require "net/http"

require_relative "urygem/version"
require_relative "urygem/client"
require_relative "urygem/pokemon"

module Urygem
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end

  def self.pokemons
    Pokemon.new.list
  end

  def self.list_pokemons_limits(limit)
    Pokemon.new.list_with_limits(limit)
  end

  def self.pokemon(id_or_name)
    Pokemon.new.find(id_or_name)
  end

  def self.encounter_method(id_or_name)
    Pokemon.new.encounter_method(id_or_name)
  end
end
