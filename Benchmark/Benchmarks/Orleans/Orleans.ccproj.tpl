﻿<?xml version="1.0" encoding="utf-8"?>
<Project ToolsVersion="12.0" DefaultTargets="Build" xmlns="http://schemas.microsoft.com/developer/msbuild/2003">
  <Import Project="$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props" Condition="Exists('$(MSBuildExtensionsPath)\$(MSBuildToolsVersion)\Microsoft.Common.props')" />
  <PropertyGroup>
    <Configuration Condition=" '$(Configuration)' == '' ">Debug</Configuration>
    <Platform Condition=" '$(Platform)' == '' ">AnyCPU</Platform>
    <ProductVersion>2.8</ProductVersion>
    <ProjectGuid>3f4dc1a4-47db-4d47-a11f-a8d022110f50</ProjectGuid>
    <OutputType>Library</OutputType>
    <AppDesignerFolder>Properties</AppDesignerFolder>
    <RootNamespace>Orleans</RootNamespace>
    <AssemblyName>Orleans</AssemblyName>
    <StartDevelopmentStorage>True</StartDevelopmentStorage>
    <Name>Orleans</Name>
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
    <ProjectReference Include="..\Orleans.Frontend\Orleans.Frontend.csproj">
      <Name>Orleans.Frontend</Name>
      <Project>{2acbe3ec-9673-4c15-a5b2-cec12cb49eac}</Project>
      <Private>True</Private>
      <RoleType>Worker</RoleType>
      <RoleName>Orleans.Frontend</RoleName>
      <UpdateDiagnosticsConnectionStringOnPublish>True</UpdateDiagnosticsConnectionStringOnPublish>
    </ProjectReference>
    <ProjectReference Include="..\Orleans.Silos\Orleans.Silos.csproj">
      <Name>Orleans.Silos</Name>
      <Project>{6b7e7c7d-fcb5-415c-a361-e653cb9ead72}</Project>
      <Private>True</Private>
      <RoleType>Worker</RoleType>
      <RoleName>Orleans.Silos</RoleName>
      <UpdateDiagnosticsConnectionStringOnPublish>True</UpdateDiagnosticsConnectionStringOnPublish>
    </ProjectReference>
  </ItemGroup>
  <ItemGroup>
    <Folder Include="Orleans.FrontendContent\" />
    <Folder Include="Orleans.SilosContent\" />
    <Folder Include="Profiles" />
  </ItemGroup>
  <ItemGroup>
    <DiagnosticsConfiguration Include="Orleans.FrontendContent\diagnostics.wadcfgx" />
    <DiagnosticsConfiguration Include="Orleans.SilosContent\diagnostics.wadcfgx" />
  </ItemGroup>
  <!-- Import the target files for this project template -->
  <PropertyGroup>
    <VisualStudioVersion Condition=" '$(VisualStudioVersion)' == '' ">10.0</VisualStudioVersion>
    <CloudExtensionsDir Condition=" '$(CloudExtensionsDir)' == '' ">$(MSBuildExtensionsPath)\Microsoft\VisualStudio\v$(VisualStudioVersion)\Windows Azure Tools\2.8\</CloudExtensionsDir>
  </PropertyGroup>
  <Import Project="$(CloudExtensionsDir)Microsoft.WindowsAzure.targets" />
</Project>