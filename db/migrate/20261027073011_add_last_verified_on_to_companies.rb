class AddLastVerifiedOnToCompanies < ActiveRecord::Migration[7.1]
  def change
    add_column :companies, :last_verified_on, :date
  end
end
