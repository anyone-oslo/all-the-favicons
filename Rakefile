# frozen_string_literal: true

require "bundler/gem_tasks"

# release-please creates the tag and the release commit.
Rake::Task["release:source_control_push"].clear

task default: :spec
task test: :spec
