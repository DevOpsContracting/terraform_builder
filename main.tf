locals {
#trying to create iterate over a list to create a new map with each key having the value of three variables
  regions_info= {for v in [ "primary", "secondary"] : v => {
    location= var.location[v]
    short_name= var.shortname[v]
  }
}
#merging two objects with a condition applied

 my_regions=merge(
   { primary=var.location["primary"]},
   (var.geo ?{"secondary"=var.location["secondary"]} : {})
 )

 #merging two obejcts with with the lookup function included
 my_active_regions=merge(
    {primary=var.location["primary"]},
(lookup(var.geo_active, "geo", false) ? {secondary=var.location["secondary"]} : {})
 )

#concat function merging the subnet ips
List_of_ips=concat(
    [
        var.subnet_ips,
        var.firewall_ips
    ]
)
}

output List_of_ips {
  value = local. List_of_ips


}