local status_ok, dap = pcall(require, "dap")
if not status_ok then
	return
end

dap.adapters.gdb = {
  type = "executable",
  command = "gdb",
  args = { "-i", "dap" }
}

