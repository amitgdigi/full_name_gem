# frozen_string_literal: true

require_relative "full_name_gem/version"

module FullNameGem
  class Error < StandardError; end
  def f_name
    "#{first_name} #{last_name}"
  end
end
