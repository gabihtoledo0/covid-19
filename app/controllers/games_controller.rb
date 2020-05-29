class GamesController < ApplicationController
  before_action :authenticate_user!
end
