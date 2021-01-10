class EnglishesController < ApplicationController
	def create
    	@word = Word.find(params[:word_id])
    	@english = @word.englishes.create(english_params)
    	redirect_to word_path(@word)
	end
	  
	def destroy
    	@word = Word.find(params[:word_id])
    	@english = @word.englishes.find(params[:id])
    	@english.destroy
    	redirect_to word_path(@word)
  	end

  	private
    	def english_params
    		params.require(:english).permit(:translation, :enword)
    	end
end
