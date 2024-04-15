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

    context "with St Francis, Kansas coordinates" do
      let(:coordinates) { [39.82035288651037, -101.8256829047708] }

      it { is_expected.to eq "America/Chicago" }
    end

    context "with Weskan, Kansas coordinates" do
      let(:coordinates) { [38.82518946320606, -101.98519499134277] }

      it { is_expected.to eq "America/Denver" }
    end

    context "with Denver coordinates" do
      let(:coordinates) { [39.750506124958264, -104.91830433871691] }

      it { is_expected.to eq "America/Denver" }
    end

    context "with Vancouver, CA coordinates" do
      let(:coordinates) { [49.47341252718892, -123.05334825540935] }

      it { is_expected.to eq "America/Vancouver" }
    end

    context "with Sachs Harbour, CA coordinates" do
      let(:coordinates) { [72.07920766309644, -125.33769346109779] }

      it { is_expected.to eq "America/Inuvik" }
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

    context "with Easter Island coordinates" do
      let(:coordinates) { [-27.11069740589065, -109.3669685185801] }

      it { is_expected.to eq "Pacific/Easter" }
    end

    context "with Arctic Ocean coordinates" do
      let(:coordinates) { [86.807722969671, -178.41909254375486] }

      it { is_expected.to eq "Etc/GMT+12" }
    end

    context "with rural Antarctica coordinates" do
      let(:coordinates) { [-85.91222463600428, 64.53482925964336] }

      it { is_expected.to eq "Antarctica/Mawson" }
    end
  end

  describe ".tz_names" do
    subject(:tz_names) { described_class.tz_names(*coordinates) }

    context "with Bermuda coordinates" do
      let(:coordinates) { [32.26669174802396, -65.04326428488295] }

      it { is_expected.to eq ["Atlantic/Bermuda"] }
    end

    context "with Denver coordinates" do
      let(:coordinates) { [39.750506124958264, -104.91830433871691] }

      it { is_expected.to eq ["America/Denver"] }
    end

    context "with London coordinates" do
      let(:coordinates) { [51.56123375122209, -0.15079162500107895] }

      it { is_expected.to eq ["Europe/London"] }
    end

    context "with NYC coordinates" do
      let(:coordinates) { [40.74771675713742, -73.99350390136448] }

      it { is_expected.to eq ["America/New_York"] }
    end
  end
end
