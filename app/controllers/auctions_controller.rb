class AuctionsController < ApplicationController
  # GET /auctions
  # GET /auctions.xml
  def index
    @auctions = Auction.find :all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @auctions }
    end
  end

  # GET /auctions/1
  # GET /auctions/1.xml
  def show
    @auction = Auction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @auction }
    end
  end

  # GET /auctions/new
  # GET /auctions/new.xml
  def new
    @auction = Auction.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @auction }
    end
  end

  # GET /auctions/1/edit
  def edit
    @auction = Auction.find(params[:id])
  end

  # POST /auctions
  # POST /auctions.xml
  def create
    @auction = Auction.new(params[:auction])

    respond_to do |format|
      if @auction.save
        flash[:notice] = 'Auction was successfully created.'
        format.html { redirect_to(@auction) }
        format.xml  { render :xml => @auction, :status => :created, :location => @auction }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @auction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /auctions/1
  # PUT /auctions/1.xml
  def update
    @auction = Auction.find(params[:id])

    respond_to do |format|
      if @auction.update_attributes(params[:auction])
        flash[:notice] = 'Auction was successfully updated.'
        format.html { redirect_to(@auction) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @auction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /auctions/1
  # DELETE /auctions/1.xml
  def destroy
    @auction = Auction.find(params[:id])
    @auction.destroy

    respond_to do |format|
      format.html { redirect_to(auctions_url) }
      format.xml  { head :ok }
    end
  end
  
  #search in auctions
  def search
    if params[:auction] != nil
      @search= params[:auction]
      @auctions = Auction.paginate_by_sql ['SELECT * FROM auctions WHERE auctions.name LIKE ?', '%'+@search[:name]+'%'],
                       :page => params[:page]
    end
  end
end
