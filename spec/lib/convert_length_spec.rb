require 'spec_helper'
require 'convert_length'

describe '#show_convert_length' do
  let(:converted_length) { ConvertLength.new }

  context '1メートルをインチに変換する場合' do

    it '39.37であること' do
      expect(converted_length.show_convert_length(1, :m, :in)).to eq 39.37
    end
  end

  # context '15インチをメートルに変換する場合' do
  #
  #   it '0.38であること' do
  #     expect(converted_length.show_convert_length).to eq '0.38'
  #   end
  # end
end