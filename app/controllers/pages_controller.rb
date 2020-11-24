class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :parceiros, :anunciar, :contatos, :cachine, :bruno_bou]

  def home
  end

  def anunciar
  end

  def parceiros
  end

  def bruno_bou
  end

  def cachine
  end

  def contatos
  end
end
