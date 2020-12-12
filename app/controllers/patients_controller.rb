class PatientsController < ApplicationController
   
        before_action :set_patient, only: [:show, :edit, :update, :destroy]
      
        def index 
           @patients = Patient.all
           render json: @patients
        end
      
      
      
        def show
            render json: @patient
        end
      
        def create
            @patient = Patient.find_or_create_by(patient_params)
            if @patient.valid?
                render json: @patient
            else
                render json: { errors: @patient.errors.full_messages }, status: :unprocessable_entity
            end
        end
      
        def destroy 
            
            @patient.destroy
          if @patient.valid? 
            render json: { errors: @patient.errors.full_messages }
          end
        end
      
        private 
      
        def set_patient
            @patient = patient.find(params[:id]) || Patient.find_by(params[:lastName])
        end
      
        def patient_params
            params.require(:patient).permit(:firstName, :lastName)
        end
      
      
    
end
