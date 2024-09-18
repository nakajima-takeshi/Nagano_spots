class SorceryCore < ActiveRecord::Migration[7.2]
  def change
    def change
      create_table :User do |t|
        t.string :email,            null: false, index: { unique: true }
        t.string :crypted_password.  # index: { unique: true }　保存データの重複を認めない
        t.string :salt
        t.string :name,             null: false  #null: false（空欄）の保存を認めない
        
        t.timestamps                null: false
      end
  
      add_index :User, :email, unique: true
    end
  
  end
end
