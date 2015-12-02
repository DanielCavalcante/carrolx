class CarsController < ApplicationController

  def index
    @cars = current_user.cars.all
  end

  def new
    @car = current_user.cars.new
  end

  def create
    @car = current_user.cars.new(car_params)
    if @car.save
      redirect_to cars_path, notice: 'Carro cadastrado com sucesso!'
    else
      render :new
    end
  end

  def edit
    @car = current_user.cars.find(params[:id])
  end

  def update
    @car = current_user.cars.find(params[:id])
    if @car.update(car_params)
      redirect_to cars_path, notice: "Informações atualizadas"
    else
      render :edit
    end
  end

  def remove
    @car = current_user.cars.find(params[:id])
  end

  def destroy
    @car = current_user.cars.find(params[:id])
    @car.destroy!
    redirect_to cars_path, notice: 'Carro removido!'
  end

  private

  def car_params
    params
    .require(:car)
    .permit(:name, :price, :model, :age, :model, :factory, :avatar)
  end

end
