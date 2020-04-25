class PagesController < ApplicationController
  def home
    @blog_posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end
