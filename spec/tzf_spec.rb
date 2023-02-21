# frozen_string_literal: true

RSpec.describe TZF do
  it "has a version number" do
    expect(TZF::VERSION).not_to be_nil
  end

  describe ".tz_name" do
    subject(:tz_name) { described_class.tz_name(*coordinates) }

    context "with NYC coordinates" do
      let(:coordinates) { [40.74771675713742, -73.99350390136448] }

      it { is_expected.to eq "America/New_York" }
    end

    context "with Vancouver, CA coordinates" do
      let(:coordinates) { [49.47341252718892, -123.05334825540935] }

      it { is_expected.to eq "America/Vancouver" }
    end

    context "with Honolulu coordinates" do
      let(:coordinates) { [21.295364048327443, -157.85099513355766] }

      it { is_expected.to eq "Pacific/Honolulu" }
    end

    context "with rural New Zealand coordinates" do
      let(:coordinates) { [-43.67203571687707, 171.16023358552044] }

      it { is_expected.to eq "Pacific/Auckland" }
    end

    context "with Tokyo coordinates" do
      let(:coordinates) { [36.21820150892758, 139.56306579829197] }

      it { is_expected.to eq "Asia/Tokyo" }
    end

    context "with Tibet coordinates" do
      let(:coordinates) { [31.148437370669136, 88.71960431222999] }

      it { is_expected.to eq "Asia/Shanghai" }
    end

    context "with Cairo coordinates" do
      let(:coordinates) { [30.25993031990045, 31.242136034112196] }

      it { is_expected.to eq "Africa/Cairo" }
    end

    context "with Munich coordinates" do
      let(:coordinates) { [48.29036993103675, 11.613408440235888] }

      it { is_expected.to eq "Europe/Berlin" }
    end

    context "with Rome coordinates" do
      let(:coordinates) { [41.9038114880907, 12.49478462156078] }

      it { is_expected.to eq "Europe/Rome" }
    end

    context "with Nigeria coordinates" do
      let(:coordinates) { [9.736814673694083, 7.732860259314992] }

      it { is_expected.to eq "Africa/Lagos" }
    end

    context "with Iceland coordinates" do
      let(:coordinates) { [64.95956409539485, -17.36934883140202] }

      it { is_expected.to eq "Atlantic/Reykjavik" }
    end

    context "with Brazil coordinates" do
      let(:coordinates) { [-8.347585689571595, -56.84294863543579] }

      it { is_expected.to eq "America/Santarem" }
    end
  end
end
