class AddBothConsentToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :consentActivity, :boolean
    add_column :users, :consentEvolve, :boolean
    add_column :users, :timeConsent, :timestamp
  end
end
