class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  	@works = Work.all
  end

  def about
  end

  def contact
  end
end
