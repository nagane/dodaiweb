# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# herokuでボタンがつかない現象の解決策のためやったけど意味なかったから一旦コメントアウト
#Rails.application.config.assets.paths << Rails.root.join("public", "original_assets", "images")
#Rails.application.config.assets.paths << Rails.root.join("public", "original_assets", "stylesheets")
#Rails.application.config.assets.paths << Rails.root.join("public", "original_assets", "javascripts")
