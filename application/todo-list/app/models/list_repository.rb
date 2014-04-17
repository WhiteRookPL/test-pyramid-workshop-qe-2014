class ListRepository
	def initialize()
		@lists = []
	end

	def add(list)
		@lists.push(list)
	end

	def all()
		@lists.select { |list| list.available }
	end
end