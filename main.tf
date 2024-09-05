resource "local_file" "hello" {
    filename = var.pavan [count.index]
    count = length(var.pavan)
    content = "hello"
    lifecycle {
      ignore_changes = [ content ]
    }
}
variable "pavan" {
    type = list(string)
    default = [
        "hi.txt",
        "hello.txt",
         "gen.txt"
    ]
  
}
