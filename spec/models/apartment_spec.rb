require 'rails_helper'

RSpec.describe Apartment, type: :model do
  context "validation tests" do
    it 'ensures name presence' do
      apartment = Apartment.new( number: "1006", price: 300, m2: 90, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false, description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "100", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end

    it 'ensures number presence' do
      apartment = Apartment.new( name: "ipa piraja", price: 300, m2: 90, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false, description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "100", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end

    it 'ensures oca id uniqueness' do
      apartment = Apartment.new( name: "ipa piraja", number: "100", price: 300, m2: 90, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false, description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "054", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end

    it 'ensures price is greater than 0' do
      apartment = Apartment.new( name: "ipa piraja", number: "100", price: -2, m2: 90, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false, description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "100", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end

    it "ensures m2 can't be 0" do
      apartment = Apartment.new( name: "ipa piraja", number: "100", price: 2, m2: 0, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false, description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "100", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end

    it "ensures that pet friendly is true or false" do
      apartment = Apartment.new( name: "ipa piraja", number: "100", price: 2, m2: 2, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: "false", description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "100", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end
    
    it "ensures that oca id cant have less than 3 digits" do
      apartment = Apartment.new( name: "ipa piraja", number: "100", price: 2, m2: 2, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false , description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "10", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end

    it "ensures that oca id cant have more than 3 digits" do
      apartment = Apartment.new( name: "ipa piraja", number: "100", price: 2, m2: 2, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false , description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "1000", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end

    it "ensures that oca id has 3 digits" do
      apartment = Apartment.new( name: "ipa piraja", number: "100", price: 2, m2: 2, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false , description: "test.", the_space: "test.", transportation: "test.",
      has: "test", hasnt: "test", active: true , oca_id: "100", neighbourhood: "Copacabana").save
      expect(apartment).to eq(false) 
    end
  end
end
