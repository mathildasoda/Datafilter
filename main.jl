using CSV
using DataFrames
# importing csv files in julia
background=CSV.read("People_Backgrounds_2020_04_03.csv")
skill=CSV.read("People_Skills_2020_04_03.csv")

#result
result=outerjoin(background,skill,on=intersect(names(background),names(skill)),makeunique=true)

#export result into CSV file named "Merged.csv" into current directory
CSV.write("Merged.csv",result)
