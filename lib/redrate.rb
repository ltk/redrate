# frozen_string_literal: true
require 'redrate/config'
require 'redrate/ring'
require 'redrate/queue'
require 'redrate/mixin'
require 'redrate/version'

module Redrate
  def self.configure(options)
    @config = Config.new(options)
  end

  def self.config
    @config ||= Config.new
  end
end
