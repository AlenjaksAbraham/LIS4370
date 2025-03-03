
airquality            

data("airquality")
head(airquality,6)
tail(airquality,6)
summary(airquality)



class(airquality)


typeof(airquality)

mode(airquality)


#s3 example
s3 <- list(
  rows = nrow(airquality),
  columns = ncol(airquality),
  column_names = colnames(airquality)
)

class(s3) <- "airqualitySummary"

print(s3)


#s4 example
setClass("AirQualitySummary", 
         slots = c(meanTemp = "numeric", meanOzone = "numeric"))

s4 <- new("AirQualitySummary", 
          meanTemp = mean(airquality$Temp),
          meanOzone = mean(airquality$Ozone, na.rm = TRUE))

print(s4)



#own data s3 example
s <- list(name = "Alen", age = 22, GPA = 3.5) 
s




#own data s4 example

setClass("student", slots = c(name = "character", age = "numeric", GPA = "numeric"))
sfour <- new("student",name="Alen", age=22, GPA=3.5)
print(sfour)


