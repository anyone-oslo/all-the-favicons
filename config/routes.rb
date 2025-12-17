# frozen_string_literal: true

Rails.application.routes.draw do
  get("/browserconfig.xml" => "favicons#browserconfig",
      defaults: { format: "xml" })
  get("/manifest.json" => "favicons#manifest",
      defaults: { format: "json" }, as: "favicons_manifest")
  get("/site.webmanifest" => "favicons#manifest",
      defaults: { format: "json" }, as: "favicons_webmanifest")
  get("favicon.ico" => "favicons#favicon")
end
