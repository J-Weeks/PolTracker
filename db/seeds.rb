Pol.delete_all
District.delete_all
Vote.delete_all

Pol.create!(congressman: "Richard Neil", party: "Democrat")
Pol.create!(congressman: "Jim McGovern", party: "Democrat")
Pol.create!(congressman: "Niki Tsongas", party: "Democrat")
Pol.create!(congressman: "Joseph Kennedy", party: "Democrat")
Pol.create!(congressman: "Kathrine Clark", party: "Democrat")
Pol.create!(congressman: "Michael Capuano", party: "Democrat")
Pol.create!(congressman: "Stephen Lynch", party: "Democrat")
Pol.create!(congressman: "William Keating", party: "Democrat")

Vote.create!(issue: "Healthcare", bill: "Repeal Obamacare", how_vote1: false, how_vote2: false, how_vote3: false, how_vote4: false, how_vote5: false, how_vote6: false, how_vote7: false, how_vote8: false, how_vote9: false)

District.create!(district: "one", zip: "02139")
District.create!(district: "two", zip: "02138")

