Rails.application.routes.draw do
  get("/browserconfig.xml" => "favicons#browserconfig",
      defaults: { format: "xml" })
  get("/manifest.json" => "favicons#manifest",
      defaults: { format: "json" }, as: "favicons_manifest")
  get("favicon.ico" => "favicons#favicon")
end
