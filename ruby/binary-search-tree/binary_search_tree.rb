class Bst
	attr_accessor :data, :left, :right

	def initialize(data)
		@data = data
		@left = nil
		@right = nil
	end

	def insert(number)
		if number > data
			insert_right(number)
		else
			insert_left(number)
		end
	end

	def each(&block)
		return enum_for(:each) unless block_given?
		left.each(&block) unless left.nil?
    block.call(self.data)
    right.each(&block) unless right.nil?
	end

	private

	def insert_right(number)
		if right.nil?
			self.right = Bst.new(number)
		else
			right.insert(number)
		end
	end

	def insert_left(number)
		if left.nil?
			self.left = Bst.new(number)
		else
			left.insert(number)
		end
	end
end