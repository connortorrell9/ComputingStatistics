require './ComputingStatistics'

describe "computing statistics" do
  let(:computing_statistics) { ComputingStatistics.new }
  context "returns entered numbers" do
    it "correctly" do
      expect(computing_statistics.numbers([100, 200, 300])).to eq("Numbers: 100, 200, 300")
    end
  end
end