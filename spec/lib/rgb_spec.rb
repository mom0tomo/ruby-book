require 'spec_helper'
require 'rgb'

describe '#to_hex' do
  let(:rgb) { Rgb.new }

  context 'R=4, G=60, B=120の場合' do
    let(:hexa_decimal) { rgb.to_hex(4, 60, 120) }

    it '#043c78であること' do
      expect(hexa_decimal).to eq ('#043c78')
    end
  end

  context 'R=0, G=0, B=0の場合' do
    let(:hexa_decimal) { rgb.to_hex(0, 0, 0) }

    it '#000000であること' do
      expect(hexa_decimal).to eq ('#000000')
    end
  end
end

describe 'to_ints' do
  let(:rgb) { Rgb.new }

  context '#043c78の場合' do
    let(:decimal_number) { rgb.to_ints('#043c78') }

    it '4, 60, 12の配列であること' do
      expect(decimal_number).to eq ([4, 60, 120])
      end
  end
end