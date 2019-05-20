class PatientsController < ApplicationController
    def index
        @doctor =Doctor.find(params[:doctor_id])
        @patients= @doctor.patients
    end
    def show 
        @doctor =Doctor.find(params[:doctor_id])
        @patient = @doctor.patients.find(params[:id]) #params is key word id=1
    end

    def destroy
        @doctor =Doctor.find(params[:doctor_id])
        @patient = @doctor.patients.find(params[:id])
        @patient.destroy
        redirect_to doctor_patients_path(@doctor)
    end

    def new 
        @doctor =Doctor.find(params[:doctor_id])
        @patient = @doctor.patients.new
    end

    def create
        @doctor =Doctor.find(params[:doctor_id])
        @patient= @doctor.patients.create(patient_params)
        @patient.save
        redirect_to doctor_patient_path(@doctor, @patient)
        # redirect_to doctor_patient_path(@doctor, @patient)

        
    end

    def edit
        @doctor =Doctor.find(params[:doctor_id])
        @patient= @doctor.patients.create(patient_params)  
    end

    def update


        @doctor =Doctor.find(params[:doctor_id])
        @patient = @doctor.patients.find(params[:id])
        @patient.update(patient_params)
        redirect_to doctor_patient_path(@doctor, @patient)
        
    end
    
    def patient_params

        params.require(:patient).permit(:first_name, :last_name, :date, :diagnosis)
    end
end