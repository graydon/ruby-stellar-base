require 'spec_helper'

describe Stellar::Convert do
  subject{ Stellar::Convert }
  let(:raw)   { "\x01\x02\x03\x04" }
  let(:hex)   { "01020304" }
  let(:base64){ "AQIDBA==" }

  describe "hex encoding" do
    it "decodes" do
      expect(subject.from_hex(hex)).to eq(raw)
    end

    it "encodes" do
      expect(subject.to_hex(raw)).to eq(hex)
    end

    it "round trips" do
      raw1 = subject.from_hex(hex)
      hex1 = subject.to_hex(raw1)
      expect(hex1).to eq(hex)


      hex2 = subject.to_hex(raw)
      raw2 = subject.from_hex(hex2)
      expect(raw2).to eq(raw)
    end
  end

  describe "base64 encoding" do
    it "decodes" do
      expect(subject.from_base64(base64)).to eq(raw)
    end

    it "encodes" do
      expect(subject.to_base64(raw)).to eq(base64)
    end

    it "round trips" do
      raw1 = subject.from_base64(base64)
      base641 = subject.to_base64(raw1)
      expect(base641).to eq(base64)


      base642 = subject.to_base64(raw)
      raw2 = subject.from_base64(base642)
      expect(raw2).to eq(raw)
    end
  end


end
