module HotelsHelper

	# use browser back if referrer is sublime, else go to hotels or sojourns page
	# need to ensure referrer is not nil first, otherwise URI.parse fails
	def back_button()
		if (!request.referrer.nil? && (URI.parse(request.referrer).path == hotels_path || URI.parse(request.referrer).path == sojourns_path)) then
			if @menu_item == :hotels then
				link_to_function (render :partial => "hotels/backbutton", :locals => {:title => "Back to Hotels & Villas"}), "history.back()"
			else
				link_to_function (render :partial => "hotels/backbutton", :locals => {:title => "Back to Sojourns"}), "history.back()"
			end
		else
			if @menu_item == :hotels then
				link_to (render :partial => "hotels/backbutton", :locals => {:title => "Back to Hotels & Villas"}), hotels_path
			else
				link_to (render :partial => "hotels/backbutton", :locals => {:title => "Back to Sojourns"}), sojourns_path
			end
		end
	end

end
