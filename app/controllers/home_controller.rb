class HomeController < ApplicationController

  def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to root_url, notice: '完了済みタスクを削除しました。'
  end

  def trash_em_all
    @trash_em_all = List.all.destroy_all
    redirect_to root_url, notice: '全てのタスクを削除しました。'
  end
end
