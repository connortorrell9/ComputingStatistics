require './ComputingStatistics'

describe "computing statistics" do
  let(:computing_statistics) { ComputingStatistics }
  context "returns entered numbers" do
    it "with 1 number" do
      expect(computing_statistics.new([100]).numbers).to eq("100")
    end
    it "with 2 numbers" do
      expect(computing_statistics.new([100, 200]).numbers).to eq("100, 200")
    end
  end
  context "returns average number" do
    it "with 1 number" do
      expect(computing_statistics.new([100]).average).to eq(100)
    end
    it "with 2 numbers" do
      expect(computing_statistics.new([100, 200]).average).to eq(150)
    end
    it "with odd numbers" do
      expect(computing_statistics.new([107, 259, 323]).average).to eq(229.66666666666666)
    end
  end
  context "returns minimum number" do
    it "with 1 number" do
      expect(computing_statistics.new([100]).minimum).to eq(100)
    end
    it "with 2 numbers" do
      expect(computing_statistics.new([100, 200]).minimum).to eq(100)
    end
    it "with numbers out of order" do
      expect(computing_statistics.new([107, 95, 356]).minimum).to eq(95)
    end
    it "with decimal numbers out of order" do
      expect(computing_statistics.new([107.5, 95.2, 356.9]).minimum).to eq(95.2)
    end
  end
  context "returns maximum number" do
    it "with 1 number" do
      expect(computing_statistics.new([100]).maximum).to eq(100)
    end
    it "with 2 numbers" do
      expect(computing_statistics.new([100, 200]).maximum).to eq(200)
    end
    it "with numbers out of order" do
      expect(computing_statistics.new([107, 356, 95]).maximum).to eq(356)
    end
    it "with decimal numbers out of order" do
      expect(computing_statistics.new([107.5, 356.9, 95.2]).maximum).to eq(356.9)
    end
  end
  context "returns standard deviation" do
    it "with 1 number" do
      expect(computing_statistics.new([100]).standard_deviation).to eq(0)
    end
    it "with 2 numbers" do
      expect(computing_statistics.new([100, 200]).standard_deviation).to eq(50)
    end
    it "with numbers out of order" do
      expect(computing_statistics.new([107, 356, 95]).standard_deviation).to eq(120.30793822520607)
    end
    it "with decimal numbers out of order" do
      expect(computing_statistics.new([107.5, 356.9, 95.2]).standard_deviation).to eq(120.57203471599686)
    end
  end
end