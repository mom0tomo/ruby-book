require 'spec_helper'
require './lib/fizz_buzz'

describe '#ptint_fizz_buzz' do
  let(:fizz_buzz) { FizzBuzz.new }

  context 'n が3と5の倍数の場合' do
    let(:print_fizz_buzz) { fizz_buzz.print_fizz_buzz(15) }

    it 'FizzBuzzを表示すること' do
      expect(print_fizz_buzz).to eq 'FizzBuzz'
    end
  end

  context 'nが3の倍数の場合' do
    let(:print_fizz_buzz) { fizz_buzz.print_fizz_buzz(3) }

    it 'Fizzを表示すること' do
      expect(print_fizz_buzz).to eq 'Fizz'
    end
  end

  context 'nが5の倍数の場合' do
    let(:print_fizz_buzz) { fizz_buzz.print_fizz_buzz(5) }

    it 'Buzzを表示すること' do
      expect(print_fizz_buzz).to eq 'Buzz'
    end
  end

  context 'nが3の倍数でも5の倍数でもない場合' do
    let(:print_fizz_buzz) { fizz_buzz.print_fizz_buzz(1) }

    it 'nを表示すること' do
      expect(print_fizz_buzz).to eq '1'
    end
  end
end
