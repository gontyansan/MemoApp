require 'rails_helper'

describe MemomemosController do
    
  describe "POST /memos" do
    # before do
    #   @params = build(:memomemo)
    # end
    # subject { post :create, params: params }
    # let(:params) { build(:memomemo) }
    
    subject { post(:create, params: params) }
    let(:params) { { memomemo: attributes_for(:memomemo) } }


    it "メモが作成できる" do
      
      expect{ subject }.to change { Memomemo.count }.by(1)
       
      # expect(post :create, @params).to change { Memomemo.count }.by(1)
    #expect(post :create, params: {memomemo: {title: "うんこちゃん", content: "ねもうすだよなあ？"}}).to change { Memomemo.count }.by(1)
    end
    
  end
end