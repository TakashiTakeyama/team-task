class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: '登録完了'
  end

  def owner_change_notice_mail(user)
    @email = user.email
    mail to: @email, subject: 'オーナーがあなたになりました。'
  end
end
