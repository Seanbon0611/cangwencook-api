Datadog.configure do |c|
  c.use :rails, log_injection: true
  c.runtime_metrics.enabled = true
end