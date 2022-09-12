# frozen_string_literal: true
module Redrate
  class Config
    attr_accessor :redis

    def initialize(options = {})
      @redis ||= options[:redis] || Redis.current
    end
  end
end
