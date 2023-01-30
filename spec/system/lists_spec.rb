#frozen_string_literal: true

require 'rails_helper'

describe '投稿のテスト' do
  let!(:list) { create(:list,title:'hoge',body:'hoge') }
    describe 'トップ画面(top_path)のテスト' do
      before do
        'トップ画面への遷移'
      end
      context '表示の確認' do
        it 'トップ画面(top_path)に「ここはTopページです」が表示されているか' do
          expect(page).to have_content 'ここはTopページですか'
        end
        it 'top_pathが"/top"であるか' do
          expect(current_path).to eq('/top')
        end
      end
    end  
end

describe '投稿画面のテスト' do
  
end