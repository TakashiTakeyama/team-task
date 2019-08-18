class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: '登録完了'
  end

  def delete_agenda(user_id)
    user = User.find(user_id)
    @email = user.email
    mail to: @email, subject: 'agendaを削除'
  end
end
