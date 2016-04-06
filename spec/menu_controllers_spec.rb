require_relative '../models/address_book'
require_relative '../controllers/menu_controllers'

RSpec.describe MenuController do
  let(:controller) { MenuController.new }

  # Test annihilate_entries method
  describe "#annihilate_entries" do
    it "deletes all entries from the address book" do
      controller.address_book.add_entry("Bob", "555-555-5415", "bob@blocmail.com")
      controller.address_book.add_entry("Bill", "555-555-4854", "bill@blocmail.com")
      controller.annihilate_entries
      expect(controller.address_book.entries).to be_empty
    end
  end
end
