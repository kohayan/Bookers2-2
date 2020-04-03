class SearchController < ApplicationController

	def search
		@method = params[:method]
		@which = params[:which]
		if @method == '1'
			if @which == 'user'
				@answers = User.where(name: "#{params[:keyword]}")
			elsif @which == 'book'
				@answers = Book.where(title: "#{params[:keyword]}")
			end
		elsif @method == '2'
			if @which == 'user'
				@answers = User.where(['name LIKE ?', "#{params[:keyword]}%"])
			elsif @which == 'book'
				@answers = Book.where(['title LIKE ?', "#{params[:keyword]}%"])
			end
		elsif @method == '3'
			if @which == 'user'
				@answers = User.where(['name LIKE ?', "%#{params[:keyword]}"])
			elsif @which == 'book'
				@answers = Book.where(['title LIKE ?', "%#{params[:keyword]}"])
			end
		elsif @method == '4'
			if @which == 'user'
				@answers = User.where(['name LIKE ?', "%#{params[:keyword]}%"])
			elsif @which == 'book'
				@answers = Book.where(['title LIKE ?', "%#{params[:keyword]}%"])
			end
		end
	end
end
