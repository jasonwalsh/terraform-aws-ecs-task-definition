locals {
  container_definitions = templatefile(
    "${path.module}/templates/container_definitions.json.tmpl",
    {
      command = jsonencode(var.command)
    }
  )
}
