class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string  :name, null: false
      t.text    :description
      t.string  :city
      t.string  :industry
      t.string  :tech_stack
      t.string  :careers_url
      t.string  :source
      t.integer :japanese_level, default: 0, null: false
      t.boolean :visa_sponsorship, default: false, null: false
      t.boolean :english_ok, default: false, null: false
      t.boolean :hires_juniors, default: false, null: false
      t.integer :remote_policy, default: 0, null: false
      t.text    :notes

      t.timestamps
    end

    add_index :companies, :hires_juniors
    add_index :companies, :visa_sponsorship
  end
end
