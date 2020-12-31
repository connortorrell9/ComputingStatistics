require './ComputingStatistics'

describe "computing statistics" do
  let(:computing_statistics) { ComputingStatistics }
  context "correctly returns entered numbers" do
    it "with 1 number" do
      expect(computing_statistics.new([100]).numbers).to eq("Numbers: 100")
    end
    it "with 2 numbers" do
      expect(computing_statistics.new([100, 200]).numbers).to eq("Numbers: 100, 200")
    end
  end
  context "correctly returns average number" do
    it "with 1 number" do
      expect(computing_statistics.new([100]).average).to eq("The average is 100")
    end
    it "with 2 numbers" do
      expect(computing_statistics.new([100, 200]).average).to eq("The average is 150")
    end
    it "with odd numbers" do
      expect(computing_statistics.new([107, 259, 323]).average).to eq("The average is 229.66666666666666")
    end
  end
end