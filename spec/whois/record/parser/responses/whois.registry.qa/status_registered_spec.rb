# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.registry.qa/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.registry.qa.rb'

describe Whois::Record::Parser::WhoisRegistryQa, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.registry.qa/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect { subject.disclaimer }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq("qtel.com.qa")
    end
  end
  describe "#domain_id" do
    it do
      expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(["ok"])
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect { subject.created_on }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#updated_on" do
    it do
      expect { subject.updated_on }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#expires_on" do
    it do
      expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("QatarTelecom")
      expect(subject.registrar.name).to eq("Qatar Telecom (Qtel) Q. S. C")
      expect(subject.registrar.organization).to eq("Qatar Telecom (Qtel) Q. S. C")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("QT11734")
      expect(subject.registrant_contacts[0].name).to eq("DNS Administrator - Qtel Internet Services")
      expect(subject.registrant_contacts[0].organization).to eq(nil)
      expect(subject.registrant_contacts[0].address).to eq(nil)
      expect(subject.registrant_contacts[0].city).to eq(nil)
      expect(subject.registrant_contacts[0].zip).to eq(nil)
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq(nil)
      expect(subject.registrant_contacts[0].phone).to eq(nil)
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq("Visit www.domains.qa")
    end
  end
  describe "#admin_contacts" do
    it do
      expect { subject.admin_contacts }.to raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("QT11734")
      expect(subject.technical_contacts[0].name).to eq("DNS Administrator - Qtel Internet Services")
      expect(subject.technical_contacts[0].organization).to eq(nil)
      expect(subject.technical_contacts[0].address).to eq(nil)
      expect(subject.technical_contacts[0].city).to eq(nil)
      expect(subject.technical_contacts[0].zip).to eq(nil)
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq(nil)
      expect(subject.technical_contacts[0].phone).to eq(nil)
      expect(subject.technical_contacts[0].fax).to eq(nil)
      expect(subject.technical_contacts[0].email).to eq("Visit www.domains.qa")
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns1.qtel.com.qa")
      expect(subject.nameservers[0].ipv4).to eq("212.77.203.185")
      expect(subject.nameservers[1]).to be_a(Whois::Record::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.qtel.com.qa")
      expect(subject.nameservers[1].ipv4).to eq("213.130.113.101")
    end
  end
end
