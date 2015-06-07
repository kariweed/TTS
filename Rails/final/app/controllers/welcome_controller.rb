class WelcomeController < ApplicationController
  def index
    @guestlist = []
  end

  def about
  end

  def show
  	@template = Template.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name",   # Excluding ".pdf" extension.
        :template => 'template1/show.pdf.erb',
        :layout => 'pdf.html.erb',
        :show_as_html => params[:debug].present?
      end
    end
  end
end
