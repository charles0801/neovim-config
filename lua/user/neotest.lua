local status_ok, neotest = pcall(require, "neotest")
if not status_ok then
	return
end

neotest.setup({
	adapters = {
		require("neotest-jest")({
			jestCommand = "npm test --",
			jestArguments = function(defaultArguments, context)
				return defaultArguments
			end,
			jestConfigFile = "jest.config.ts",
			env = { CI = true },
			cwd = function(path)
				return vim.fn.getcwd()
			end,
			isTestFile = require("neotest-jest.jest-util").defaultIsTestFile,
		}),
	},
})
