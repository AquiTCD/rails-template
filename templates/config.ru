# frozen_string_literal: true

# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

use Rack::Health, path: '/_chk',
                  sick_if: -> { File.exist?("/data/#{`whoami`.chomp}/run/maintenance") },
                  status: ->(healthy) { healthy ? 200 : 599 },
                  body: ->(healthy) { healthy ? 'OK' : 'MAINTENANCE' },
                  headers: ->(_healthy) { { 'Content-Type' => 'text/html; charset=utf-8' } }

run Rails.application
