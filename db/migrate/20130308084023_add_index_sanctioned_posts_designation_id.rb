class AddIndexSanctionedPostsDesignationId < ActiveRecord::Migration

   def self.up
   
      add_index :sanctioned_posts,:designation_id
   
   end

   def self.down
     #waiting for reversible migrations in rails 3.1!
   end

end
 
