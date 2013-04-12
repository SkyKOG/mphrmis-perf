class HospitalPerformasController < InheritedResources::Base
	def new
  		@hospital_performa = HospitalPerforma.new(:hospital_id => params[:id])
	end

	def create
		@hospital_performa = HospitalPerforma.new(params[:hospital_performa])
		    respond_to do |format|
		      if @hospital_performa.save
		        format.html { redirect_to @hospital_performa, notice: 'Hospital Performance data for the hospital was successfully created.' }
		        format.json { render json: @hospital_performa, status: :created, location: @hospital_performa }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @hospital_performa.errors, status: :unprocessable_entity }
		      end
    		end
	end	
end
