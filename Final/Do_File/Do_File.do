**Question 3.A**

sum V020 V024 V134  V026, detail

**Question 3.B**
tab VH022 V005, sum(VH030)

graph bar (mean) VH030, over(VH022), if V005 == 1

graph bar (mean) VH030, over(VH022), if V005 == 2

graph bar (mean) VH030, over(V005)

tabstat VH030, by(V005)

**Question 3.C**

tabstat V006, s(mean median sd var min max) by(V020)

tabstat V020, s(mean median sd var min max) by(V006)

tabstat V024, s(mean median sd var count range min max) by(V006)

**Question 3.D**

tab V005 V057, column row
 
tab V005 V151, column row

graph bar (mean) V134, over(VH024)

tabstat V134 , s(mean median range min max) by(VH024) 

**Question 3.E**

 gen VWageTotal = (V064+V068+V074+V078+V088+V084+V094+V098+V104+V108+V114+V118+V124+V128+((V134+135)*7/30))

 gen VHoursTotal=(V069+V079+V089+V099+V109+V119+V129)
 
 gen VHourlyWage=(VWageTotal/VHoursTotal)
 
tabstat VHourlyWage, s(mean median min max range) by(V005)
