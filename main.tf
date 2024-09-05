resource "local_file" "hello" {
    filename = var.pavan [count.index]
    count = length(var.pavan)
    content = "hello"
    lifecycle {
      ignore_changes = [ content ]
    }
}
