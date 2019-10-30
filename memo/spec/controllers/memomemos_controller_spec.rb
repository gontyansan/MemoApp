require 'rails_helper'

describe MemomemosController do
    
  describe "POST /memos" do

    subject { post(:create, params: params) }
    let(:params) { { memomemo: attributes_for(:memomemo) } }


    it "メモが作成できる" do
      
      expect{ subject }.to change { Memomemo.count }.by(1)
    end
  end
      
  describe "PATCH /memos/:id" do
    
    subject { patch(:update, params: params) }

    let(:params) { { id: memomemo.id, memomemo: { title: "更新のテストタイトル", content: "更新のテスト内容" } } }
    let(:memomemo) { create(:memomemo) }

    it "メモを更新できる" do

      expect { subject }.to change { Memomemo.find(memomemo.id).title }.from(memomemo.title).to(params[:memomemo][:title]) &
                            change { Memomemo.find(memomemo.id).content }.from(memomemo.content).to(params[:memomemo][:content])
      expect(response).to have_http_status(302)
    end
  end
  
  describe "DELETE /memos/:id" do
    
    subject { delete(:destroy, params: params) }
    
    let(:params) { { id: memomemo.id } }
    let!(:memomemo) { create(:memomemo) }
    

    it "メモを削除できる" do

      expect{ subject }.to change { Memomemo.count }.by(-1)
      expect(response).to have_http_status(302)
    end
  end
  
end