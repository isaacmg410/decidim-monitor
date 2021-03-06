use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :decidim_monitor, DecidimMonitor.Web.Endpoint,
  http: [port: 4001],
  server: true

# Print only warnings and errors during test
config :logger, level: :warn

config :wallaby,
  driver: Wallaby.Experimental.Chrome,
  screenshot_on_failure: true,
  chrome: [headless: true],
  hackney_options: [timeout: 20_000]

config :decidim_monitor, DecidimMonitor.Api.Installation,
  installations: %{
    "barcelona" => %{
      name: "Decidim Staging",
      url: "http://staging.decidim.codegram.com",
      tags: ["codegram"],
      repo: "http://github.com/decidim/decidim"
    }
  }
