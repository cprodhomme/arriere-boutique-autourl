module Arriere
  module Boutique
    module Autourl
      class Engine < ::Rails::Engine
        config.generators do |g|
          g.test_framework :rspec
        end
      end
    end
  end
end
