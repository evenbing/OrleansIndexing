﻿<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="12.0" DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProductVersion>8.0.30703</ProductVersion>
    <SchemaVersion>2.0</SchemaVersion>
    <ProjectGuid>{6B7E7C7D-FCB5-415C-A361-E653CB9EAD72}</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>Orleans.Azure.Silos</RootNamespace>
    <AssemblyName>Orleans.Azure.Silos.WorkerRole</AssemblyName>
    <TargetFrameworkVersion>v4.5.1</TargetFrameworkVersion>
    <FileAlignment>512</FileAlignment>
    <PlatformTarget>AnyCPU</PlatformTarget>
    <SccProjectName>
    </SccProjectName>
    <SccLocalPath>
    </SccLocalPath>
    <SccAuxPath>
    </SccAuxPath>
    <SccProvider>
    </SccProvider>
    <RoleType>Worker</RoleType>
    <IsWebBootstrapper>false</IsWebBootstrapper>
    <PublishUrl>publish\</PublishUrl>
    <Install>true</Install>
    <InstallFrom>Disk</InstallFrom>
    <UpdateEnabled>false</UpdateEnabled>
    <UpdateMode>Foreground</UpdateMode>
    <UpdateInterval>7</UpdateInterval>
    <UpdateIntervalUnits>Days</UpdateIntervalUnits>
    <UpdatePeriodically>false</UpdatePeriodically>
    <UpdateRequired>false</UpdateRequired>
    <MapFileExtensions>true</MapFileExtensions>
    <ApplicationRevision>0</ApplicationRevision>
    <ApplicationVersion>1.0.0.%2a</ApplicationVersion>
    <UseApplicationTrust>false</UseApplicationTrust>
    <BootstrapperEnabled>true</BootstrapperEnabled>
    <TargetFrameworkProfile />
    <SolutionDir Condition="$(SolutionDir) == '' Or $(SolutionDir) == '*Undefined*'">..\..\</SolutionDir>
    <RestorePackages>true</RestorePackages>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">
    <DebugSymbols>true</DebugSymbols>
    <DebugType>full</DebugType>
    <Optimize>false</Optimize>
    <OutputPath>bin\Debug\</OutputPath>
    <DefineConstants>DEBUG;TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <CodeAnalysisRuleSet>AllRules.ruleset</CodeAnalysisRuleSet>
    <Prefer32Bit>false</Prefer32Bit>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    <DebugType>pdbonly</DebugType>
    <Optimize>true</Optimize>
    <OutputPath>bin\Release\</OutputPath>
    <DefineConstants>TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
    <CodeAnalysisRuleSet>AllRules.ruleset</CodeAnalysisRuleSet>
    <Prefer32Bit>false</Prefer32Bit>
  </PropertyGroup>
  <ItemGroup>
    <Reference Include="Microsoft.AI.Agent.Intercept, Version=1.2.1.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.ApplicationInsights.Agent.Intercept.1.2.1\lib\net45\Microsoft.AI.Agent.Intercept.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.AI.DependencyCollector, Version=2.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.ApplicationInsights.DependencyCollector.2.1.0\lib\net45\Microsoft.AI.DependencyCollector.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.AI.PerfCounterCollector, Version=2.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.ApplicationInsights.PerfCounterCollector.2.1.0\lib\net45\Microsoft.AI.PerfCounterCollector.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.AI.ServerTelemetryChannel, Version=2.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.ApplicationInsights.WindowsServer.TelemetryChannel.2.1.0\lib\net45\Microsoft.AI.ServerTelemetryChannel.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.AI.WindowsServer, Version=2.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.ApplicationInsights.WindowsServer.2.1.0\lib\net45\Microsoft.AI.WindowsServer.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.ApplicationInsights, Version=2.1.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.ApplicationInsights.2.1.0\lib\net45\Microsoft.ApplicationInsights.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.Azure.Documents.Client, Version=1.10.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Azure.DocumentDB.1.10.0\lib\net45\Microsoft.Azure.Documents.Client.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.Azure.KeyVault.Core">
      <HintPath>..\..\packages\Microsoft.Azure.KeyVault.Core.1.0.0\lib\net40\Microsoft.Azure.KeyVault.Core.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.CodeAnalysis">
      <HintPath>..\..\packages\Microsoft.CodeAnalysis.Common.1.0.0\lib\net45\Microsoft.CodeAnalysis.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.CodeAnalysis.CSharp">
      <HintPath>..\..\packages\Microsoft.CodeAnalysis.CSharp.1.0.0\lib\net45\Microsoft.CodeAnalysis.CSharp.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Data.Edm, Version=5.6.4.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <SpecificVersion>False</SpecificVersion>
      <HintPath>..\..\packages\Microsoft.Data.Edm.5.6.4\lib\net40\Microsoft.Data.Edm.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Data.OData, Version=5.6.4.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <SpecificVersion>False</SpecificVersion>
      <HintPath>..\..\packages\Microsoft.Data.OData.5.6.4\lib\net40\Microsoft.Data.OData.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Data.Services.Client, Version=5.6.4.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <SpecificVersion>False</SpecificVersion>
      <HintPath>..\..\packages\Microsoft.Data.Services.Client.5.6.4\lib\net40\Microsoft.Data.Services.Client.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.Extensions.DependencyInjection, Version=1.0.0.0, Culture=neutral, PublicKeyToken=adb9793829ddae60, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Extensions.DependencyInjection.1.0.0\lib\netstandard1.1\Microsoft.Extensions.DependencyInjection.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.Extensions.DependencyInjection.Abstractions, Version=1.0.0.0, Culture=neutral, PublicKeyToken=adb9793829ddae60, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Extensions.DependencyInjection.Abstractions.1.0.0\lib\netstandard1.0\Microsoft.Extensions.DependencyInjection.Abstractions.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.VisualBasic" />
    <Reference Include="Microsoft.WindowsAzure.Configuration, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <SpecificVersion>False</SpecificVersion>
      <HintPath>..\..\packages\Microsoft.WindowsAzure.ConfigurationManager.3.1.0\lib\net40\Microsoft.WindowsAzure.Configuration.dll</HintPath>
    </Reference>
    <Reference Include="Microsoft.WindowsAzure.Diagnostics, Version=2.8.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
      <Private>True</Private>
    </Reference>
    <Reference Include="Microsoft.WindowsAzure.ServiceRuntime, Version=2.7.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35">
      <Private>False</Private>
    </Reference>
    <Reference Include="Microsoft.WindowsAzure.Storage, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <HintPath>..\..\packages\WindowsAzure.Storage.7.0.0\lib\net40\Microsoft.WindowsAzure.Storage.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Newtonsoft.Json, Version=9.0.0.0, Culture=neutral, PublicKeyToken=30ad4fe6b2a6aeed, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Newtonsoft.Json.9.0.1\lib\net45\Newtonsoft.Json.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="Orleans, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.Core.1.3.0\lib\net451\Orleans.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansAzureUtils, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansAzureUtils.1.3.0\lib\net451\OrleansAzureUtils.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansCodeGenerator, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansCodeGenerator.1.3.0\lib\net451\OrleansCodeGenerator.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansCounterControl, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.CounterControl.1.3.0\lib\net451\OrleansCounterControl.exe</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansDependencyInjection, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansRuntime.1.3.0\lib\net451\OrleansDependencyInjection.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansHost, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansHost.1.3.0\lib\net451\OrleansHost.exe</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansIndexing, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansIndexing.1.3.0\lib\net451\OrleansIndexing.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansProviders, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansProviders.1.3.0\lib\net451\OrleansProviders.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansRuntime, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansRuntime.1.3.0\lib\net451\OrleansRuntime.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="OrleansTelemetryConsumers.AI, Version=1.3.0.0, Culture=neutral, processorArchitecture=MSIL">
      <HintPath>..\..\packages\Microsoft.Orleans.OrleansTelemetryConsumers.AI.1.3.0\lib\net451\OrleansTelemetryConsumers.AI.dll</HintPath>
      <Private>True</Private>
    </Reference>
    <Reference Include="System" />
    <Reference Include="System.Collections.Immutable">
      <HintPath>..\..\packages\System.Collections.Immutable.1.1.36\lib\portable-net45+win8+wp8+wpa81\System.Collections.Immutable.dll</HintPath>
    </Reference>
    <Reference Include="System.Core" />
    <Reference Include="System.Data.Services.Client" />
    <Reference Include="System.Reflection.Metadata">
      <HintPath>..\..\packages\System.Reflection.Metadata.1.0.21\lib\portable-net45+win8\System.Reflection.Metadata.dll</HintPath>
    </Reference>
    <Reference Include="System.Spatial, Version=5.6.4.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35, processorArchitecture=MSIL">
      <SpecificVersion>False</SpecificVersion>
      <HintPath>..\..\packages\System.Spatial.5.6.4\lib\net40\System.Spatial.dll</HintPath>
    </Reference>
    <Reference Include="System.Xml.Linq" />
    <Reference Include="System.Data.DataSetExtensions" />
    <Reference Include="Microsoft.CSharp" />
    <Reference Include="System.Data" />
    <Reference Include="System.Xml" />
  </ItemGroup>
  <ItemGroup>
    <Compile Include="WorkerRole.cs" />
    <Compile Include="Properties\AssemblyInfo.cs" />
  </ItemGroup>
  <ItemGroup>
    <None Include="app.config">
      <SubType>Designer</SubType>
    </None>
    <None Include="ApplicationInsights.config">
      <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </None>
    <None Include="GCSettingsManagement.ps1">
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </None>
    <None Include="packages.config" />
    <None Include="ServerGC.cmd">
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </None>
  </ItemGroup>
  <ItemGroup>
    <Content Include="Applications\appdir-placeholder.txt">
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </Content>
    <Content Include="OrleansConfiguration.DOMAINCLOUDAPP.cloudapp.net.xml">
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </Content>
    <Content Include="OrleansConfiguration.orleansindexingbenchmark3.cloudapp.net.xml">
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </Content>
    <Content Include="OrleansConfiguration.orleansindexingbenchmark.cloudapp.net.xml">
      <CopyToOutputDirectory>Always</CopyToOutputDirectory>
    </Content>
    <Content Include="OrleansConfiguration.local.xml">
      <SubType>Designer</SubType>
      <CopyToOutputDirectory>PreserveNewest</CopyToOutputDirectory>
    </Content>
  </ItemGroup>
  <ItemGroup>
    <BootstrapperPackage Include=".NETFramework,Version=v4.0">
      <Visible>False</Visible>
      <ProductName>Microsoft .NET Framework 4 %28x86 and x64%29</ProductName>
      <Install>true</Install>
    </BootstrapperPackage>
    <BootstrapperPackage Include="Microsoft.Net.Client.3.5">
      <Visible>False</Visible>
      <ProductName>.NET Framework 3.5 SP1 Client Profile</ProductName>
      <Install>false</Install>
    </BootstrapperPackage>
    <BootstrapperPackage Include="Microsoft.Net.Framework.3.5.SP1">
      <Visible>False</Visible>
      <ProductName>.NET Framework 3.5 SP1</ProductName>
      <Install>false</Install>
    </BootstrapperPackage>
    <BootstrapperPackage Include="Microsoft.Windows.Installer.3.1">
      <Visible>False</Visible>
      <ProductName>Windows Installer 3.1</ProductName>
      <Install>true</Install>
    </BootstrapperPackage>
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\Applications\Indexing\Grains\Indexing.Grains.csproj">
      <Project>{bd855fc4-7043-4728-b8c0-cb6fae2ecb48}</Project>
      <Name>Indexing.Grains</Name>
    </ProjectReference>
    <ProjectReference Include="..\Applications\Indexing\Interfaces\Indexing.Interfaces.csproj">
      <Project>{4e949a2d-dd6b-43db-b8aa-cc14d9271260}</Project>
      <Name>Indexing.Interfaces</Name>
    </ProjectReference>
    <ProjectReference Include="..\Common\Common.csproj">
      <Project>{821b5607-bf7f-4c50-8aec-61f4afefda1b}</Project>
      <Name>Common</Name>
    </ProjectReference>
  </ItemGroup>
  <Import Project="$(MSBuildToolsPath)\Microsoft.CSharp.targets" />
  <Import Project="$(SolutionDir)\.nuget\NuGet.targets" Condition="Exists('$(SolutionDir)\.nuget\NuGet.targets')" />
  <Target Name="EnsureNuGetPackageBuildImports" BeforeTargets="PrepareForBuild">
    <PropertyGroup>
      <ErrorText>This project references NuGet package(s) that are missing on this computer. Enable NuGet Package Restore to download them.  For more information, see http://go.microsoft.com/fwlink/?LinkID=322105. The missing file is {0}.</ErrorText>
    </PropertyGroup>
    <Error Condition="!Exists('$(SolutionDir)\.nuget\NuGet.targets')" Text="$([System.String]::Format('$(ErrorText)', '$(SolutionDir)\.nuget\NuGet.targets'))" />
    <Error Condition="!Exists('..\..\packages\Microsoft.Azure.DocumentDB.1.10.0\build\Microsoft.Azure.DocumentDB.targets')" Text="$([System.String]::Format('$(ErrorText)', '..\..\packages\Microsoft.Azure.DocumentDB.1.10.0\build\Microsoft.Azure.DocumentDB.targets'))" />
  </Target>
  <Import Project="..\..\packages\Microsoft.Azure.DocumentDB.1.10.0\build\Microsoft.Azure.DocumentDB.targets" Condition="Exists('..\..\packages\Microsoft.Azure.DocumentDB.1.10.0\build\Microsoft.Azure.DocumentDB.targets')" />
  <!-- To modify your build process, add your task inside one of the targets below and uncomment it. 
       Other similar extension points exist, see Microsoft.Common.targets.
  <Target Name="BeforeBuild">
  </Target>
  <Target Name="AfterBuild">
  </Target>
  -->
</Project>