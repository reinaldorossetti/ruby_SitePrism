class LoginPage < SitePrism::Page
  #set_url "/"

  element :account_menu, 'my-account-link'
  element :cpf_field, 'login-cpf'
  element :continue_btn, 'send2'

  #error messages
  element :cpf_error_msg, '#jq-loginvalidation-mgs'

  def login (cpf)
    cpf_field.set cpf
    continue_btn.click
  end

  def clickMenu
    account_menu.click
  end

end