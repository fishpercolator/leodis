class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action do
    gon.tags = Image.tag_counts.sort_by(&:taggings_count).reverse.map {|s| {'tag' => s.name, 'count' => s.taggings_count } }
  end
end
