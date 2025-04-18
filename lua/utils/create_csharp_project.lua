-- plugins/create_csharp_project.lua

local M = {}

-- Função para criar a estrutura de um projeto C# simplificado
function M.create_project()
  -- Solicita o nome do projeto
  local project_name = vim.fn.input("Enter project name: ")
  if project_name == nil or project_name == "" then
    print("❌ Cancelled: No project name provided.")
    return
  end

  -- Define um local padrão como o diretório onde o Neovim foi iniciado
  local default_dir = vim.fn.getcwd()

  -- Solicita o local do diretório com um valor padrão
  local project_dir = vim.fn.input("Enter the directory path [default: " .. default_dir .. "]: ", default_dir)
  if project_dir == nil or project_dir == "" then
    print("❌ Cancelled: No directory provided.")
    return
  end

  -- Verifica se o diretório existe, caso contrário, cria
  if vim.fn.isdirectory(project_dir) == 0 then
    print("📁 Directory does not exist. Creating directory: " .. project_dir)
    vim.fn.mkdir(project_dir, "p")
  end

  -- Caminho completo do projeto
  local project_path = project_dir .. "/" .. project_name

  -- Cria os diretórios principais do projeto
  vim.fn.mkdir(project_path, "p")
  vim.fn.mkdir(project_path .. "/bin", "p")
  vim.fn.mkdir(project_path .. "/obj", "p")

  -- Cria o arquivo .csproj no diretório do projeto
  local csproj_file = io.open(project_path .. "/" .. project_name .. ".csproj", "w")
  csproj_file:write([[
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net9.0</TargetFramework>
  </PropertyGroup>

</Project>
]])
  csproj_file:close()

  -- Cria o arquivo Program.cs no diretório do projeto
  local program_file = io.open(project_path .. "/Program.cs", "w")
  program_file:write([[
using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Hello, World!");
    }
}
]])
  program_file:close()

  -- Exibe uma mensagem de confirmação
  print("✅ C# Project '" .. project_name .. "' created in directory: " .. project_path)

  -- Muda para o diretório do projeto na janela atual
  vim.cmd("lcd " .. project_path)
  vim.cmd("edit " .. project_path .. "/Program.cs")
end

return M
