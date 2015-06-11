require 'rails_helper'

describe List do
  let(:list) { create_list }

  describe 'associations' do
    let(:list_item) { create_list_item(list) }
    let(:list_item2) { create_list_item(list) }

    describe '#list_items' do
      it 'returns the list items that belong to the particular list' do
        expect(list.list_items).to eq([list_item, list_item2])
      end
    end
  end

  describe 'validations' do
    it 'validates the presence of a name' do
      list.update_attributes(name: nil)
      expect(list.errors.messages).to eq(name: ['can\'t be blank'])
    end
  end
end
