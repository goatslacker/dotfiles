return {
	adapters = {
		anthropic = {
			model = "claude-3-7-sonnet-20250219", -- Latest Claude 3.7 Sonnet model
			api_key = os.getenv("ANTHROPIC_API_KEY"),
			max_tokens = 4000,
			temperature = 0.7,
		},
	},
	default_adapter = "anthropic",
	opts = {
		log_level = "INFO",
	},
}
