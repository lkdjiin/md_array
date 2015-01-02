require 'spec_helper'

describe MdArray do

  it 'creates an object' do
    result = MdArray.new([3,2])
    expect(result.is_a?(MdArray)).to eq true
  end

  xit 'has a size'

  it 'initializes cells to zero by default' do
    result = MdArray.new([3,2])
    expect(result[0, 0]).to eq 0
  end

  it 'initializes all cells to a given value' do
    cell = rand(9)
    result = MdArray.new([3,2]) { cell }
    expect(result[0, 0]).to eq cell
  end

  describe '#seq' do
    it 'initializes an md array with sequence' do
      arr = MdArray.seq([2,3])
      # Expected:
      # 0 1 2
      # 3 4 5
      expect(arr[0,0]).to eq 0
      expect(arr[0,1]).to eq 1
      expect(arr[0,2]).to eq 2
      expect(arr[1,0]).to eq 3
      expect(arr[1,1]).to eq 4
      expect(arr[1,2]).to eq 5
    end
  end
end
