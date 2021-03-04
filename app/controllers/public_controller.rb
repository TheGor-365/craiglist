class PublicController < ApplicationController

  def home
    @categories = Category.where(parent_id: nil)
  end

  def send_enquiry_to_user
    @post = Post.find(params[:post_id])

    if @post.present?
      ContactMailer.post_enquiry(@post.id, params[:message]).deliver_now
    end
  end

  def faqs

  end

  def scams

  end

  def safety

  end

  def terms

  end

end
