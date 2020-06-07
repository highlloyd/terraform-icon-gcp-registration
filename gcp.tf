resource "google_compute_network" "this" {
  count = var.public_ip == "" ? 1 : 0
  name = "my-network"
  
}


resource "google_storage_bucket" "this" {
    count = var.details_endpoint == "" ? 1 : 0
    name = local.bucket_name


 website {
    main_page_suffix = "index.html"
  }
 // Add policy

}




resource "google_storage_bucket_acl" "this" {
  bucket = google_storage_bucket.this.name

   predefined_acl = "publicRead"
}

########
# Images
########
resource "google_storage_bucket_object" "logo_256" {
  count  = var.logo_256 != "" && var.details_endpoint == "" ? 1 : 0
  bucket = join("", google_storage_bucket.this.*.bucket)
  name    = basename(var.logo_256)
  source = var.logo_256
}

resource "google_storage_bucket_object" "logo_1024" {
  count  = var.logo_1024 != "" && var.details_endpoint == "" ? 1 : 0
  bucket = join("", google_storage_bucket.this.*.bucket)
  name    = basename(var.logo_1024)
  source = var.logo_1024
}

resource google_storage_bucket_object "logo_svg" {
  count  = var.logo_svg != "" && var.details_endpoint == "" ? 1 : 0
  bucket = join("", google_storage_bucket.this.*.bucket)
  name    = basename(var.logo_svg)
  source = var.logo_svg
}

resource "google_storage_bucket_object" "details" {
  count = var.details_endpoint == "" ? 1 : 0

  bucket  = join("", google_storage_bucket.this.*.bucket)
  name     = "details.json"
  content = module.registration.details_content
}