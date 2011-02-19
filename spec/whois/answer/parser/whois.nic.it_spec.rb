require 'spec_helper'
require 'whois/answer/parser/whois.nic.it'

describe Whois::Answer::Parser::WhoisNicIt do

  before(:each) do
    @host   = "whois.nic.it"
  end


  # TODO: test property patterns instead of each different type
  describe "#status" do
    context "value is active" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_active.txt'))
        expected  = :registered
        parser.should support_property_and_cache(:status, expected)
      end
    end
    context "value is ok" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_ok.txt'))
        expected  = :registered
        parser.should support_property_and_cache(:status, expected)
      end
    end
    context "value is ok autorenew" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_ok_autorenew.txt'))
        expected  = :registered
        parser.should support_property_and_cache(:status, expected)
      end
    end
    context "value is client" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_client.txt'))
        expected  = :registered
        parser.should support_property_and_cache(:status, expected)
      end
    end
    context "value is pendingDelete" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_pendingdelete.txt'))
        expected  = :registered
        parser.should support_property_and_cache(:status, expected)
      end
    end
    context "value is grace-period" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_graceperiod.txt'))
        expected  = :registered
        parser.should support_property_and_cache(:status, expected)
      end
    end
    context "value is available" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_available.txt'))
        expected  = :available
        parser.should support_property_and_cache(:status, expected)
      end
    end
  end

  describe "#available?" do
    context "value is active" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_active.txt'))
        expected  = false
        parser.should support_property_and_cache(:available?, expected)
      end
    end
    context "value is ok" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_ok.txt'))
        expected  = false
        parser.should support_property_and_cache(:available?, expected)
      end
    end
    context "value is ok autorenew" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_ok_autorenew.txt'))
        expected  = false
        parser.should support_property_and_cache(:available?, expected)
      end
    end
    context "value is client" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_client.txt'))
        expected  = false
        parser.should support_property_and_cache(:available?, expected)
      end
    end
    context "value is pendingDelete" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_pendingdelete.txt'))
        expected  = false
        parser.should support_property_and_cache(:available?, expected)
      end
    end
    context "value is grace-period" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_graceperiod.txt'))
        expected  = false
        parser.should support_property_and_cache(:available?, expected)
      end
    end
    context "value is available" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_available.txt'))
        expected  = true
        parser.should support_property_and_cache(:available?, expected)
      end
    end
  end

  describe "#registered?" do
    context "value is active" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_active.txt'))
        expected  = true
        parser.should support_property_and_cache(:registered?, expected)
      end
    end
    context "value is ok" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_ok.txt'))
        expected  = true
        parser.should support_property_and_cache(:registered?, expected)
      end
    end
    context "value is ok autorenew" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_ok_autorenew.txt'))
        expected  = true
        parser.should support_property_and_cache(:registered?, expected)
      end
    end
    context "value is client" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_ok.txt'))
        expected  = true
        parser.should support_property_and_cache(:registered?, expected)
      end
    end
    context "value is pendingDelete" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_pendingdelete.txt'))
        expected  = true
        parser.should support_property_and_cache(:registered?, expected)
      end
    end
    context "value is grace-period" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_graceperiod.txt'))
        expected  = true
        parser.should support_property_and_cache(:registered?, expected)
      end
    end
    context "value is available" do
      it "returns and cache the value" do
        parser    = klass.new(load_part('property_status_available.txt'))
        expected  = false
        parser.should support_property_and_cache(:registered?, expected)
      end
    end
  end

end