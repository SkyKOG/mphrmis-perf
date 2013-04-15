class PerformaonesController < InheritedResources::Base
	def new
  		@performaone = Performaone.new(:employee_id => params[:id])
	end

	def create
		@performaone = Performaone.new(params[:performaone])
		    respond_to do |format|
		      if @performaone.save
		        format.html { redirect_to @performaone, notice: 'Performance Entry for the employee was successfully created.' }
		        format.json { render json: @performaone, status: :created, location: @performaone }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @performaone.errors, status: :unprocessable_entity }
		      end
    		end

    		 def index
		@performaones = Performaone.order(:employee_id)
                respond_to do |format|
                    format.html
                    format.csv { render text: @performaones.to_csv }
                end
        end
	end		
end
