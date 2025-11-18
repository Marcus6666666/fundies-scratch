use context starter2024
#including table library to use all related functions with table
include table
include data-source
#importing csv library for table uploading
include csv
import math as M
#defining the dataset as penguins, importing the table from local csv file
penguins = load-table: number, species, island, bill_length, bill_depth, flipper_length, body_mass, sex, year
  source: csv-table-file("penguins.csv",default-options)
  sanitize bill_length using num-sanitizer
  sanitize body_mass using num-sanitizer 
end

#function loading two target number in the row and compute the BMI number
fun BMI(penguins_number :: Number):
  doc:"input the number of a penguin and return its BMI data"
  height = penguins.row-n(penguins_number)["bill_length"]
  mass = penguins.row-n(penguins_number)["body_mass"]
B = mass / (height * height)
  B
end

BMI(33)