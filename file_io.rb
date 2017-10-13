class AllCarInfo

	def self.read_make_file
		File.readlines("car-makes.txt")
  end
    
  def self.read_model_file
		File.readlines("car-models.txt")
	end

	def self.combine_into_hash
		combined_hash = Hash.new

		makes_array = self.read_make_file
		model_array = self.read_model_file

		makes_array.each do |make|
			make = make.chomp
			combined_hash[make] = []

					model_array.each do |model|
						model = model.chomp
							if model[0] == make[0]
								combined_hash[make].push(model.slice(2..-1))
							end
					end
		end
		p combined_hash
	end
	self.combine_into_hash
end

