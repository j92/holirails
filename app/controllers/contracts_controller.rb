class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def new

  end

  def create
    @contract = Contract.new(contracts_params)

    @contract.save
    redirect_to @contract
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def edit
    @contract = Contract.find( params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    @contract.update(contracts_params)
    @contract.save

  end

  private
    def contracts_params
      params.require(:contract).permit(:company, :start_date, :end_date, :holiday_amount)
    end
end
