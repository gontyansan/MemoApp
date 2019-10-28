require 'rails_helper'

RSpec.describe Memomemo, type: :model do
  context "メモのtitleとcontentを指定しているとき" do
    it "メモが作られる" do
      memomemo = build(:memomemo)
      expect(memomemo).to be_valid
    end
  end
  
  context "メモのtitleがからのとき" do
    it "メモが作られない" do
      memomemo = build(:memomemo, title: nil)
      memomemo.valid?
      expect(memomemo.errors.messages[:title]).to include "can't be blank"
    end
  end
  
  context "メモのcontentがからのとき" do
    it "メモが作られない" do
      memomemo = build(:memomemo, content: nil)
      memomemo.valid?
      expect(memomemo.errors.messages[:content]).to include "can't be blank"
    end
  end
  
end