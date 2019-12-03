require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	describe '#create' do
		it 'Add Users' do
			User.create :username => "Mister",
						:email => "email@email.net",
						:password => "password",
						:permission => 1
			User.create :username => "Bea",
						:email => "gmail@email.net",
						:password => "password",
						:permission => 1
			User.create :username => "Bob",
						:email => "amail@email.net",
						:password => "password",
						:permission => 1
			last = User.last(3)
			expect(last[0].username).to eq("Mister")
			expect(last[1].username).to eq("Bea")
			expect(last[2].username).to eq("Bob")
		end
	end
	
	describe '#destroy' do
		it 'Delete User' do
			User.create :username => "Mister",
						:email => "email@email.net",
						:password => "password",
						:permission => 1
			User.destroy User.where("username = 'Mister'")
			last = User.last
			expect(last).to eq(nil)
		end
		
		it 'Delete User from multiple' do
			User.create :username => "Mister",
						:email => "email@email.net",
						:password => "password",
						:permission => 1
			User.create :username => "Bea",
						:email => "gmail@email.net",
						:password => "password",
						:permission => 1
			User.create :username => "Bob",
						:email => "amail@email.net",
						:password => "password",
						:permission => 1
			User.destroy User.where("username = 'Bea'")
			last = User.last(3)
			expect(last[0].username).to eq("Mister")
			expect(last[1].username).to eq("Bob")
			expect(last[2]).to eq(nil)
		end

		it 'Delete multiple Users' do
			User.create :username => "Mister",
						:email => "email@email.net",
						:password => "password",
						:permission => 1
			User.create :username => "Bea",
						:email => "gmail@email.net",
						:password => "password",
						:permission => 1
			User.create :username => "Bob",
						:email => "amail@email.net",
						:password => "password",
						:permission => 1
			User.destroy User.where("username = 'Mister'")
			User.destroy User.where("username = 'Bea'")
			User.destroy User.where("username = 'Bob'")
			last = User.last(3)
			expect(last[0]).to eq(nil)
			expect(last[1]).to eq(nil)
			expect(last[2]).to eq(nil)
		end
		
		
	end
end
