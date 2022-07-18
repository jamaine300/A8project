--Inner Join homes_avail with new_listings & home_sales

SELECT *
FROM homes_avail
INNER JOIN new_listings
ON homes_avail.RegionID = new_listings.RegionID
INNER JOIN home_sales
ON homes_avail.RegionID = home_sales.RegionID
;