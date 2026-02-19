require 'rails_helper'

RSpec.describe User, type: :model do

  describe "" do
    subject { build(:user) }
    
    it "é válido com atributos válidos" do
      expect(subject).to be_valid
    end

    it "é inválido com nome vazio" do
      subject.name = nil
      expect(subject).not_to be_valid
    end

    it "é inválido com phone vazio" do 
      subject.phone = nil
      expect(subject).not_to be_valid
    end 

    it "é inválido com phone duplicado" do 
      user = create(:user)
      user_duplicado = build(:user, phone: user.phone)
      expect(user_duplicado).not_to be_valid
    end
  end
end
