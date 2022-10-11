local status_ok1, dap = pcall(require, "dap")
if not status_ok1 then
  return
end

local status_ok2, dap_ext_vscode = pcall(require, "dap.ext.vscode")
if not status_ok2 then
  return
end

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = os.getenv('HOME') .. "/.vscode/extensions/cpptools-linux/extension/debugAdapters/bin/OpenDebugAD7"
}

dap_ext_vscode.load_launchjs(nil, { cppdbg = {'c', 'cpp'} })
