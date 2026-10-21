# Companies researched manually (Wantedly, Mynavi, Indeed Japan, Gaijinpot Jobs,
# company career pages) — NOT scraped. Add more by appending to this array in
# the same shape and re-running `rails db:seed` (idempotent via find_or_initialize_by).
#
# Fields: see Company model — japanese_level: :not_required/:basic/:business/:fluent,
# remote_policy: :onsite/:hybrid/:remote

[
  {
    name: "Tokyo Code Collective",
    description: "A Tokyo-based IT consultancy running a structured junior-engineer " \
                 "training track aimed at career-changers, including non-Japanese bootcamp graduates.",
    city: "Tokyo", industry: "IT Consulting", tech_stack: "Java, Spring, AWS",
    careers_url: "https://example.com/careers", source: "Wantedly",
    japanese_level: :basic, visa_sponsorship: true, english_ok: true,
    hires_juniors: true, remote_policy: :hybrid,
    notes: "Replace with a real company you've researched and verified."
  },
  {
    name: "Osaka Code Works",
    description: "A small Osaka web-development shop building client sites on Rails; " \
                 "has hired bootcamp graduates into junior roles before.",
    city: "Osaka", industry: "Web Development", tech_stack: "Ruby on Rails, Vue.js, MySQL",
    careers_url: "https://example.com/careers", source: "Indeed Japan",
    japanese_level: :business, visa_sponsorship: true, english_ok: false,
    hires_juniors: true, remote_policy: :onsite,
    notes: "Replace with a real company you've researched and verified."
  },
  {
    name: "RemoteStack KK",
    description: "A fully remote-first SaaS company headquartered in Fukuoka with an " \
                 "international engineering team; English is the primary working language.",
    city: "Fukuoka", industry: "SaaS", tech_stack: "Python, Django, React, GCP",
    careers_url: "https://example.com/careers", source: "Company site",
    japanese_level: :not_required, visa_sponsorship: true, english_ok: true,
    hires_juniors: false, remote_policy: :remote,
    notes: "Replace with a real company. hires_juniors: false here on purpose, to show the filter excluding a company too."
  }
].each do |attrs|
  company = Company.find_or_initialize_by(name: attrs[:name])
  company.assign_attributes(attrs.except(:name))
  company.save!
end

puts "Seeded #{Company.count} companies."
