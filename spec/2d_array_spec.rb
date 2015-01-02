require 'spec_helper'

describe '2D Arrays' do

  subject  { MdArray.new([3,4]) }

  describe '#dimensions' do
    it 'has 2 dimensions' do
      expect(subject.dimensions).to eq 2
    end

    specify '#dims is an alias for #dimensions' do
      expect(subject.dims).to eq 2
    end
  end

  describe '#dimension' do
    it 'has a first dimension' do
      expect(subject.dimension(0)).to eq 3
    end

    it 'has a second dimension' do
      expect(subject.dimension(1)).to eq 4
    end

    specify '#dim is an alias for #dimension' do
      expect(subject.dim(0)).to eq 3
    end
  end

  describe '#[]=' do
    it 'sets a cell' do
      subject[2,3] = 99
      expect(subject[2,3]).to eq 99
    end
  end

  describe '#to_s' do
    it 'represents the md array' do
      arr = MdArray.new([2,3]) { 0 }
      arr[0,0] = 1
      arr[1,2] = 2
      expected = "MdArray 2 x 3\n1 0 0\n0 0 2"
      expect(arr.to_s).to eq expected
    end
  end

end
