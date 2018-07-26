require 'spec_helper'
require 'gate'
require 'ticket'

describe '#exit' do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  context '150円の切符を購入して十三で乗車し、三国で降車する場合' do
    let(:ticket) { Ticket.new(150) }

    it '出場できる' do
      juso.enter(ticket)
      expect(mikuni.exit(ticket)).to eq true
    end
  end

  context '150円の切符を購入して梅田で乗車し、十三で降車する場合' do
    let(:ticket) { Ticket.new(150) }

    it '出場できる' do
      umeda.enter(ticket)
      expect(juso.exit(ticket)).to eq true
    end
  end

  context '190円の切符を購入して梅田で乗車し、三国で降車する場合' do
    let(:ticket) { Ticket.new(190) }

    it '出場できる' do
      umeda.enter(ticket)
      expect(mikuni.exit(ticket)).to eq true
    end
  end

  context '150円の切符を購入して梅田で乗車し、三国で降車する場合' do
    let(:ticket) { Ticket.new(150) }

    it '出場できない' do
      umeda.enter(ticket)
      expect(mikuni.exit(ticket)).to eq false
    end
  end
end