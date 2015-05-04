class StaticPagesController < ApplicationController
  before_action only: [:home ]

  def home
      @dodesu = Dodesu.order(created_at: :desc).limit(10)
  end

end
