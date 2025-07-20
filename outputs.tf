# outputs.tf
output "string_function" {
  value = upper("terraform")
}

output "numeric_function" {
  value = max(3, 7, 2)
}

output "collection_function" {
  value = length(concat(["a", "b"], ["c"]))
}

output "date_function" {
  value = formatdate("YYYY-MM-DD", timestamp())
}

output "network_function" {
  value = cidrsubnet("10.0.0.0/16", 4, 2)
}
