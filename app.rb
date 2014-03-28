# -*- coding: utf-8 -*-
require 'sinatra'
require 'sinatra/asset_pipeline'


class App < Sinatra::Base
  set :environment, :development # run the rake task to precompile assets when going production
  register Sinatra::AssetPipeline

  get '/' do
    @site_title = 'OSPA'
    @lineOne = '<span class="title">O</span>klahoma'
    @lineTwo = '<span class="title">S</span>od'
    @lineThree = '<span class="title">P</span>roducers'
    @lineFour = '<span class="title">A</span>ssociation'
    haml :index
  end

  get '/signup' do
    @site_title = 'OSPA'
    @lineOne = '<span class="title">O</span>klahoma'
    @lineTwo = '<span class="title">S</span>od'
    @lineThree = '<span class="title">P</span>roducers'
    @lineFour = '<span class="title">A</span>ssociation'
    haml :signup
  end

  get '/contact' do
    @site_title = 'OSPA'
    @lineOne = '<span class="title">O</span>klahoma'
    @lineTwo = '<span class="title">S</span>od'
    @lineThree = '<span class="title">P</span>roducers'
    @lineFour = '<span class="title">A</span>ssociation'
    haml :contact
  end

end
