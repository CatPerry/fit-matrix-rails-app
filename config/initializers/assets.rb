# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( auth.js )
Rails.application.config.assets.precompile += %w( vidsearch.js )
Rails.application.config.assets.precompile += %w( ytsearch.js )
Rails.application.config.assets.precompile += %w( videos.js )
Rails.application.config.assets.precompile += %w( jquery-3.3.1.min.js )
Rails.application.config.assets.precompile += %w( iframe.js )
Rails.application.config.assets.precompile += %w( exercise.js )
Rails.application.config.assets.precompile += %w( authvideo.js )
Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( search2.js )
Rails.application.config.assets.precompile += %w( videos.js )
Rails.application.config.assets.precompile += %w( matrixmain.js )

