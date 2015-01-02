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
end
