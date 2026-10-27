# Companies researched manually (Wantedly, Mynavi, Indeed Japan, Gaijinpot Jobs,
# company career pages) — NOT scraped. Add more by appending to this array in
# the same shape and re-running `rails db:seed` (idempotent via find_or_initialize_by).
#
# Fields: see Company model — japanese_level: :not_required/:basic/:business/:fluent,
# remote_policy: :onsite/:hybrid/:remote, last_verified_on: date this entry was last
# cross-checked against real sources — update it whenever you re-verify a company.

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
           "engineering hub. Verified Oct 2026 via careers.mercari.com and japan-dev.com.",
    last_verified_on: Date.new(2026, 10, 23)
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
           "Also has a Fukuoka office. Verified Oct 2026 via japan-dev.com and recruit.moneyforward.com.",
    last_verified_on: Date.new(2026, 10, 23)
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
           "hello.smarthr.co.jp/en/recruit directly before relying on this one. Verified Oct 2026.",
    last_verified_on: Date.new(2026, 10, 23)
  },
  {
    name: "Rakuten",
    description: "Japan's largest internet services conglomerate (e-commerce, fintech, mobile " \
                 "carrier, and more). Runs an explicit New Graduate Recruiting track for engineers " \
                 "plus a long-term internship (\"Rakuten TECH Camp\"), and English is the official " \
                 "internal company language.",
    city: "Tokyo", industry: "E-commerce / Internet Conglomerate", tech_stack: "Java, Kotlin, Spring Boot, Kubernetes, Kafka",
    careers_url: "https://global.rakuten.com/corp/careers/graduates/recruit_engineer/index.html",
    source: "global.rakuten.com, GaijinPot Jobs, japan-dev.com",
    japanese_level: :not_required, visa_sponsorship: true, english_ok: true,
    hires_juniors: true, remote_policy: :hybrid,
    notes: "Strongest hires_juniors evidence of the batch: dedicated New Graduate Recruiting site " \
           "plus an active long-term internship program (Rakuten TECH Camp). Found a GaijinPot " \
           "posting explicitly offering \"100% Visa Sponsorship, No Japanese required.\" " \
           "17,000+ employees from 70+ countries. Verified Oct 2026.",
    last_verified_on: Date.new(2026, 10, 27)
  },
  {
    name: "Ubie",
    description: "Med-tech startup (AI-assisted medical interviewing) founded by a doctor and an " \
                 "engineer. Remote-first team, deliberately designed so no work requires Japanese.",
    city: "Tokyo", industry: "HealthTech", tech_stack: "Ruby, TypeScript, Kotlin, Java, Kubernetes, GCP",
    careers_url: "https://recruit.ubiehealth.com/", source: "recruit.ubiehealth.com, japan-dev.com",
    japanese_level: :not_required, visa_sponsorship: true, english_ok: true,
    hires_juniors: false, remote_policy: :remote,
    notes: "Visa sponsorship and \"no Japanese needed\" are both clearly confirmed (native-speaker " \
           "teammates translate where needed). Could NOT confirm they hire true entry-level/no-" \
           "experience engineers — postings found were general scale-up engineering roles, not " \
           "explicitly junior. hires_juniors left false until verified directly. Verified Oct 2026.",
    last_verified_on: Date.new(2026, 10, 27)
  },
  {
    name: "Cybozu",
    description: "Groupware/collaboration SaaS company (Kintone, cybozu.com). Has an English-" \
                 "speaking New Business Division building identity/access management and " \
                 "communication tools, recruiting internationally since 2022.",
    city: "Tokyo", industry: "Groupware / Collaboration SaaS", tech_stack: "Go, JavaScript",
    careers_url: "https://cybozu.co.jp/en/company/careers/globalrecruitment/",
    source: "cybozu.co.jp, japan-dev.com, tokyodev.com",
    japanese_level: :basic, visa_sponsorship: true, english_ok: true,
    hires_juniors: false, remote_policy: :hybrid,
    notes: "Visa sponsorship confirmed, with relocation support. Japanese requirement genuinely " \
           "varies by team — some roles need none, others want conversational Japanese; marked " \
           ":basic as a middle estimate, verify per-posting. Every open role found on japan-dev.com " \
           "was titled \"Senior\" (Frontend/Backend/Product Designer) — no junior-level evidence, " \
           "so hires_juniors left false. Verified Oct 2026.",
    last_verified_on: Date.new(2026, 10, 27)
  },
  {
    name: "Nulab",
    description: "Maker of Backlog, Cacoo, and Nulab Pass — collaboration/project-management " \
                 "SaaS used internationally. Genuinely headquartered in Fukuoka (not a branch " \
                 "office), with a company-run Japanese Language Learning program specifically " \
                 "for its foreign employees.",
    city: "Fukuoka", industry: "SaaS / Collaboration Tools", tech_stack: "Java, Go, GraphQL, Protobuf",
    careers_url: "https://careers.nulab.com/engineer/",
    source: "careers.nulab.com, Glassdoor, Nulab company blog",
    japanese_level: :basic, visa_sponsorship: true, english_ok: true,
    hires_juniors: false, remote_policy: :hybrid,
    notes: "Fukuoka's city-run Engineer Visa scheme shortens visa processing to ~1 month " \
           "(vs. 1-3 months) for this exact role type, and Nulab runs an internal Japanese " \
           "Learning System for foreign staff — both strong circumstantial evidence they " \
           "support foreign hires, but I did NOT find an explicit \"we sponsor visas\" company " \
           "statement, nor confirmation of entry-level hiring specifically. 214 employees " \
           "worldwide as of Mar 2026. Verified Oct 2026.",
    last_verified_on: Date.new(2026, 10, 27)
  },
  {
    name: "Capcom",
    description: "Major Osaka-headquartered video game company (Street Fighter, Resident Evil, " \
                 "Monster Hunter). Its \"Global Development\" team works primarily in English.",
    city: "Osaka", industry: "Video Games", tech_stack: "C++ (proprietary game/engine development)",
    careers_url: "https://www.capcom.co.jp/recruit/english/",
    source: "capcom.co.jp/recruit/english/, nucamp.co",
    japanese_level: :basic, visa_sponsorship: true, english_ok: true,
    hires_juniors: false, remote_policy: :onsite,
    notes: "The Global Development team explicitly uses English as its primary working " \
           "language and the company is continuously hiring graphics/network/AI engineering " \
           "roles — but I found a prominent \"Mid-Career\" recruitment page and no explicit " \
           "entry-level/no-experience track, so hires_juniors is left false pending direct " \
           "verification. tech_stack is a reasonable inference from role types (graphics/" \
           "engine programming), not independently confirmed. Verified Oct 2026.",
    last_verified_on: Date.new(2026, 10, 27)
  }
].each do |attrs|
  company = Company.find_or_initialize_by(name: attrs[:name])
  company.assign_attributes(attrs.except(:name))
  company.save!
end

puts "Seeded #{Company.count} companies."
