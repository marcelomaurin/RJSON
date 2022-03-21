# This package is required for Accessing APIS (HTTP or HTTPS URLS from Web)
library(httr)
#This package exposes some additional functions to convert json/text to data frame
#library(rlist)
#This package exposes some additional functions to convert json/text to data frame
library(jsonlite)
#This library is used to manipulate data
library(dplyr)

query<-list(page="2")
resp<-GET("http://maurinsoft.com.br/ws/register/sconfila.php?token={045F6EED-2C11-447D-A7DC-09DB995367C2}",query=query)
#.When we get the response from API we will use to very basic methods of httr.
http_type(resp)  #. This method will tell us what is the type of response fe

http_error(resp) #. This method just verifies if the response is error free for processing

# Shows raw data which is not structured and readable
jsonRespText<-content(resp,as="text") 
jsonRespText
