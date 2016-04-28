Rails.application.routes.draw do
  get("/browserconfig.xml" => "favicons#browserconfig",
      defaults: { format: "xml" })
end
