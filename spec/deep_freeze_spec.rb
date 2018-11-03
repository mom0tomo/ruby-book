require 'spec_helper'
require './lib/term'
require './lib/bank'

describe '#deep_freeze' do

  context '戻り値が配列の場合' do

    it '配列の値が正しいこと' do
      expect(Team::COUNTRIES).to eq ['Japan', 'US', 'India']
    end

    it '配列自身がfreezeされていること' do
      expect(Team::COUNTRIES.frozen?).to be_truthy
    end

    it '配列のすべての要素がfreezeされていること' do
      expect(Team::COUNTRIES.all? { |country| country.frozen? }).to be_truthy
    end
  end

  context '戻り値がハッシュの場合' do

    it 'ハッシュの値が正しいこと' do
      expect(Bank::CURRENCIES).to eq (
                                       {
                                         'Japan' => 'yen',
                                         'US' => 'dollar',
                                         'India' => 'rupee'
                                       }
                                     )
    end

    it 'ハッシュ自身がfreezeされていること' do
      expect(Bank::CURRENCIES.frozen?).to be_truthy
    end

    it 'ハッシュのすべての要素がfreezeされていること' do
      expect(Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }).to be_truthy
    end
  end
end