
require 'spec_helper'

describe Cmultiline do

  describe '#process' do
    let(:input) { "here are things" }
    let(:output) { Cmultiline.process(input) }
    it 'returns a phrase' do
      expect(output).to eq("here are things")
    end

    it 'cuts out a commented phrase' do
      expect(Cmultiline.process "I want /* to know */a bird").to eq("I want a bird")
    end
  end
end

