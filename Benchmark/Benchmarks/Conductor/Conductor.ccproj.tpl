﻿<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="12.0" DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProductVersion>2.8</ProductVersion>
    <ProjectGuid>8edcf6b4-194b-4ccb-84a3-7b5cebd872a7</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>Conductor</RootNamespace>
    <AssemblyName>Conductor</AssemblyName>
    <StartDevelopmentStorage>True</StartDevelopmentStorage>
    <Name>Conductor</Name>
    <UseWebProjectPorts>True</UseWebProjectPorts>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' ">
    <DebugSymbols>true</DebugSymbols>
    <DebugType>full</DebugType>
    <Optimize>false</Optimize>
    <OutputPath>bin\Debug\</OutputPath>
    <DefineConstants>DEBUG;TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
  </PropertyGroup>
  <PropertyGroup Condition=" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' ">
    <DebugType>pdbonly</DebugType>
    <Optimize>true</Optimize>
    <OutputPath>bin\Release\</OutputPath>
    <DefineConstants>TRACE</DefineConstants>
    <ErrorReport>prompt</ErrorReport>
    <WarningLevel>4</WarningLevel>
  </PropertyGroup>
  <!-- Items for the project -->
  <ItemGroup>
    <ServiceDefinition Include="ServiceDefinition.csdef" />
    <ServiceConfiguration Include="ServiceConfiguration.CLOUDFILENAME.cscfg" />
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Conductor.WebRoleContent" />
    <Folder Include="Profiles" />
  </ItemGroup>
  <ItemGroup>
    <ProjectReference Include="..\Conductor.Webrole\Conductor.WebRole.csproj">
      <Name>Conductor.WebRole</Name>
      <Project>{a37d6739-c131-4976-9e49-5bcc7bb8a877}</Project>
      <Private>True</Private>
      <RoleType>Web</RoleType>
      <RoleName>Conductor.WebRole</RoleName>
      <UpdateDiagnosticsConnectionStringOnPublish>True</UpdateDiagnosticsConnectionStringOnPublish>
    </ProjectReference>
  </ItemGroup>
  <ItemGroup>
    <DiagnosticsConfiguration Include="Conductor.WebRoleContent\diagnostics.wadcfgx" />
  </ItemGroup>
  <!-- Import the target files for this project template -->
  <PropertyGroup>
    <VisualStudioVersion Condition=" '$(VisualStudioVersion)' == '' ">10.0</VisualStudioVersion>
    <CloudExtensionsDir Condition=" '$(CloudExtensionsDir)' == '' ">$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v$(VisualStudioVersion)\Windows Azure Tools\2.8\</CloudExtensionsDir>
  </PropertyGroup>
  <Import Project="$(CloudExtensionsDir)Microsoft.WindowsAzure.targets" />
</Project>