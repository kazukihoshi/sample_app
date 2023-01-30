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
  before do
    '投稿画面への遷移'
  end
  context '表示の確認' do 
    it 'new_list_pathが"/lists/new"であるか' do
      expect(current_path).to eq('/lists/new')
    end
    it '投稿ボタンが表示されているか' do
      expect(page).to have_button '投稿'
    end
  end
  context '投稿処理のテスト' do
    it '投稿後のリダイレクト先は正しいか' do
      expect(page).to have_current_path list_path(list)
    end
  end
end

describe '一覧画面のテスト' do
  before do
    '一覧画面への遷移'
  end
  context '一覧の表示とリンクの確認' do
    it '一覧表示画面に投稿されたものが表示されているか' do
      expect(page).to have_content 'list'
    end
  end
end

