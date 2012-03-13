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
      format.json  { render json: @case }
    end
  end
    
  
 # GET /quotes/1/case/1edit  
  def edit
    @case = @quote.cases.find(params[:id])
  end
  
  
  def create
    #1st you retrieve the post thanks to params[:post_id]
    
    #2nd you create the comment with arguments in params[:comment]
    @case = @quote.cases.create(params[:case])
    respond_to do |format|
      if @case.save
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to quote_path(@quote) }
        #the key :location is associated to an array in order to build the correct route to the nested resource comment
        format.json { render json: @case, status: :created, location: @case }
      else
        format.html { render :action => "new" }
        format.json  { render :xml => @case.errors, :status => :unprocessable_entity }
      end
    end
  end
  
 
  def update
    #1st you retrieve the post thanks to params[:post_id]
    
    #2nd you retrieve the comment thanks to params[:id]
    @case = @quote.cases.find(params[:id])
    respond_to do |format|
      if @case.update_attributes(params[:case])
        #1st argument of redirect_to is an array, in order to build the correct route to the nested resource comment
        format.html { redirect_to quote_path(@quote) }
        format.json  { head :ok }
      else
        format.html { render :action => "edit" }
        format.json  { render :json => @case.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  
  def destroy
   
    @case = @quote.cases.find(params[:id])
    @case.destroy
    redirect_to quote_path(@quote)
  end
  
  
  
  
end