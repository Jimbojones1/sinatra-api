class Fruit < ActiveRecord::Base

  ## don't always have to do this part
  ## but if activer recod can't find your table this will help
  self.table_name = 'fruits'

end
