class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # setup email subject header and reciever
  def headers
    {
        :subject => "renomania.co.nz",
        :to => "ikona23@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end
end
