# lib/full_name_gem/railtie.rb
require "rails/railtie"

module FullNameGem
  class Railtie < ::Rails::Railtie
    initializer "full_name_gem.model_addition" do
      ActiveSupport.on_load(:active_record) do
        include FullNameGem
      end
    end
  end
end
