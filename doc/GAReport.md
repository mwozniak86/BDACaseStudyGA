
 Google Analytics Case Study
==========================================

**Jesus Martin** - *INSEAD MBA 15J*

jesus.martin.calvo@gmail.com
 
## Business motivation
 
 Developing a digital strategy has become a need for any company, regardless of their core business. That involves creating the online experiences, including websites, applications, social media or any marketing technique that communicates effectively with the users. Whether it is to build a brand or sell a product, these actions need to be measured to understand its success and improve them. However, most companies struggle with this "digital analytics". 
 
 One of the main tools to measure activity of users in a website or other digital experience is Google Analytics (GA). It is free and allows you to understand most aspects of their behavior. Companies use it with different purposes, varying from deciding which marketing investments they should continue or stop as well as what messages in social networks have a higher impact for their business. 
 
 This case will guide you to download some data from your GA account (if you do not have access to any, you can download some sample data from the website www.encortosabemejor.com) and show you some ways to understand how your website is performing in order to make managerial decisions. In this case it will help you to understand what content is generating higher user engagement so the company can focus on this type of content as well as understand whether this content should be focused on new readers so the community grows or to focus on existing readers so the community is more engaged. 
 
 In addition to that, this case addresses some of the most fundamental issues in Data Analysis and Visualization: getting data from a source, clean, summarize and visualize. 
 
 The sample data is downloaded from the GA account of the Spanish blog www.encortosabemejor.com and its analysis will help us to understand how the content is consumed by users. Some decisions that will have to be made with this information is to decide on what to write in the future, 
 
## Data Description
 
First, let's take a look at the first 1000 rows of data


```
## Error in eval(expr, envir, enclos): could not find function "gvisTable"
```

```
## Error in print(t1, "chart"): object 't1' not found
```

It is very important that you understand each of the columns, let's review its content 

* **year**: the year the data was collected
* **month**: the month of the year the data was collected
* **pagePath**: the URL of the page which the data belongs to, excluding the domain. 
* **source**: the website where the visitor was before landing into our website. If there was no website or it is not recognized, the value is (direct)
* **medium**: the mechanism by which the visitor landed in our website. Some values are: organic (search engine), cpc (paid advertising in search engines or other websites), referral (from other website), feed (from automated reading systems). If it is not recognized, the value is (none)
* **userType**: whether the user had been before in the website or not (New Visitor/Returning Visitor)
* **deviceCategory**: the device of the user
* **entrances**: how many times a user entered the website through that page
* **pageviews**: how many times a user opened that page
* **exits**: how many times that page was the last one opened by a user in the same session
* **timeOnPage**: how many seconds this page has been viewed
* **uniquePageviews**: how many times this page has been viewed in an unique session

From these columns we can have some derived metrics, for example:

* **Average time on page**= timeOnPage/(pageviews-exits)
* **Bounce rate**= exits/entrances
* **Exit rate**= exits/pageviews

## Introductory analysis

For example, we can visualize the seasonality of the visits per month, measured by the number of entrances


```
## Error in eval(expr, envir, enclos): could not find function "%>%"
```

```
## Error in eval(expr, envir, enclos): could not find function "ggplot"
```


And its evolution year by year


```
## Error in eval(expr, envir, enclos): could not find function "%>%"
```

```
## Error in eval(expr, envir, enclos): could not find function "ggplot"
```

## Questions to solve

In this case study, you will have to answer five questions which will help the website to improve the content that is creating. You will need to modify and visualize the data. For these purposes, you can use the package "dplyr" (get more info with browseVignettes(package = "dplyr") and the package "ggplot2" (get more info with ?ggplot or ?qplot)

1. What are the pages with more visits? Are them the same when medium is not 'cpc'? Can you make a recommendation on the most popular pages?


```
## Error in eval(expr, envir, enclos): could not find function "%>%"
```

```
## Error in sort(pageVisits, decreasing = TRUE, index.return = TRUE): object 'pageVisits' not found
```

```
## Error in eval(expr, envir, enclos): object 'pageVisits' not found
```

```
## Error in head(pageVisits, n = 10): object 'pageVisits' not found
```

2. What are the exit rates for the pages with the most number of exits? How would you change the content of the page to reduce exit rate? 

3. What are the pages with the highest average time on page? Would you recommend the author to write more on these topics?

3. What combinations of sources and mediums attract the more amount of new visitors? Is their exit rate different to the existing visitors?

4. When medium is referral, which are the sources that attracted the highest number of pageviews? Based on this, should the author promote the content in any of these websites? Would it be better to invest in visitors coming from the medium 'cpc'?
