resource "digitalocean_app" "app" {
    spec {
        name = "sample-laravel"
        region = "fra"

        service {
            name = "sample-laravel"
            environment_slug = "php"
            run_command = "heroku-php-apache2 public/"
            instance_count = 1
            instance_size_slug = "basic-xxs"
            http_port = 8080

            github {
                branch = "main"
                repo = "digitalocean/sample-laravel"
            }

            routes {
                path = "/"
            }
        }
    }
}
