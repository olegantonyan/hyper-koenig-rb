center <<-EOS
  \e[1mHyperloop\e[0m
    http://ruby-hyperloop.io

  THE MISSING RUBY FRONT-END LIBRARY

  Oleg Antonyan
  @olegantonyan

  koenig.rb
  2017
EOS

code <<-EOS
# screw jsx 1
module Components
  module Lib
    class Navtabs < React::Component::Base
      param :tabs, type: [Hash]

      before_mount do
      end

      after_mount do
      end

      before_update do
      end

      before_unmount do
      end

      def render
        ul(class: 'nav nav-tabs') do
          params.tabs.each do |tab|
            li(role: 'presentation', onClick: tab[:onclick], class: tab[:active] ? 'active' : '') do
              a { tab[:title] }
            end
          end
        end
      end
    end
  end
end
EOS

code <<-EOS
# screw jsx 2
module Components
  module Playlists
    class Editor < BaseComponent
      param :playlist

      def render
        puts params.playlist
        div class: 'row' do
          div class: 'col-sm-9' do
            List()
          end
          div class: 'col-sm-3' do
            'form'
          end
        end
      end
    end
  end
end

# in haml view
= react_component 'Playlists::Editor', playlist: playlist.to_json
EOS

block <<-EOS
With Rails:

gem 'hyper-rails'

bundle install
rails g hyperloop:install
bundle update
EOS

block <<-EOS
Shut up and take my money!

 * Ruby instead of JavaScript and JSX (hate curly braces)
 * Integrates with Rails (Sprockets), or can be used standalone (Webpack)
EOS

block <<-EOS
Not so fast

 * Early beta
 * Moar features!!1111 (while staying in buggy beta)
 * Sometimes Rails' autoloader gets confused with frontend rb files
 * Personal: don't like the idea when front and back so mush coupled together
EOS
