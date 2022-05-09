class DocumentsController < ApplicationController
  def index
  	@documents = current_user.documents
  end

  def new
  	@document = Document.new
  end

  def create
  	@document = Document.new(document_params)
  	@document.user_id = current_user.id 
         
    if @document.save   
       redirect_to documents_path, notice: "Successfully uploaded."   
    else   
       render "new"   
    end   
  end

  def destroy
	  @document = Document.find(params[:id])   
    @document.destroy   
    redirect_to documents_path, notice:  "Successfully deleted."   
  end

  private
    def document_params   
      params.require(:document).permit(:name, :attachment, :description)   
    end   
end
