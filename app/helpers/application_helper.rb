module ApplicationHelper

	def commas_three(a)
    a.first(3).map { |t| t.name }.join(", ")
	end

	def commas_all(a)
    a.map { |t| t.name }.join(", ")
	end

	def clean_str(a)
    # remove html tags from string
		a.html_safe.gsub(/<\/?[^>]*>/,'') unless a.blank?
	end

	def single_space(a)
		# replace nbsp with a regular space.
		a.html_safe.gsub(/&nbsp;/,' ') unless a.blank?
	end

end
