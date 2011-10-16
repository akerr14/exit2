class HotelsController < ApplicationController
  # GET /hotels
  # GET /hotels.xml
  def index

		# set the highlight for menu item on nav bar
		if request.path == sojourns_path then
			@menu_item = :sojourns
		else
			@menu_item = :hotels
		end

		#	First, get list of hotels in the relevant areas (i.e. hotels - sydney, or sojourns -  out of sydney)
		# this is used for both filters, and returning the hotels
	  if @menu_item == :sojourns then
			hotel_list = Hotel.joins(:area).where("areas.sort" => 100..200, "release_id" => 2).order("areas.sort", "sort")			# areas out of Sydney todo - city specific logic
		else
			hotel_list = Hotel.joins(:area).where("areas.sort" => 1..99, "release_id" => 2).order("areas.sort", "sort")				# areas in Sydney
		end

		# Get values for filter menu options

		@area = hotel_list.select("distinct areas.*").joins(:area).order(:sort)     # get distinct areas from hotel list
		@category = hotel_list.select("distinct categories.*").joins(:category).order(:sort)     # get distinct categories from hotel list
		@style = hotel_list.select("distinct styles.*").joins(:style).order(:sort)
		if @menu_item == :sojourns then
			@setting = hotel_list.select("distinct sojourn_settings.*").joins(:sojourn_settings).order(:sort)
			@interest = hotel_list.select("distinct interests.*").joins(:interests).order(:sort)
		else
			@setting = hotel_list.select("distinct city_settings.*").joins(:city_setting).order(:sort)
		end


		# Area description
		@area_desc = AreaDescription


		# Set condition parameters for returning hotels
		conditions = {}
		conditions[:area_id] = params[:area_sel] unless params[:area_sel].blank?
		conditions[:category_id] = params[:category_sel] unless params[:category_sel].blank?
		conditions[:style_id] = params[:style_sel] unless params[:style_sel].blank?

		if @menu_item == :sojourns then
			if params[:sojourn_sel].blank? then
		      conditions[:city_id] = 1  # Default is near Sydney
				else
					conditions[:city_id] = params[:sojourn_sel]
			end
			conditions[:sojourn_settings] = {:id => params[:setting_sel]} unless params[:setting_sel].blank?
		else
			conditions[:city_setting_id] = params[:setting_sel] unless params[:setting_sel].blank?   # not used currently
		end

	#	if (params[:villa_sel] == "1" || params[:villa_sel].blank?) then   # Old logic - where default is hotel
	if (params[:villa_sel] == "1") then
				conditions[:hotel] = true
	elsif params[:villa_sel] == "2" then
				conditions[:villa] = true
	end   #both so return all


		conditions[:interests] = {:id => params[:interest_sel]} unless params[:interest_sel].blank?

		# return hotels based on conditions  - search function is in the model
		@hotels = hotel_list.where(conditions).search(params[:hotel_search])

		if !params[:interest_sel].blank? then
			 @hotels = @hotels.select("distinct hotels.*").joins(:interests)   # gets included in the above sql so no need to add where clause.
		end                                                                  # i.e. this just adds the join to table interests, but conditions are set
			                                                                   # in the where clause above

		if (!params[:setting_sel].blank? && @menu_item == :sojourns)  then
			 @hotels = @hotels.select("distinct hotels.*").joins(:sojourn_settings)   # gets included in the above sql so no need to add where clause.
		end


	  if @menu_item == :sojourns then
			@meta_title = "Luxury Hotels | Boutique Hotels | Sydney Sojourns"
		else
			@meta_title = "Luxury Hotels | Boutique Hotels | Sydney"
		end

  	respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hotels }            # todo - not sure I want the XML version
    end
	end

  # GET /hotels/1
  # GET /hotels/1.xml
  def show
    # set the highlight for menu item on nav bar
		if request.path == (sojourns_path + "/" + (params[:id])) then
			@menu_item = :sojourns
		  end
			if request.path == (hotels_path + "/" + (params[:id])) then
			@menu_item = :hotels
		end

		@hotel = Hotel.find(params[:id])
		# set meta tags - see also application_controller
		@meta_title = "#{@hotel.name} | Luxury & Boutique Hotels | #{@hotel.city.try(:name)}"
		@meta_keywords = "#{@hotel.name}, #{@meta_keywords}"
		@meta_description = "#{@hotel.name} | #{@hotel.short_desc} | #{@meta_description}"

    # @s3files = S3File.last.name   - executed in application controller

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hotel }
    end
  end

  # GET /hotels/geo - list of hotels with geo codes and address
	def geo
		@hotels = Hotel.joins(:area).order("areas.sort", "sort")
	end


  # GET /hotels/new
  # GET /hotels/new.xml
  def new
    @hotel = Hotel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hotel }
    end
  end

# GET /hotels/1/edit
  def edit
    @hotel = Hotel.find(params[:id])
  end

  # POST /hotels
  # POST /hotels.xml
  def create
    @hotel = Hotel.new(params[:hotel])

    respond_to do |format|
      if @hotel.save
        format.html { redirect_to(@hotel, :notice => 'Hotel was successfully created.') }
        format.xml  { render :xml => @hotel, :status => :created, :location => @hotel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hotel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hotels/1
  # PUT /hotels/1.xml
  def update
    @hotel = Hotel.find(params[:id])

    respond_to do |format|
      if @hotel.update_attributes(params[:hotel])
        format.html { redirect_to(@hotel, :notice => 'Hotel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hotel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hotels/1
  # DELETE /hotels/1.xml
  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy

    respond_to do |format|
      format.html { redirect_to(hotels_url) }
      format.xml  { head :ok }
    end
  end
end
