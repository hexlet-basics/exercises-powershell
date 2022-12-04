#!/usr/bin/env pwsh

BeforeAll {
    . $PSCommandPath.Replace('.Tests.ps1','.ps1')
}

Describe "Hello, World!" {
    It "Returns Hello World" {
        $variable = pwsh '/exercises-powershell/modules/10-basics/10-hello-world/Index.ps1'
        $variable | Should -Be 'Hello, World!'
    }
}