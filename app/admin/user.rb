ActiveAdmin.register User do
index do
  column :email
  column "Date to join in",:current_sign_in_at
  column "Client", :is_customer
  column "Business",:is_vendor
  # default_actions
end
end