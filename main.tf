provider "heroku"
{
	version = "~>1.8"
}

variable "se-lab2019"
{
	description = "Flask+Docker deployment on Heroku for SE-LAB"
}

resource "heroku_app" "se-lab2019"
{
	name = "${var.se-lab2019}"
	region = "us"
}

resource "heroku_build" "se-lab2019"
{
	app = "${heroku_app.se-lab2019.name}"
	buildpacks = ["https://github.com/heroku/heroku-buildpack-python.git"]
	source =
	{
		url = "https://github.com/work-se-lab2019/my_docker_flask/raw/master/work.tar.gz"

#"https://github.com/work-se-lab2019/my_docker_flask/work.tar.gz"
	}
}

output "se-lab2019_app_url"
{
	value = "https://${heroku_app.se-lab2019.name}.herokuapp.com"
}
