{ pkgs ? import <nixpkgs> { } }:

# Local preview environment for the Jekyll site.
#
#   nix-shell
#   bundle install                 # first time only
#   bundle exec jekyll serve       # then open http://127.0.0.1:4000
#
# Gems are installed into ./.gems inside the project, so nothing touches
# the Nix store or your home directory.

pkgs.mkShell {
  buildInputs = with pkgs; [
    (pkgs.ruby_3_3 or pkgs.ruby)  # Ruby (ships with bundler)
    gcc                           # some gems (e.g. sassc) compile native code
    gnumake
    pkg-config
    libffi
    libyaml
    openssl
    zlib
  ];

  shellHook = ''
    export GEM_HOME="$PWD/.gems"
    export BUNDLE_PATH="$GEM_HOME"
    export PATH="$GEM_HOME/bin:$PATH"
    echo "Jekyll shell ready. First time: bundle install"
    echo "Preview: bundle exec jekyll serve"
  '';
}
