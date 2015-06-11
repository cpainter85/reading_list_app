require 'rails_helper'

describe ListItem do
  let(:list) { create_list }
  let(:list_item) { create_list_item(list) }

  describe 'associations' do
    describe '#list' do
      it 'returns the list the list item belongs to' do
        expect(list_item.list).to eq(list)
      end
    end
  end

  describe 'validations' do
    it 'validates the presence of a name' do
      list_item.update_attributes(name: nil)
      expect(list_item.errors.messages).to eq(name: ['can\'t be blank'])
    end

    it 'validates the presence of a list id' do
      list_item.update_attributes(list_id: nil)
      expect(list_item.errors.messages).to eq(list_id: ['can\'t be blank'])
    end
  end
end
