class ContactMailer < ApplicationMailer

  def post_enquiry(post_id, message)
    post = Post.find(post_id)


    if post.present?
      @name = post.title
      @message = message
      # send mail to post author
      mail(to: post.account.email, subject: "Enquiry about #{@name}")
    end
  end

end
