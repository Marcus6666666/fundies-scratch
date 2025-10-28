use context dcic2024
include csv
include lists
include data-source
student-score = load-table:
  Name,
  Surname,
  Email,
  Score
  source:csv-table-file("students_gate_exam_score.csv",default-options)
  sanitize Score using num-sanitizer
end


student-score
#using order-by false order to show the top 3 highest score
high-score = student-score.order-by("Score",false)
high-score
#high-score.take(3) error, unable to extract first three data
data Student:
    student(name :: String, surname :: String, score :: Number)
end
s1 = student("Ethan","Gray",97)
s2 = student("Oscar","Young",92)
s3 = student("Adrian","Bennett",80)
scores = link(s1.score,link(s2.score,link(s3.score,empty)))
fun count-high-score(l :: List) -> Number:
  doc:"counting how many sutdents have a score higher than 90"
  cases (List) l:
    |empty => 0
    |link(f,r) =>
      if (f > 90):
        1 + count-high-score(r)
      else: 
        count-high-score(r)
      end
end
end
count-high-score(scores)

all-email = student-score.column("Email")
fun get-domain(l :: List):
  cases(List)l:
    |empty => "over"
    |link(f,r) => string-split(string-split(f,"@").get(1),".").get(0) + "," + get-domain(r)
end
end
get-domain(all-email)

fun replace-domain(l :: List):
  cases(List)l:
    |empty => "none"
    |link(f,r) => if (string-split(string-split(f,"@").get(1) == "nulondon.ac.uk")):
          string-replace("northeastern.edu")
      else: "none"
      end + replace-domain(r)
  end
end
replace-domain(all-email)