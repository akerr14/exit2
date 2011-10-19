
RailsAdmin.config do |config|
	  config.navigation.max_visible_tabs 20
		config.list.default_items_per_page = 100

	config.model Area do
    list do
      sort_by :sort
			sort_reverse false
		end
	end


  config.model Restaurant do
    list do
#      sort_by "areas.sort"
#      sort_reverse false
      field :id
      field :sort
      field :city
      field :name
      field :area
      field :short_desc
     # field :desc do
     #   formatted_value do
     #     value.html_safe
     #   end
     # end
    end
  end


  config.model Restaurant do
    edit do
      field :city
      field :area
      field :name
      field :short_desc do
        column_width 800
      end
      field :desc, :text do
        ckeditor true
      end
      field :address do
        column_width 800
      end
      field :map_id
      field :phone
      field :email
      field :web
			field :cuisine
      field :genre
			field :ambiance
			field :rating  do
				label 'Hats'
			end
      field :price
      field :hours do
        help 'Required - Mon-Sat 7.30am-3pm; Sun 8.30am-3pm  OR  Lunch Mon-Fri noon-2.30pm; Dinner Mon-Sat 6-10pm or Daily noon-11pm'
        column_width 800
      end
      field :reservation
 #     field :wine do
 #       column_width 800
 #     end
 #     field :seats do
 #       help 'Optional - 104; private room; outdoor seating; wheelchair access; bar'
 #       column_width 800
 #     end
 #     field :kid
 #     field :vegetarian do
 #       help 'Optional - Few options OR Plenty of options OR 6-course degustation menu'
 #       column_width 800
 #     end
      field :sort
      field :release_id
			field :notes, :text do
        ckeditor true
      end
    end
  end


config.model Hotel do
    list do
#      sort_by "areas.sort"
      sort_reverse false
      field :id
      field :sort
      field :city
      field :name
      field :area
      field :short_desc
    end
  end


  config.model Hotel do
    edit do
      field :city
      field :area
      field :name
      field :villa
			field :hotel
			field :category do
        label "Genre"
				help ''
      end
			field :style do
        help ''
      end
      #field :city_setting_id
			field :sojourn_settings
			field :interests
			field :short_desc do
        column_width 800
      end
      field :desc, :text do
        ckeditor true
      end
      field :address do
        column_width 800
      end
      field :latitude
			field :longitude
			field :ext_hotel_id
			#field :map_id
      field :phone
      field :email do
				column_width 800
			end

      field :web
			field :directions do
				column_width 800
			end
			field :rooms do
        help '1 rooms, including 9 suites & 2 villas; or 3 one-bedroom pavilions '
        column_width 800
      end
      field :price
      field :price_to
      field :price_comment do
				label 'Tax'
				help 'Tax included, tax rate'
			end
      field :minimum_nights
			field :inclusions do
				 column_width 800
      end
  	  field :amenities, :text do
        label 'In-room Amenities'
				ckeditor true
      end
      field :facilities, :text do
        label 'On-site Facilities'
				ckeditor true
			end
			field :executive_club, :text do
				ckeditor true
      end
      field :restaurants, :text do
        label 'Restaurants & Bars'
				ckeditor true
      end
      field :kids do
        column_width 800
        help 'Children aged six and over are welcome. Children are welcome. Cots and extra beds can be arranged, as well as baby sitting.'
			end
			field :check_in do
        label 'Check-in/Check-out'
				column_width 800
      end
      field :ideal_for, :text do
        label 'What We Love'
				ckeditor true
      end
      field :think_twice, :text do
        label 'Full Disclosure'
				ckeditor true
			end
			field :minimum_room
      field :sort
      field :release_id do
				help '1 - draft  - 2 publish - 3 concierge'
			end
			field :notes, :text do
        ckeditor true
      end
    end
	end


end
