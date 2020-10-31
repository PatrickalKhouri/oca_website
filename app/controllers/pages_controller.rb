class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def anunciar
  end

  def parceiros
  end

  def contatos
  end
end
