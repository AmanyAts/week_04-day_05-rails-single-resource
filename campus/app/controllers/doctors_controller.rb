class DoctorsController < ApplicationController
    def index
        @doctors= Doctor.all
    end
     
    def show 
        @doctor = Doctor.find(params[:id]) #params is key word id=1
    end
    def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
        redirect_to doctors_path
    end

    def new 
        @doctor = Doctor.new
    end

    def create
        @doctor= Doctor.create(doctor_params)
        redirect_to doctor_path(@doctor)
          
        
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def update
        @doctor = Doctor.find(params[:id])
        @doctor.update(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def doctor_params
        params.require(:doctor).permit(:name, :location, :specialty)
    end

    

end
