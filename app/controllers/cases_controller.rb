class CasesController < ApplicationController
  before_filter :get_quote
  
  def get_quote
    @quote = Quote.find(params[:quote_id])
  end
  def new
    #1st you retrieve the post thanks to params[:post_id]
    
    #2nd you build a new one
    @case = @quote.cases.build
    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end
    
  
 # GET /quotes/1/case/1edit  
  def edit
    @case = @quote.cases.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
  
  
  def create
    #1st you retrieve the post thanks to params[:post_id]
    
    #2nd you create the comment with arguments in params[:comment]
    @case = @quote.cases.create(params[:case])
    respond_to do |format|
        format.js
    end
  end
  
  def update
    #1st you retrieve the post thanks to params[:post_id]
    
    #2nd you retrieve the comment thanks to params[:id]
    @case = @quote.cases.find(params[:id])
    respond_to do |format|
      format.js
      if @case.update_attributes(params[:case])
        
        format.js
      else
       
        format.js
      end
    end
  end

  
  
  def destroy
   
    @case = @quote.cases.find(params[:id])
    @case.destroy
    redirect_to quote_path(@quote), notice: @case.name+' was successfully deleted.'
  end
  
  
  
  
end