require "md_array/version"

# Public: Multidimensional Array.
class MdArray

  def initialize(dims, &block)
    @dims = dims
    @arrays = Array.new(dims[0]) {
      Array.new(dims[1]) { block_given? ? block.call : 0 }
    }
  end

  def dimensions
    @dims.size
  end
  alias_method :dims, :dimensions

  def dimension(index)
    @dims[index]
  end
  alias_method :dim, :dimension

  def [](dim1, dim2)
    @arrays[dim1][dim2]
  end

  def []=(dim1, dim2, val)
    @arrays[dim1][dim2] = val
  end

  def to_s
    "MdArray #{dim(0)} x #{dim(1)}\n" +
    @arrays.map {|arr| arr.join(' ') }.join("\n")
  end
end
