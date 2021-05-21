class AddPatternToCurrency < ActiveRecord::Migration[6.1]
  def change
    add_column :currencies, :pattern, :string
    add_column :currencies, :currency_series, :string
  end
end
