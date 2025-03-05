
locals {
  lowcase_site_name = lower("example-${var.siteName}-01")
  list_of_a_and_b_map = [
    { a_key = "123", b_key = 456 },
    { a_key = "789", b_key = 111 },
  ]
  a_b_list_with_name = [ 
    for m in local.list_of_a_and_b_map 
      : merge(m, { 
        name = local.lowcase_site_name 
      }) 
  ]
  filtered_a_map = { 
    for m in local.a_b_list_with_name 
      : m.a_key => m if m.b_key > 120 
  }
}
