class PerformaonesController < InheritedResources::Base
	def new
  		@performaone = Performaone.new(:employee_id => params[:id], :hospital_id => params[:hospital_id])
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
                    format.csv { send_data @performaones.to_csv }
                    format.xls # { send_data @performaones.to_csv(col_sep: '\t') }
                end
        end
	end	

	def delete
		  Performaone.find(params[:id]).destroy
		  respond_to do |format|
     		 format.html { redirect_to new_performaone_url(:id => empsancwork.employee_id, :hospital_id => empsancwork.hospital_id) }
    	     format.json { head :no_content }
  		  end
	end	
end
