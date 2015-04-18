class VerizonPage
  include PageObject

  def initialize (args)
    @username = args[username]
    @secret = args[secret]
    @password = args[password]
    browser.goto 'www.verizonwireless.com'
  end

  def log_in
    user_name.set(username)
    home_signin.click
  end

  def answer_secret
    answer.set(secret)
    submit_answer.click
  end

  def input_password
    password_text.set(password) 
    pasword_submit.click
  end

  private

  def username
    @username
  end

  def secret
   @secret
  end

  def password
   @password
  end

  text_field(:user_name, id: => 'IDToken1')
  text_field(:answer, id: => 'IDToken1')
  button(:home_signin, class: 'o-sign-in-bar-sign-in')
  button(:submit_answer, id: 'signIn')
  alias_method :password_submit, :submit_answer
  text_field(:password_text, id: 'IDToken2')
  button(:popup_close, class: => 'ui-dialog-titlebar-close ui-corner-all vzr_close')
  button(:current_bill, text: 'View Current Bill')
  button(:line_charges, id: 'lineChargesTab')
  span(:acctCharges, id: 'acctCharges')

end
