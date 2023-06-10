select ModifiedUser ,count(LoyaltyCustomerID) as TotalApps from LoyaltyCustomer where cast(ModifiedDate as date)=cast(getdate()-1 as date)
and CreatedDate<>ModifiedDate
group by ModifiedUser order by TotalApps desc

