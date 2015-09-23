class TagsController < ApplicationController
  def index
    @tags = Image.tag_counts_on(:tags).reject {|t| t.taggings_count < 2 }.sort_by(&:name)
  end
  def tag
    @tag = params[:id]
    @images = Image.tagged_with(@tag)
  end
end
