# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.denic.de.rb'

describe Whois::Record::Parser::WhoisDenicDe, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.denic.de/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "The data in this record is provided by DENIC for informational purposes only. DENIC does not guarantee its accuracy and cannot, under any circumstances, be held liable in case the stored information would prove to be wrong, incomplete or not accurate in any sense. All the domain data that is visible in the whois service is protected by law. It is not permitted to use it for any purpose other than technical or administrative requirements associated with the operation of the Internet. It is explicitly forbidden to extract, copy and/or use or re-utilise in any form and by any means (electronically or not) the whole or a quantitatively or qualitatively substantial part of the contents of the whois database without prior and explicit written permission by DENIC. It is prohibited, in particular, to use it for transmission of unsolicited and/or commercial and/or advertising by phone, fax, e-mail or for any similar purposes. By maintaining the connection you assure that you have a legitimate interest in the data and that you will only use it for the stated purposes. You are aware that DENIC maintains the right to initiate legal proceedings against you in the event of any breach of this assurance and to bar you from using its whois service. The DENIC whois service on port 43 never discloses any information concerning the domain holder/administrative contact. Information concerning the domain holder/administrative contact can be obtained through use of our web-based whois service available at the DENIC website: http://www.denic.de/en/background/whois-service/webwhois.html"
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "google.de"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      lambda { subject.created_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse('2010-09-08 22:40:48 +0200')
    end
  end
  describe "#expires_on" do
    it do
      lambda { subject.expires_on }.should raise_error(Whois::AttributeNotSupported)
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == nil
      subject.registrar.name.should         == "Domain Admin"
      subject.registrar.organization.should == "MarkMonitor Inc"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should == []
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should == []
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should           == nil
      subject.technical_contacts[0].name.should         == "DNS Admin"
      subject.technical_contacts[0].organization.should == "Google Inc."
      subject.technical_contacts[0].address.should      == "1600 Amphitheatre Parkway"
      subject.technical_contacts[0].city.should         == "Mountain View"
      subject.technical_contacts[0].zip.should          == "94043"
      subject.technical_contacts[0].state.should        == nil
      subject.technical_contacts[0].country_code.should == "US"
      subject.technical_contacts[0].phone.should        == "+1.6502530000"
      subject.technical_contacts[0].fax.should          == "+1.6506188571"
      subject.technical_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns4.google.com"
    end
  end
  describe "#response_throttled?" do
    it do
      subject.response_throttled?.should == false
    end
  end
end