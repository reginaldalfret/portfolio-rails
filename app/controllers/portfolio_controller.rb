class PortfolioController < ApplicationController
  def index
    @contributions = [
      { org: "Apple", repo: "swift-numerics", pr: "#355", url: "https://github.com/apple/swift-numerics/pull/355", key: "apple" },
      { org: "Google", repo: "Highway", pr: "#3511", url: "https://github.com/google/highway/pull/3511", key: "google" },
      { org: "Google Cloud", repo: "Data Validator", pr: "#1863", url: "https://github.com/GoogleCloudPlatform/professional-services-data-validator/pull/1863", key: "googlecloud" },
      { org: "Microsoft", repo: "Semantic Kernel", pr: "#14472", url: "https://github.com/microsoft/semantic-kernel/pull/14472", key: "microsoft" },
      { org: "AWS", repo: "Lambda Powertools", pr: "#8542", url: "https://github.com/aws-powertools/powertools-lambda-python/pull/8542", key: "aws" },
      { org: "Meta", repo: "StyleX", pr: "#1899", url: "https://github.com/facebook/stylex/pull/1899", key: "meta" },
      { org: "NVIDIA", repo: "cuOpt", pr: "#2068", url: "https://github.com/NVIDIA/cuopt/pull/2068", key: "nvidia" },
      { org: "NASA", repo: "ProgPy", pr: "#237", url: "https://github.com/nasa/prog_models/pull/237", key: "nasa" },
      { org: "Azure", repo: "Cosmos DB Emulator", pr: "#359", url: "https://github.com/Azure/azure-cosmos-db-emulator-docker/pull/359", key: "azure" },
      { org: "Adobe", repo: "Skills", pr: "#445", url: "https://github.com/adobe/skills/pull/445", key: "adobe" },
      { org: "Intel", repo: "AutoRound", pr: "#2421", url: "https://github.com/intel/auto-round/pull/2421", key: "intel" },
      { org: "IBM", repo: "Docling Pipelines", pr: "#85", url: "https://github.com/IBM/docling-pipelines/pull/85", key: "ibm" },
      { org: "Uber", repo: "Kraken", pr: "#716", url: "https://github.com/uber/kraken/pull/716", key: "uber" },
      { org: "Airbnb", repo: "MagazineLayout", pr: "#169", url: "https://github.com/airbnb/MagazineLayout/pull/169", key: "airbnb" },
      { org: "GitHub", repo: "GitHub CLI", pr: "#14592", url: "https://github.com/cli/cli/pull/14592", key: "github" },
      { org: "Dell", repo: "Omnia Containers", pr: "#649", url: "https://github.com/dell/omnia/pull/649", key: "dell" },
      { org: "Salesforce", repo: "tough-cookie", pr: "#659", url: "https://github.com/salesforce/tough-cookie/pull/659", key: "salesforce" },
      { org: "AMD", repo: "ROCm HRX System", pr: "#1231", url: "https://github.com/ROCm/hrx-system/pull/1231", key: "rocm" },
      { org: "SAP", repo: "E-Mobility Simulator", pr: "#2136", url: "https://github.com/SAP/e-mobility-charging-stations-simulator/pull/2136", key: "sap" },
      { org: "Pinterest", repo: "PyMemcache", pr: "#657", url: "https://github.com/pinterest/pymemcache/pull/657", key: "pinterest" },
      { org: "Qualcomm", repo: "Commit Msg Check", pr: "#38", "url": "https://github.com/qualcomm/commit-msg-check-action/pull/38", key: "qualcomm" },
      { org: "Stripe", repo: "Stripe React Native", pr: "#2751", url: "https://github.com/stripe/stripe-react-native/pull/2751", key: "stripe" },
      { org: "Docker", repo: "Docker Docs", pr: "#26266", url: "https://github.com/docker/docs/pull/26266", key: "docker" },
      { org: "Apache", repo: "HertzBeat", pr: "#4410", url: "https://github.com/apache/hertzbeat/pull/4410", key: "apache" },
      { org: "Cloudflare", repo: "CFSSL", pr: "#1451", url: "https://github.com/cloudflare/cfssl/pull/1451", key: "cloudflare" },
      { org: "OpenAI", repo: "Softnet", pr: "#219", url: "https://github.com/openai/softnet/pull/219", key: "openai" },
      { org: "Snapchat", repo: "ts-inject", pr: "#30", url: "https://github.com/Snapchat/ts-inject/pull/30", key: "snapchat" },
      { org: "Spotify", repo: "Confidence SDK Swift", pr: "#272", url: "https://github.com/spotify/confidence-sdk-swift/pull/272", key: "spotify" },
      { org: "Cisco", repo: "cJOSE", pr: "#202", url: "https://github.com/cisco/cjose/pull/202", key: "cisco" },
      { org: "Netflix", repo: "Atlas", pr: "#2011", url: "https://github.com/Netflix/atlas/pull/2011", key: "netflix" }
    ]

    @experiences = [
      {
        company: "DailyGurus",
        role: "Software Developer",
        period: "Jul 2026 – Present",
        location: "Chennai, India",
        bullets: [
          "Worked on ERPNext, contributing to module customizations, workflows and application development.",
          "Developing a full ERP software platform from scratch across frontend, backend, database and business logic layers.",
          "Building web applications and REST APIs with React.js, Node.js and TypeScript for scalable, reliable systems."
        ]
      },
      {
        company: "Data Patterns",
        role: "Data Science Intern",
        period: "May 2025 – Jun 2025",
        location: "Chennai, India",
        bullets: [
          "Built Python web-scraping tools to collect aerospace research papers and technical data from IEEE sources.",
          "Curated the data and fine-tuned an LLM using LoRA (Low-Rank Adaptation) on the domain-specific dataset."
        ]
      }
    ]

    @projects = [
      {
        title: "301 Super AI Agents — Sovereign Multi-Agent AI Platform",
        badge: "1st · HackIndia 2026 (500+ Teams)",
        description: "Local-first multi-agent AI platform with 301 specialised agents for real-world task automation.",
        tags: ["Python", "LLMs (Ollama)", "Agent Orchestration", "FastAPI", "React.js", "OCR", "Workflow Automation"],
        bullets: [
          "Designed a multi-agent platform with 301 specialised agents coordinated by a central Agent 301.",
          "Implemented local model selection, OCR document parsing, real-time streaming and automation.",
          "Built an interface supporting offline, on-device inference for privacy-sensitive environments."
        ]
      },
      {
        title: "TOR-UNVEIL — Dark Web AI Cybercriminal Tracker",
        badge: "1st · TN Police Hackathon 2025",
        description: "Full-stack AI platform adapted for live operational use by Tamil Nadu Police.",
        tags: ["Python", "React.js", "Node.js", "Tailwind CSS", "Machine Learning", "Data Analytics"],
        bullets: [
          "Built a platform for real-time cybercriminal identification and network profiling on TOR dark web.",
          "Developed search, suspect profile cards and network-graph visualisations with ML classification."
        ]
      },
      {
        title: "AI Crop Recommendation & Agri-Intelligence Engine",
        badge: "1st · Blaze a Trail 2.0",
        description: "ML-powered recommendation system for precision farming.",
        tags: ["Python", "Machine Learning", "React.js", "REST APIs", "GIS Data", "Explainable AI"],
        bullets: [
          "Built an ML engine using soil, weather and GIS datasets to deliver actionable farming insights.",
          "Integrated REST API backend with React.js dashboard; applied Explainable AI for accessibility."
        ]
      }
    ]

    @skills = {
      "ai" => ["Machine Learning", "Deep Learning", "LLMs", "LoRA", "Prompt Engineering", "OCR", "Computer Vision", "Explainable AI", "Scikit-learn", "Data Analytics"],
      "languages" => ["Ruby 3.4", "PHP 8.4", "Python", "Java (JDK 21)", "JavaScript (ES6+)", "TypeScript", "SQL", "HTML5", "CSS3", "Go", "Swift", "C++"],
      "opensource" => ["Git", "GitHub", "Pull Requests", "Code Review", "Bug Fixing", "Regression Testing", "Documentation", "CVE Fixes"],
      "dev" => ["Ruby on Rails 8", "Laravel", "Spring Boot 3", "Django", "React.js", "Node.js", "Express.js", "FastAPI", "REST APIs", "Tailwind CSS", "ERPNext"],
      "databases" => ["PostgreSQL", "MySQL", "MongoDB", "SQLite"],
      "tools" => ["Bundler", "Docker", "AWS", "Linux", "Postman", "Figma", "VS Code"]
    }

    @achievements = [
      { icon: "🥇", title: "1st – HackIndia 2026", subtitle: "(301 Super AI Agents)", color: "text-amber-400" },
      { icon: "🥇", title: "1st – TN Police Hackathon 2025", subtitle: "(TOR-UNVEIL)", color: "text-amber-400" },
      { icon: "🥇", title: "1st – Blaze a Trail 2.0", subtitle: "(Crop Recommendation)", color: "text-amber-400" },
      { icon: "🛡️", title: "Finalist – TN Police Hackathon 2024", subtitle: "", color: "text-sky-400" },
      { icon: "🏆", title: "Winner – 6 National-Level Technical Symposiums", subtitle: "", color: "text-purple-400" },
      { icon: "🚀", title: "70+ other projects", subtitle: "across AI, Web & Automation", color: "text-cyan-400" }
    ]

    @certifications = [
      { icon: "🎓", title: "Meta Front-End Developer", issuer: "Coursera", color: "text-blue-400" },
      { icon: "🛡️", title: "Google Cybersecurity Certificate", issuer: "Coursera", color: "text-emerald-400" },
      { icon: "⚛️", title: "React: The Complete Guide", issuer: "Udemy", color: "text-cyan-400" },
      { icon: "🎨", title: "Figma UI/UX Design Essentials", issuer: "Udemy", color: "text-pink-400" }
    ]

    render layout: false
  end
end
