require "rails_helper"

RSpec.describe ModelMailer, type: :mailer do
  describe "checkout_notification" do
    let(:mail) { ModelMailer.checkout_notification }

    it "renders the headers" do
      expect(mail.subject).to eq("Checkout notification")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
