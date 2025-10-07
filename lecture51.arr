use context dcic2024
include csv
include data-source
voter-data = load-table:
  VoterID,
  DOB,
  Party,
  Address,
  City,
  Country,
  Postcode
  source: csv-table-url("https://raw.githubusercontent.com/NU-London/LCSCI4207-datasets/refs/heads/main/voters.csv", default-options)
end

voter-data
filter-with(voter-data,lam(r): r["Party"] == "Labour" end).length()

fun black-to-undecided(s :: String) -> String:
  if s == "":
    "Undecided"
  else:
    s
  end
where:
  black-to-undecided("") is "Undecided"
  black-to-undecided("Labour") is "Labour"
end

undecided-voters = transform-column(voter-data,"Party",black-to-undecided)
undecided-voters

freq-bar-chart(undecided-voters,"Party")
#firstly define values to eaach part that each single number could be indentified and adjusted then changing the order of different parts

fun normalize-postcode(s :: String) -> String:
  doc:"making all letters in capitals, dividing by space"
  string-replace(s,"s","S")
  string-replace(s,"w","W")
  string-replace(s,"p","P")
  string-replace(s,"f","F")
  string-replace(s,"l","L")
  string-replace(s,"d","D")
  string-replace(s,"e","E")
  
end

transform-column(voters-data,"Postcode",normalize-postcode())