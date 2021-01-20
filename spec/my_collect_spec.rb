it "can handle an empty collection" do
    empty_array = []
    saved_block = Proc.new {
    counter = 0
      my_collect(empty_array) do |x|
        raise "This block should not run!"
        counter += 1
      end
    }
    expect(saved_block).to_not raise_error
    expect(counter).to eq(0)
  end

  it "yields the correct element" do
