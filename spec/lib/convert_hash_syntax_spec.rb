require 'spec_helper'
require 'convert_hash_syntax'

describe '#show_converted_hash_syntax' do
  context 'キーを使っている場合' do
    let(:old_syntax) { 'key' => 'value' }

    it 'シンボルに変換して表示すること' do
      ecpect(show_converted_hash_syntax(old_syntax)).to eq key: :value
    end
  end

  context 'シンボルを使っている場合' do
    let(:old_syntax) { key: :value }
    it 'そのまま表示すること' do
      ecpect(show_converted_hash_syntax(old_syntax)).to eq key: :value
    end
  end
end