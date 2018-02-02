	
json.id @location.id
json.name @location.name

json.show do

 json.temp @location.records.last.temp
 json.status @location.records.last.status

end