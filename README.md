# AmirHossienAfshar.github.io

Personal academic homepage, built on the [academic-homepage](https://github.com/luost26/academic-homepage)
Jekyll template (MIT licensed, see `LICENSE`). The site is a single page; the navbar scrolls to sections.

## Editing content

| What | Where |
|---|---|
| Name, bio, links, portrait | `_data/profile.yml` |
| Which sections exist, their order, navbar labels | `_data/sections.yml` |
| Research interests text | `_data/sections.yml` (entry `research-interests`) |
| Education / experience / research / teaching / projects | `_data/education.yml`, `professional.yml`, `research.yml`, `teaching.yml`, `projects.yml` |
| Skills, conferences & service, languages | `_data/skills.yml`, `service.yml`, `languages.yml` |
| Publications | one file per paper in `_publications/` |

### Adding a new section

1. Create `_data/<name>.yml` with a list of entries (same fields as the existing files).
2. Add an entry to `_data/sections.yml`: `id`, `type` (`timeline` or `keyvalue`), `title`, `nav`, `source: <name>`.

Set `show: false` on a section to hide it. Text fields accept Markdown.

## Preview locally

On NixOS, `shell.nix` provides Ruby and the build tools (gems are installed into `./.gems`):

```
nix-shell
bundle install              # first time only
bundle exec jekyll serve
```

Then open http://127.0.0.1:4000. Restart `jekyll serve` after changing `_config.yml`.

## Deploy

Repo → Settings → Pages → Source: *Deploy from a branch*, branch `main`, folder `/ (root)`.