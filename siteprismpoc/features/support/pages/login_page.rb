class LoginPage < SitePrism::Page

  element :account_menu, 'a[class=my-account-link]'
  element :cpf_field, 'input[id=login-cpf]'
  element :continue_btn, 'button[id=send2]'
  #error messages
  element :cpf_error_msg, '#jq-loginvalidation-mgs'

  def login (cpf)
    p wait_until_cpf_field_visible
    cpf.each_char{ |item| cpf_field.send_keys item}
    continue_btn.click
  end

  def clickMenu
    account_menu.click if wait_until_account_menu_visible
  end

end