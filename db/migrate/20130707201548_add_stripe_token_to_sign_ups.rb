class AddStripeTokenToSignUps < ActiveRecord::Migration
  def change
    add_column :sign_ups, :name, :string
    add_column :sign_ups, :stripe_token, :string
  end
end
