# Companies researched manually (Wantedly, Mynavi, Indeed Japan, Gaijinpot Jobs,
# company career pages) — NOT scraped. Add more by appending to this array in
# the same shape and re-running `rails db:seed` (idempotent via find_or_initialize_by).
#
# Fields: see Company model — japanese_level: :not_required/:basic/:business/:fluent,
# remote_policy: :onsite/:hybrid/:remote

[
  {
    name: "Mercari",
    description: "Japan's largest C2C marketplace app. One of the most foreign-friendly " \
                 "engineering orgs in Japan — runs a dedicated Students & New Graduates hiring " \
                 "track and many teams use English as their working language.",
    city: "Tokyo", industry: "E-commerce / Marketplace", tech_stack: "Go, Kotlin, TypeScript, React, GCP",
    careers_url: "https://careers.mercari.com/en/jobs/engineering/engineering/", source: "Company careers page (careers.mercari.com)",
    japanese_level: :not_required, visa_sponsorship: true, english_ok: true,
    hires_juniors: true, remote_policy: :hybrid,
    notes: "Full visa sponsorship + relocation support confirmed. Many dev roles list Japanese " \
           "as \"Not Required\"; the Japanese/English mix varies by team. Also has a Fukuoka " \
           "engineering hub. Verified Oct 2026 via careers.mercari.com and japan-dev.com."
  },
  {
    name: "Money Forward",
    description: "Fintech/SaaS company (personal finance + business cloud tools) that adopted an " \
                 "\"Englishnization\" policy for its engineering team in 2021 to actively lower the " \
                 "barrier for non-Japanese engineers.",
    city: "Tokyo", industry: "Fintech / SaaS", tech_stack: "Ruby, Ruby on Rails",
    careers_url: "https://recruit.moneyforward.com/en", source: "Company careers page (recruit.moneyforward.com)",
    japanese_level: :not_required, visa_sponsorship: true, english_ok: true,
    hires_juniors: true, remote_policy: :hybrid,
    notes: "52% of the Tokyo engineering team is non-Japanese (100+ employees from 30+ countries). " \
           "If a job posting doesn't explicitly list a Japanese requirement, there isn't one. " \
           "Also has a Fukuoka office. Verified Oct 2026 via japan-dev.com and recruit.moneyforward.com."
  },
  {
    name: "SmartHR",
    description: "HR SaaS unicorn ($96M raise from General Atlantic, Nov 2025) actively expanding " \
                 "its international engineering hiring.",
    city: "Tokyo", industry: "HR SaaS", tech_stack: "Go, React",
    careers_url: "https://hello.smarthr.co.jp/en/recruit", source: "Company careers page + AI-Recruit blog",
    japanese_level: :basic, visa_sponsorship: true, english_ok: true,
    hires_juniors: false, remote_policy: :hybrid,
    notes: "Visa sponsorship confirmed and the company runs comparatively fast interview loops, " \
           "but I could NOT independently confirm they hire into true entry-level/no-experience " \
           "roles specifically — most sourcing pointed to Engineer (Go/React) openings without a " \
           "stated seniority floor. hires_juniors left false until verified; check " \
           "hello.smarthr.co.jp/en/recruit directly before relying on this one. Verified Oct 2026."
  }
].each do |attrs|
  company = Company.find_or_initialize_by(name: attrs[:name])
  company.assign_attributes(attrs.except(:name))
  company.save!
end

puts "Seeded #{Company.count} companies."
