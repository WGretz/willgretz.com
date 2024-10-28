{ pkgs, lib, ... }:

# Create a new Rails project:
#
# gem install rails
# rails new blog --database=postgresql --force
# cd blog
# bundle
{

  languages = {
    ruby = {
      enable = true;
      version = "3.3.3";
      bundler.enable = true;
    };
    javascript = {
      enable = true;
      yarn.enable = true;
    };
  };

  packages = [
    pkgs.libiconv
  ];

  services.postgres.enable = true;

  processes.jekyll.exec = "cd blog && rails server";

  enterShell = ''
    echo "Entering shell..."
    yarn install
    bundle install
  '';
}