class MemomemosController < ApplicationController
  before_action :find_memomemo, only: [:show, :edit, :update, :destroy]
  
  def index
    @memomemos = Memomemo.all
  end
  
  def show
    @memomemo = Memomemo.find(params[:id])
  end
  
  def new
    @memomemo = Memomemo.new
  end
  
  def create
    @memomemo = Memomemo.new(memomemo_params)

    if @memomemo.save
      flash[:success] = 'メモの保存に成功しました'
      redirect_to @memomemo
    else
      flash.now[:danger] = 'メモの保存に失敗しました'
      render :new
    end
  end
  
  def edit
    @memomemo = Memomemo.find(params[:id])
  end
  
  def update
    @memomemo = Memomemo.find(params[:id])
    
    if @memomemo.update(memomemo_params)
      flash[:success] = 'メモを更新しました'
      redirect_to @memomemo
    else
      flash.now[:danger] = 'メモの更新に失敗しました'
      render :edit
    end
  end
  
  def destroy
    @memomemo = Memomemo.find(params[:id])
    @memomemo.destroy       

    flash[:success] = 'メモを削除しました'
    redirect_to root_url   
  end
  
  private

  # Strong Parameter
  def memomemo_params
    params.require(:memomemo).permit(:title, :content)
  end
  
  def find_memomemo
    @memomemo = Memomemo.find(params[:id])
  end
  
end
