# frozen_string_literal: true

require_relative "full_name_gem/version"
require "full_name_gem/version"
require "full_name_gem/railtie" if defined?(Rails)

module FullNameGem
  class Error < StandardError; end
  module FullName
    def full_name
      "#{first_name} #{last_name}"
    end
    
    def name_initials
      [first_name, last_name].map { |n| "#{n[0]}." }.join(' ')
    end
  end
end
