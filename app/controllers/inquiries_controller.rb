class InquiriesController < ApplicationController
  
  def new
    @inquiry = Inquiry.new
  end
  
  def create
  @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      InquiryMailer.received_email(@inquiry).deliver
      flash[:success] = "Your message was sent to "
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
  def inquiry_params
    params.require(:inquiry).permit(:company_name, :name, :email, :tel, 
                                    :business_type, :position, :countory, 
                                    :content)
  end
                                  
end
