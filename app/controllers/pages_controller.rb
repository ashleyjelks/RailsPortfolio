class PagesController < ApplicationController
  def home
    @aRubyVariableForAllTheBlogs = Blog.all
    @aRubyVariableForAllTheSkills = Skill.all
  end

  def about
  end

  def contact
  end
end
