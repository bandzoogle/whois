# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.schlund.info/registered_without_update_on.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.schlund.info.rb'

describe Whois::Record::Parser::WhoisSchlundInfo, "registered_without_update_on.expected" do

  subject do
    file = fixture("responses", "whois.schlund.info/registered_without_update_on.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(nil)
    end
  end
end