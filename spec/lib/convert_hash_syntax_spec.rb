require 'spec_helper'
require 'convert_hash_syntax'

describe '#show_converted_hash_syntax' do
  let(:correct_syntax) do
    <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
  end

  context 'キーを使っている場合' do
    let(:old_syntax) do
      <<~TEXT
        {
          :name => 'Alice',
          :age => 20,
          :gender => :female
        }
      TEXT
    end

    let(:new_syntax) { ConvertHashSyntax.new.show_converted_hash_syntax(old_syntax) }

    it 'シンボルに変換して表示すること' do


      expect(new_syntax).to eq correct_syntax
    end
  end

  context 'シンボルを使っている場合' do
    let(:old_syntax) { correct_syntax }

    let(:new_syntax) { ConvertHashSyntax.new.show_converted_hash_syntax(old_syntax) }

    it 'そのまま表示すること' do
      expect(new_syntax).to eq old_syntax
    end
  end
end