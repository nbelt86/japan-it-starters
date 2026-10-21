# Japan IT Starters

A curated, public directory of Japan-based IT/tech companies known to hire foreigners with little or no professional experience — built for bootcamp grads and career-changers trying to break into IT while living in Japan.

## Features

- **Company directory** — browse and search real, manually-researched companies (`Company` model, seeded via `db/seeds.rb`)
- **Filters** — hires juniors / no experience, visa sponsorship, English OK, Japanese level required, remote/hybrid/onsite, city
- **Text search** — searches company name, industry, and tech stack
- **Company detail pages** — description, tech stack, source, careers page link, curator notes
- **No accounts, no admin UI** — this is a public read-only directory; the curator adds/edits companies directly via `rails console` or by editing `db/seeds.rb` and reseeding

## Stack

- Ruby 3.3.5, Rails 7.1.6
- SQLite in development/test (zero setup), PostgreSQL in production via `DATABASE_URL`
- Hotwire (Turbo + Stimulus), Tailwind CSS, importmap-rails (no Node/bundler build step)
- No authentication — public read-only app

## Setup

```bash
bin/setup        # installs gems, prepares the db, clears logs/tmp
bin/rails db:seed
bin/rails server
```

Then visit `http://localhost:3000`.

To add or edit companies, use `rails console`:

```ruby
Company.create!(name: "...", city: "...", japanese_level: :basic, hires_juniors: true, ...)
```

...or edit the array in `db/seeds.rb` and re-run `bin/rails db:seed` (it's idempotent — uses `find_or_initialize_by(name:)`).

## Running tests

```bash
bin/rails test
```

## Deployment

A `render.yaml` is included for deploy on [Render](https://render.com) as a Blueprint (Docker web service + Postgres database, wired together automatically). Set `RAILS_MASTER_KEY` (from `config/master.key`) as a secret env var; no other API keys are required since data is manually curated, not scraped.
