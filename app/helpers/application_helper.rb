module ApplicationHelper

	def commas_three(a)
    a.first(3).map { |t| t.name }.join(", ")
	end

	def commas_all(a)
    a.map { |t| t.name }.join(", ")
	end

	def clean_str(a)
    # remove html tags from string and mark as html safe
		a.gsub(/<\/?[^>]*>/,'').html_safe unless a.blank?
	end

	def single_space(a)
		# replace nbsp with a regular space.
		a.gsub(/&nbsp;/,' ').html_safe unless a.blank?
	end

end
