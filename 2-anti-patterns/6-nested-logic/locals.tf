
locals {
  overlyComplexVariable = { for s in [ 
    for s in [
      { a = "123", b = 456 },
      { a = "789", b = 111 },
    ] : merge(s, { 
      name = lower("example-${var.siteName}-01") 
    })
  ] : s.a => s if s.b > 120 }
}
