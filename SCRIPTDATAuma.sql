/****** Object:  Database uma    Script Date: 2/26/2024 12:56:16 PM ******/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'uma')
	DROP DATABASE [uma]
GO

CREATE DATABASE [uma]  ON (NAME = N'uma_Data', FILENAME = N'C:\SQLDATA_UMA\uma_Data.MDF' , SIZE = 3845, FILEGROWTH = 10%) LOG ON (NAME = N'uma_Log', FILENAME = N'C:\SQLDATA_UMA\uma_Log.LDF' , SIZE = 53848, FILEGROWTH = 10%)
 COLLATE SQL_Latin1_General_CP1_CI_AS
GO

exec sp_dboption N'uma', N'autoclose', N'false'
GO

exec sp_dboption N'uma', N'bulkcopy', N'false'
GO

exec sp_dboption N'uma', N'trunc. log', N'false'
GO

exec sp_dboption N'uma', N'torn page detection', N'false'
GO

exec sp_dboption N'uma', N'read only', N'false'
GO

exec sp_dboption N'uma', N'dbo use', N'false'
GO

exec sp_dboption N'uma', N'single', N'false'
GO

exec sp_dboption N'uma', N'autoshrink', N'false'
GO

exec sp_dboption N'uma', N'ANSI null default', N'false'
GO

exec sp_dboption N'uma', N'recursive triggers', N'false'
GO

exec sp_dboption N'uma', N'ANSI nulls', N'false'
GO

exec sp_dboption N'uma', N'concat null yields null', N'false'
GO

exec sp_dboption N'uma', N'cursor close on commit', N'false'
GO

exec sp_dboption N'uma', N'default to local cursor', N'false'
GO

exec sp_dboption N'uma', N'quoted identifier', N'false'
GO

exec sp_dboption N'uma', N'ANSI warnings', N'false'
GO

exec sp_dboption N'uma', N'auto create statistics', N'true'
GO

exec sp_dboption N'uma', N'auto update statistics', N'true'
GO

use [uma]
GO

/****** Object:  Table [dbo].[ADVISEONDISCHARGE]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ADVISEONDISCHARGE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ADVISEONDISCHARGE]
GO

/****** Object:  Table [dbo].[APPROVAL]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[APPROVAL]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[APPROVAL]
GO

/****** Object:  Table [dbo].[BACTRIAMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BACTRIAMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BACTRIAMASTER]
GO

/****** Object:  Table [dbo].[BEDCHARGE]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BEDCHARGE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BEDCHARGE]
GO

/****** Object:  Table [dbo].[BIOCHEM]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BIOCHEM]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BIOCHEM]
GO

/****** Object:  Table [dbo].[BIOCHEM1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BIOCHEM1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BIOCHEM1]
GO

/****** Object:  Table [dbo].[BIOCHEMREPORT]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BIOCHEMREPORT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BIOCHEMREPORT]
GO

/****** Object:  Table [dbo].[BIRTH]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BIRTH]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BIRTH]
GO

/****** Object:  Table [dbo].[BLOOD1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[BLOOD1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[BLOOD1]
GO

/****** Object:  Table [dbo].[CREXPORT]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CREXPORT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[CREXPORT]
GO

/****** Object:  Table [dbo].[DEATHCERTIFICATE]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEATHCERTIFICATE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEATHCERTIFICATE]
GO

/****** Object:  Table [dbo].[DEPTMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DEPTMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DEPTMASTER]
GO

/****** Object:  Table [dbo].[DISCHARGEMEDI]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DISCHARGEMEDI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DISCHARGEMEDI]
GO

/****** Object:  Table [dbo].[DOCDUMMY]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DOCDUMMY]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DOCDUMMY]
GO

/****** Object:  Table [dbo].[DRMASTER_MEDI]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DRMASTER_MEDI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DRMASTER_MEDI]
GO

/****** Object:  Table [dbo].[DST]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DST]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DST]
GO

/****** Object:  Table [dbo].[DST1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DST1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DST1]
GO

/****** Object:  Table [dbo].[GENHEAD]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[GENHEAD]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[GENHEAD]
GO

/****** Object:  Table [dbo].[INSURANCEMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[INSURANCEMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[INSURANCEMASTER]
GO

/****** Object:  Table [dbo].[LABMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LABMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LABMASTER]
GO

/****** Object:  Table [dbo].[MANTOU]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MANTOU]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MANTOU]
GO

/****** Object:  Table [dbo].[MEDIBILLDUMMY]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEDIBILLDUMMY]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEDIBILLDUMMY]
GO

/****** Object:  Table [dbo].[MEDICLOSINGSTOCK]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEDICLOSINGSTOCK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEDICLOSINGSTOCK]
GO

/****** Object:  Table [dbo].[MEDIPATIENT_JIRI]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEDIPATIENT_JIRI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEDIPATIENT_JIRI]
GO

/****** Object:  Table [dbo].[MEDIPURCHASE]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEDIPURCHASE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEDIPURCHASE]
GO

/****** Object:  Table [dbo].[MEDI_DISCOUNT]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEDI_DISCOUNT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEDI_DISCOUNT]
GO

/****** Object:  Table [dbo].[MEDI_QUOT]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEDI_QUOT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEDI_QUOT]
GO

/****** Object:  Table [dbo].[MEDREQUISITION]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MEDREQUISITION]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MEDREQUISITION]
GO

/****** Object:  Table [dbo].[MICROBACTRIA]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MICROBACTRIA]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MICROBACTRIA]
GO

/****** Object:  Table [dbo].[MICROSAMPLE]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MICROSAMPLE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MICROSAMPLE]
GO

/****** Object:  Table [dbo].[NHBILLDUMMY]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NHBILLDUMMY]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NHBILLDUMMY]
GO

/****** Object:  Table [dbo].[NHDAILYREC]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NHDAILYREC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NHDAILYREC]
GO

/****** Object:  Table [dbo].[OT1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OT1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OT1]
GO

/****** Object:  Table [dbo].[OT2]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OT2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OT2]
GO

/****** Object:  Table [dbo].[OUTDOORECONOMIC]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[OUTDOORECONOMIC]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[OUTDOORECONOMIC]
GO

/****** Object:  Table [dbo].[PATHMATERIAL]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PATHMATERIAL]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PATHMATERIAL]
GO

/****** Object:  Table [dbo].[PATIENT_HISTORY]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PATIENT_HISTORY]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PATIENT_HISTORY]
GO

/****** Object:  Table [dbo].[PERSONAL]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PERSONAL]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PERSONAL]
GO

/****** Object:  Table [dbo].[PRODUCTMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PRODUCTMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PRODUCTMASTER]
GO

/****** Object:  Table [dbo].[RBCMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RBCMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[RBCMASTER]
GO

/****** Object:  Table [dbo].[SEROLOGY]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SEROLOGY]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SEROLOGY]
GO

/****** Object:  Table [dbo].[SEROLOGY1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SEROLOGY1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SEROLOGY1]
GO

/****** Object:  Table [dbo].[STAFFDISCOUNT]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[STAFFDISCOUNT]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[STAFFDISCOUNT]
GO

/****** Object:  Table [dbo].[STOOL_URINE1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[STOOL_URINE1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[STOOL_URINE1]
GO

/****** Object:  Table [dbo].[TPAESTIMATE]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TPAESTIMATE]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TPAESTIMATE]
GO

/****** Object:  Table [dbo].[TPALEDGER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TPALEDGER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TPALEDGER]
GO

/****** Object:  Table [dbo].[TPALETTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TPALETTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TPALETTER]
GO

/****** Object:  Table [dbo].[TPAMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TPAMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TPAMASTER]
GO

/****** Object:  Table [dbo].[TPAMISCMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TPAMISCMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TPAMISCMASTER]
GO

/****** Object:  Table [dbo].[TPAPREAUTHO]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TPAPREAUTHO]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TPAPREAUTHO]
GO

/****** Object:  Table [dbo].[XRAYMASTER]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[XRAYMASTER]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[XRAYMASTER]
GO

/****** Object:  Table [dbo].[abdomen]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[abdomen]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[abdomen]
GO

/****** Object:  Table [dbo].[agentmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[agentmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[agentmaster]
GO

/****** Object:  Table [dbo].[bactriawisemedicine]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[bactriawisemedicine]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[bactriawisemedicine]
GO

/****** Object:  Table [dbo].[bdummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[bdummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[bdummy]
GO

/****** Object:  Table [dbo].[beddetails]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[beddetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[beddetails]
GO

/****** Object:  Table [dbo].[beddummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[beddummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[beddummy]
GO

/****** Object:  Table [dbo].[blood]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[blood]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[blood]
GO

/****** Object:  Table [dbo].[blood2]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[blood2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[blood2]
GO

/****** Object:  Table [dbo].[bloodreport]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[bloodreport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[bloodreport]
GO

/****** Object:  Table [dbo].[charge]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[charge]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[charge]
GO

/****** Object:  Table [dbo].[chargebak]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[chargebak]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[chargebak]
GO

/****** Object:  Table [dbo].[companymaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[companymaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[companymaster]
GO

/****** Object:  Table [dbo].[corpbilldummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[corpbilldummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[corpbilldummy]
GO

/****** Object:  Table [dbo].[cr_master]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[cr_master]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[cr_master]
GO

/****** Object:  Table [dbo].[crmedimaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[crmedimaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[crmedimaster]
GO

/****** Object:  Table [dbo].[diagonecticmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[diagonecticmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[diagonecticmaster]
GO

/****** Object:  Table [dbo].[diagoreport]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[diagoreport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[diagoreport]
GO

/****** Object:  Table [dbo].[diet]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[diet]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[diet]
GO

/****** Object:  Table [dbo].[doctorcharge]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[doctorcharge]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[doctorcharge]
GO

/****** Object:  Table [dbo].[doctormaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[doctormaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[doctormaster]
GO

/****** Object:  Table [dbo].[drspecialist]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[drspecialist]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[drspecialist]
GO

/****** Object:  Table [dbo].[dstnew]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[dstnew]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[dstnew]
GO

/****** Object:  Table [dbo].[dstreport]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[dstreport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[dstreport]
GO

/****** Object:  Table [dbo].[echorep]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[echorep]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[echorep]
GO

/****** Object:  Table [dbo].[estimate]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[estimate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[estimate]
GO

/****** Object:  Table [dbo].[generalrep]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[generalrep]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[generalrep]
GO

/****** Object:  Table [dbo].[genericname]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[genericname]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[genericname]
GO

/****** Object:  Table [dbo].[genmedmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[genmedmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[genmedmaster]
GO

/****** Object:  Table [dbo].[histopath]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[histopath]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[histopath]
GO

/****** Object:  Table [dbo].[hormonemaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[hormonemaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[hormonemaster]
GO

/****** Object:  Table [dbo].[icumedmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[icumedmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[icumedmaster]
GO

/****** Object:  Table [dbo].[itumedmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[itumedmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[itumedmaster]
GO

/****** Object:  Table [dbo].[jmedicinemaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[jmedicinemaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[jmedicinemaster]
GO

/****** Object:  Table [dbo].[johncharge]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[johncharge]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[johncharge]
GO

/****** Object:  Table [dbo].[jpur_inv_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[jpur_inv_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[jpur_inv_reg]
GO

/****** Object:  Table [dbo].[jpurmedi]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[jpurmedi]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[jpurmedi]
GO

/****** Object:  Table [dbo].[lab]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[lab]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[lab]
GO

/****** Object:  Table [dbo].[linen_ledger]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[linen_ledger]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[linen_ledger]
GO

/****** Object:  Table [dbo].[linendata]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[linendata]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[linendata]
GO

/****** Object:  Table [dbo].[linendataissue]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[linendataissue]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[linendataissue]
GO

/****** Object:  Table [dbo].[linenopen]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[linenopen]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[linenopen]
GO

/****** Object:  Table [dbo].[linenopenstore]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[linenopenstore]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[linenopenstore]
GO

/****** Object:  Table [dbo].[listofbill]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[listofbill]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[listofbill]
GO

/****** Object:  Table [dbo].[londery_challan]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[londery_challan]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[londery_challan]
GO

/****** Object:  Table [dbo].[mbill_ret_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mbill_ret_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mbill_ret_reg]
GO

/****** Object:  Table [dbo].[med_srl]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[med_srl]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[med_srl]
GO

/****** Object:  Table [dbo].[medgroup]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medgroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medgroup]
GO

/****** Object:  Table [dbo].[medi_bill_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medi_bill_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medi_bill_reg]
GO

/****** Object:  Table [dbo].[medi_out_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medi_out_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medi_out_reg]
GO

/****** Object:  Table [dbo].[medi_ret_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medi_ret_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medi_ret_reg]
GO

/****** Object:  Table [dbo].[medi_sup_sum]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medi_sup_sum]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medi_sup_sum]
GO

/****** Object:  Table [dbo].[medi_vat_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medi_vat_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medi_vat_reg]
GO

/****** Object:  Table [dbo].[medicinemaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medicinemaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medicinemaster]
GO

/****** Object:  Table [dbo].[medicinemaster2]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medicinemaster2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medicinemaster2]
GO

/****** Object:  Table [dbo].[medicineot]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medicineot]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medicineot]
GO

/****** Object:  Table [dbo].[medidelrec]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medidelrec]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medidelrec]
GO

/****** Object:  Table [dbo].[medistock]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medistock]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medistock]
GO

/****** Object:  Table [dbo].[medivatdummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[medivatdummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[medivatdummy]
GO

/****** Object:  Table [dbo].[metmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[metmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[metmaster]
GO

/****** Object:  Table [dbo].[metstock]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[metstock]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[metstock]
GO

/****** Object:  Table [dbo].[miscmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[miscmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[miscmaster]
GO

/****** Object:  Table [dbo].[mwidal]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[mwidal]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[mwidal]
GO

/****** Object:  Table [dbo].[newpathreport]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[newpathreport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[newpathreport]
GO

/****** Object:  Table [dbo].[nhbill_history]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhbill_history]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhbill_history]
GO

/****** Object:  Table [dbo].[nhbill_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhbill_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhbill_reg]
GO

/****** Object:  Table [dbo].[nhbillsummary]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhbillsummary]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhbillsummary]
GO

/****** Object:  Table [dbo].[nhfloorstock]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhfloorstock]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhfloorstock]
GO

/****** Object:  Table [dbo].[nhinv_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhinv_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhinv_reg]
GO

/****** Object:  Table [dbo].[nhpurchase]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhpurchase]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhpurchase]
GO

/****** Object:  Table [dbo].[nhpurchasedetails]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhpurchasedetails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhpurchasedetails]
GO

/****** Object:  Table [dbo].[nhrequisition]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhrequisition]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhrequisition]
GO

/****** Object:  Table [dbo].[nhstockdummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhstockdummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhstockdummy]
GO

/****** Object:  Table [dbo].[nhsupmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nhsupmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nhsupmaster]
GO

/****** Object:  Table [dbo].[nicumedmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nicumedmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nicumedmaster]
GO

/****** Object:  Table [dbo].[occupancy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[occupancy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[occupancy]
GO

/****** Object:  Table [dbo].[opdotmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[opdotmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[opdotmaster]
GO

/****** Object:  Table [dbo].[opdreport]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[opdreport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[opdreport]
GO

/****** Object:  Table [dbo].[otcase]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[otcase]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[otcase]
GO

/****** Object:  Table [dbo].[otcharge]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[otcharge]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[otcharge]
GO

/****** Object:  Table [dbo].[otequipment]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[otequipment]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[otequipment]
GO

/****** Object:  Table [dbo].[otgasmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[otgasmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[otgasmaster]
GO

/****** Object:  Table [dbo].[otmedicinemaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[otmedicinemaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[otmedicinemaster]
GO

/****** Object:  Table [dbo].[ottypemaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ottypemaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ottypemaster]
GO

/****** Object:  Table [dbo].[pass_word]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pass_word]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pass_word]
GO

/****** Object:  Table [dbo].[path_out_bill]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[path_out_bill]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[path_out_bill]
GO

/****** Object:  Table [dbo].[path_out_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[path_out_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[path_out_reg]
GO

/****** Object:  Table [dbo].[pathbilldummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pathbilldummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pathbilldummy]
GO

/****** Object:  Table [dbo].[pathbillreg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pathbillreg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pathbillreg]
GO

/****** Object:  Table [dbo].[patho_doctor]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[patho_doctor]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[patho_doctor]
GO

/****** Object:  Table [dbo].[patho_patient]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[patho_patient]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[patho_patient]
GO

/****** Object:  Table [dbo].[pathrate]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pathrate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pathrate]
GO

/****** Object:  Table [dbo].[pathrateXX]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pathrateXX]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pathrateXX]
GO

/****** Object:  Table [dbo].[pathtestdummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pathtestdummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pathtestdummy]
GO

/****** Object:  Table [dbo].[patientdata]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[patientdata]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[patientdata]
GO

/****** Object:  Table [dbo].[payslip]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[payslip]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[payslip]
GO

/****** Object:  Table [dbo].[placemed]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[placemed]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[placemed]
GO

/****** Object:  Table [dbo].[ptax]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ptax]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ptax]
GO

/****** Object:  Table [dbo].[pur_inv_reg]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pur_inv_reg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[pur_inv_reg]
GO

/****** Object:  Table [dbo].[purgroup]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[purgroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[purgroup]
GO

/****** Object:  Table [dbo].[purmedi]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[purmedi]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[purmedi]
GO

/****** Object:  Table [dbo].[purmedi2]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[purmedi2]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[purmedi2]
GO

/****** Object:  Table [dbo].[purmedibak]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[purmedibak]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[purmedibak]
GO

/****** Object:  Table [dbo].[purmedistore]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[purmedistore]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[purmedistore]
GO

/****** Object:  Table [dbo].[quirymedi]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[quirymedi]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[quirymedi]
GO

/****** Object:  Table [dbo].[quirymedi1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[quirymedi1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[quirymedi1]
GO

/****** Object:  Table [dbo].[salary]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[salary]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[salary]
GO

/****** Object:  Table [dbo].[salarytr]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[salarytr]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[salarytr]
GO

/****** Object:  Table [dbo].[serologyreport]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[serologyreport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[serologyreport]
GO

/****** Object:  Table [dbo].[smstable]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[smstable]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[smstable]
GO

/****** Object:  Table [dbo].[sticker]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sticker]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[sticker]
GO

/****** Object:  Table [dbo].[stockdummy]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[stockdummy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[stockdummy]
GO

/****** Object:  Table [dbo].[stockmedi]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[stockmedi]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[stockmedi]
GO

/****** Object:  Table [dbo].[stockmedi1]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[stockmedi1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[stockmedi1]
GO

/****** Object:  Table [dbo].[stockposition]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[stockposition]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[stockposition]
GO

/****** Object:  Table [dbo].[stool]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[stool]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[stool]
GO

/****** Object:  Table [dbo].[suppliermaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[suppliermaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[suppliermaster]
GO

/****** Object:  Table [dbo].[umastat]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[umastat]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[umastat]
GO

/****** Object:  Table [dbo].[urine]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[urine]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[urine]
GO

/****** Object:  Table [dbo].[userlist]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[userlist]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[userlist]
GO

/****** Object:  Table [dbo].[usgabu]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[usgabu]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[usgabu]
GO

/****** Object:  Table [dbo].[wardmaster]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[wardmaster]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[wardmaster]
GO

/****** Object:  Table [dbo].[xrayreport]    Script Date: 2/26/2024 12:56:18 PM ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[xrayreport]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[xrayreport]
GO

/****** Object:  Login Admin    Script Date: 2/26/2024 12:56:16 PM ******/
if not exists (select * from master.dbo.syslogins where loginname = N'Admin')
BEGIN
	declare @logindb nvarchar(132), @loginlang nvarchar(132) select @logindb = N'master', @loginlang = N'us_english'
	if @logindb is null or not exists (select * from master.dbo.sysdatabases where name = @logindb)
		select @logindb = N'master'
	if @loginlang is null or (not exists (select * from master.dbo.syslanguages where name = @loginlang) and @loginlang <> N'us_english')
		select @loginlang = @@language
	exec sp_addlogin N'Admin', null, @logindb, @loginlang
END
GO

/****** Object:  User dbo    Script Date: 2/26/2024 12:56:16 PM ******/
/****** Object:  Table [dbo].[ADVISEONDISCHARGE]    Script Date: 2/26/2024 12:56:18 PM ******/
CREATE TABLE [dbo].[ADVISEONDISCHARGE] (
	[PATIENT_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M1] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M2] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M3] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M4] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M5] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m6] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m7] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m8] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m9] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m10] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m11] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m12] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m13] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m14] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m15] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m16] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m17] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m18] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m19] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m20] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[f1] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[f2] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[f3] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[f4] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[f5] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di1] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di2] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di3] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di4] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di5] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di6] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di7] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di8] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di9] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di10] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di11] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di12] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di13] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di14] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di15] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di16] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di17] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di18] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di19] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[di20] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r1] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r2] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r3] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r4] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r5] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r6] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r7] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r8] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r9] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c1] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c2] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c3] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c4] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c5] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c6] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c7] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c8] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c9] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c10] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c11] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c12] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c13] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[c14] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v1] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v2] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v3] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v4] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v5] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v6] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v7] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v8] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v9] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v10] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v11] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v12] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v13] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v14] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v15] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v16] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v17] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v18] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v19] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v20] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[v21] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[APPROVAL]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[APPROVAL] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_CODE] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[POLICY_NO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CCN_NO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TPA] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[P_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[APVL_DT] [datetime] NULL ,
	[AMOUNT] [numeric](18, 0) NULL ,
	[ENTRY_DT] [datetime] NULL ,
	[ENTRY_BY] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_TIME] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BED_NO] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CO_PAYAMT] [numeric](18, 0) NULL ,
	[CO_PAYPER] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INSURANCE_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CORPORATE_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_TYPE] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BACTRIAMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[BACTRIAMASTER] (
	[BACTRIA] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BEDCHARGE]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[BEDCHARGE] (
	[PATIENT_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BEDNO1] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate1] [numeric](18, 2) NULL ,
	[FROMDATE1] [datetime] NULL ,
	[FROMTIME1] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TODATE1] [datetime] NULL ,
	[TOTIME1] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BEDNO2] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate2] [numeric](18, 2) NULL ,
	[FROMDATE2] [datetime] NULL ,
	[FROMTIME2] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TODATE2] [datetime] NULL ,
	[totime2] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno3] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate3] [numeric](18, 2) NULL ,
	[fromdate3] [datetime] NULL ,
	[fromtime3] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[todate3] [datetime] NULL ,
	[totime3] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno4] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate4] [numeric](18, 2) NULL ,
	[fromdate4] [datetime] NULL ,
	[fromtime4] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[todate4] [datetime] NULL ,
	[totime4] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno5] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate5] [numeric](18, 2) NULL ,
	[fromdate5] [datetime] NULL ,
	[fromtime5] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[todate5] [datetime] NULL ,
	[totime5] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_date] [datetime] NULL ,
	[bedno6] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate6] [numeric](18, 2) NULL ,
	[fromdate6] [datetime] NULL ,
	[fromtime6] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[todate6] [datetime] NULL ,
	[totime6] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno7] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate7] [numeric](18, 2) NULL ,
	[fromdate7] [datetime] NULL ,
	[fromtime7] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[todate7] [datetime] NULL ,
	[totime7] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno8] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate8] [numeric](18, 2) NULL ,
	[fromdate8] [datetime] NULL ,
	[fromtime8] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[todate8] [datetime] NULL ,
	[totime8] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[day1] [numeric](18, 0) NULL ,
	[day2] [numeric](18, 0) NULL ,
	[day3] [numeric](18, 0) NULL ,
	[day4] [numeric](18, 0) NULL ,
	[day5] [numeric](18, 0) NULL ,
	[day6] [numeric](18, 0) NULL ,
	[day7] [numeric](18, 0) NULL ,
	[day8] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BIOCHEM]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[BIOCHEM] (
	[CODE] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESCRIPTION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SEX] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[referred] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RESULT] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[UNIT] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVLM] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVHM] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVLF] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVHF] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TYPE] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SRL] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_DT] [datetime] NULL ,
	[corpt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NH_CODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BIOCHEM1]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[BIOCHEM1] (
	[CODE] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESCRIPTION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SEX] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RESULT] [numeric](18, 2) NULL ,
	[REMARK] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[UNIT] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVLM] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVHM] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVLF] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NVHF] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TYPE] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Rate] [numeric](18, 0) NULL ,
	[bcode] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RATE1] [numeric](18, 2) NULL ,
	[rate2] [numeric](18, 2) NULL ,
	[NORMAL] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BIOCHEMREPORT]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[BIOCHEMREPORT] (
	[SRL] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MCOM1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MCOM2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MCOM3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MATERIAL] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nh_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[head] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BIRTH]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[BIRTH] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[YEAR] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MON] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_CODE] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BIRTH_DATE] [datetime] NULL ,
	[TYPE_BIRTH] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SEX] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NO_ISSUE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FATHER] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[WEIGHT] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AGE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DRNAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[no_baby] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[BLOOD1]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[BLOOD1] (
	[CODE] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESCRIPTION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [numeric](12, 1) NULL ,
	[MARK] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[type] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate1] [numeric](18, 2) NULL ,
	[rate2] [numeric](18, 2) NULL ,
	[type_code] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CREXPORT]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[CREXPORT] (
	[PH_1] [varchar] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PH_2] [datetime] NULL ,
	[PH_3] [int] NULL ,
	[PH_4] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PH_5] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PH_6] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PH_7] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DE_1] [varchar] (4001) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DE_2] [varchar] (4001) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DE_3] [varchar] (4001) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DE_4] [float] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DEATHCERTIFICATE]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[DEATHCERTIFICATE] (
	[FINYR] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SRLNO] [numeric](18, 0) NULL ,
	[PATIENT_CODE] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EXP_DATE] [datetime] NULL ,
	[EXP_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FATHER_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PADD1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PADD2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PADD3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SEX] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AGE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADMIT_DATE] [datetime] NULL ,
	[ADMIT_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BEDNO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT1] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT2] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT3] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT5] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT6] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT7] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DEPTMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[DEPTMASTER] (
	[DEPT] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DISCHARGEMEDI]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[DISCHARGEMEDI] (
	[PATIENT_CODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TAB_INJ] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[A1] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DRUG] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DOSES] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[A2] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ROUTE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[A3] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FREQUENCY] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TIMING] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[A4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DURATION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LASTGOT] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NEXTDOSE] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DOCDUMMY]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[DOCDUMMY] (
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PER] [numeric](18, 3) NULL ,
	[BILAMOUNT] [numeric](18, 2) NULL ,
	[PERAMOUNT] [numeric](18, 2) NULL ,
	[STATUS] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdr] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REFBY] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REF_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[serv_per] [numeric](18, 3) NULL ,
	[serv_amt] [numeric](18, 2) NULL ,
	[dr_com] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[adm_dt] [datetime] NULL ,
	[dis_dt] [datetime] NULL ,
	[STATUS_DESC] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SL_NO] [numeric](18, 0) NULL ,
	[admit_bed] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[disch_bed] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mr_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DRMASTER_MEDI]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[DRMASTER_MEDI] (
	[DR_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DST]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[DST] (
	[DRUG] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CONC_P_DIS] [numeric](4, 0) NULL ,
	[DISC] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SRL] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_DT] [datetime] NULL ,
	[type] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NH_CODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DST1]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[DST1] (
	[SRL] [numeric](18, 0) NULL ,
	[DRUG] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CONC_P_DIS] [numeric](4, 0) NULL ,
	[DRUG_GROUP] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DISC] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CODE] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 0) NULL ,
	[rate1] [numeric](18, 2) NULL ,
	[rate2] [numeric](18, 2) NULL ,
	[srlno] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[GENHEAD]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[GENHEAD] (
	[HEAD] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[INSURANCEMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[INSURANCEMASTER] (
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PHONE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FAX] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EMAIL] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[LABMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[LABMASTER] (
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MANTOU]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MANTOU] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bed_no] [nvarchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[heading] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dose] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[erythema] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[induration] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[result] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inoculation_dt] [datetime] NULL ,
	[report_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MEDIBILLDUMMY]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MEDIBILLDUMMY] (
	[BILL_NO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_DT] [datetime] NULL ,
	[BILL_AMT] [numeric](18, 0) NULL ,
	[ADV_AMT] [numeric](18, 0) NULL ,
	[DUE_AMT] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MEDICLOSINGSTOCK]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MEDICLOSINGSTOCK] (
	[MED_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OPEN_QTY] [numeric](18, 0) NULL ,
	[PURCHASE_QTY] [numeric](18, 0) NULL ,
	[SALE_QTY] [numeric](18, 0) NULL ,
	[CLOSE_QTY] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MEDIPATIENT_JIRI]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MEDIPATIENT_JIRI] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_NO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_DATE] [datetime] NULL ,
	[PATIENT_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DUE] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MEDIPURCHASE]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MEDIPURCHASE] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl] [numeric](6, 0) NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier_name] [nchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity] [numeric](18, 0) NULL ,
	[qtyin_unit] [numeric](18, 0) NULL ,
	[free_qty] [numeric](18, 0) NULL ,
	[unit] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[valid_dt] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[manu_dt] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[each_sale] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[paydays] [numeric](18, 0) NULL ,
	[quotation] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[qdate] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chalanno] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chalandate] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grnno] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grnsrl] [numeric](18, 0) NULL ,
	[recqty] [numeric](18, 0) NULL ,
	[dueqty] [numeric](18, 0) NULL ,
	[stax] [numeric](18, 0) NULL ,
	[atten] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[term] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[discount] [numeric](18, 2) NULL ,
	[ord_qty] [numeric](18, 0) NULL ,
	[unit_id] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PR_MORE] [numeric](18, 2) NULL ,
	[ADD_SALE] [numeric](18, 2) NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[vat] [numeric](18, 2) NULL ,
	[cst] [numeric](18, 2) NULL ,
	[vat2] [numeric](18, 2) NULL ,
	[disc2] [numeric](18, 2) NULL ,
	[store] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MEDI_DISCOUNT]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MEDI_DISCOUNT] (
	[DISC_PER] [numeric](18, 2) NULL ,
	[DATE] [datetime] NULL ,
	[TIME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COM_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MEDI_QUOT]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MEDI_QUOT] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SUPP_CODE] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SUPP_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MED_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QUOT_DATE] [datetime] NULL ,
	[QUOT_NO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VALID_DATE] [datetime] NULL ,
	[QUANTITY] [numeric](18, 2) NULL ,
	[MRP] [numeric](18, 0) NULL ,
	[RATE] [numeric](18, 0) NULL ,
	[REMARKS] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MEDREQUISITION]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MEDREQUISITION] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[YEAR] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INDEN] [numeric](18, 0) NULL ,
	[PATIENT_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FLOOR] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ISSUE_DT] [datetime] NULL ,
	[MEDICINE] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QUANTITY] [numeric](18, 0) NULL ,
	[BATCH_NO] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SALERATE] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MICROBACTRIA]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MICROBACTRIA] (
	[BACTRIA] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SAMPLE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QTY] [numeric](18, 0) NULL ,
	[PER_CENT] [numeric](18, 2) NULL ,
	[PRODUCER] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HG_S] [numeric](18, 0) NULL ,
	[SENSITIVE] [numeric](18, 0) NULL ,
	[REGISTANT] [numeric](18, 0) NULL ,
	[MEDICINE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mark] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[MICROSAMPLE]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[MICROSAMPLE] (
	[SAMPLE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TOTAL_SAMPLE] [numeric](18, 0) NULL ,
	[VE_SAMPLE] [numeric](18, 0) NULL ,
	[ISOL_SAMPLE] [numeric](18, 0) NULL ,
	[PER_CENT] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NHBILLDUMMY]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[NHBILLDUMMY] (
	[PATIENT_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_NO] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_DT] [datetime] NULL ,
	[AMOUNT] [numeric](18, 2) NULL ,
	[VAT_AMT] [numeric](18, 2) NULL ,
	[tax_amt] [numeric](18, 2) NULL ,
	[non_tax_amt] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NHDAILYREC]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[NHDAILYREC] (
	[BILL_NO] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_amount] [numeric](18, 2) NULL ,
	[R_AMOUNT] [numeric](18, 2) NULL ,
	[cr_amount] [numeric](18, 2) NULL ,
	[V_AMOUNT] [numeric](18, 2) NULL ,
	[TYPE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_CODE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[paid_by] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pay_mode] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[due_amt] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[OT1]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[OT1] (
	[ot_date] [datetime] NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fromtime] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[totime] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[typeofoperation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[operated] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grade] [numeric](18, 0) NULL ,
	[otst] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oten] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[OT2]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[OT2] (
	[ot_date] [datetime] NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fromtime] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[totime] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[typeofoperation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[operated] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grade] [numeric](18, 0) NULL ,
	[otst] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oten] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[OUTDOORECONOMIC]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[OUTDOORECONOMIC] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[YEAR] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Patient_code] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[area] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[area2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[area3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[date] [datetime] NULL ,
	[reg_dt1] [datetime] NULL ,
	[strem] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[time] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[booking_time] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SRL_DT] [numeric](18, 0) NULL ,
	[card_no] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VALID_DT] [datetime] NULL ,
	[NEW_ISSUE] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[shift] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PATHMATERIAL]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[PATHMATERIAL] (
	[MATERIAL] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PATIENT_HISTORY]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[PATIENT_HISTORY] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[summ_case] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[diagnosis] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[test_name_out] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[arrange_test] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[out_side_test] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[brief_history] [nvarchar] (300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[blood_arrange] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[blood_group] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[blood_unit] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[arrange_time] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ot_history] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[shifting] [nvarchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bed_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[shift_when] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[discharge] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dorb] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[transfer] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_stat1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_stat2] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_stat3] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_stat4] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[credit] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[tpa] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdr1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdt1] [datetime] NULL ,
	[reftime1] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdr2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdt2] [datetime] NULL ,
	[reftime2] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdr3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdt3] [datetime] NULL ,
	[reftime3] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdr4] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdt4] [datetime] NULL ,
	[reftime4] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdr5] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[refdt5] [datetime] NULL ,
	[reftime5] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PERSONAL]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[PERSONAL] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[YEAR] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[POST] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[JDATE] [datetime] NULL ,
	[RENUE_DT] [datetime] NULL ,
	[EXPERIENCE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EDUCATION] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TRAINING] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EXTRA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BIRTH_DT] [datetime] NULL ,
	[AGE] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ID_MARKS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDR_PRE] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDR_PER] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COURT_CASE] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CASE_DETAILS] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FATHER_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[F_AGE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[F_JOB] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MOTHER_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M_AGE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[M_JOB] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DEPENDANT] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DISEASES] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DISES_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MARRIED] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HW_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HW_AGE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HW_JOB] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HW_JOB_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MALE_C] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FEMALE_C] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CNAME1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CAGE1] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CNAME2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CAGE2] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CNAME3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CAGE3] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CNAME4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CAGE4] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HEIGHT] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[WEIGHT] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SPECTACLES] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CORRECTED] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BLOOD_GROUP] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HYPERTENSIVE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DIABETIC] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ALLERGIC] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ALLERGIC_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HEART] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HEART_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ORTHO] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ORTHO_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SKIN] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SKIN_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EPILEPTIC] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EPILEPTIC_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GYNAE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GYNAE_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INOCULATION] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HEPATITIS] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PRESENT_DISEASE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PD_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MAJOR_DISEAS] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MAJOR_DETAILS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INSUR_FATHER] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INSUR_MOTHER] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INSUR_SELF] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INSUR_SPOUSE] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INSUR_CHILD] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DATA_LOCK] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PRODUCTMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[PRODUCTMASTER] (
	[PRODUCT] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RBCMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[RBCMASTER] (
	[NAME] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SEROLOGY]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[SEROLOGY] (
	[CODE] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEST] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RESULT] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SRL] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_DT] [datetime] NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NH_CODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SEROLOGY1]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[SEROLOGY1] (
	[CODE] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEST] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RESULT] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[rate1] [numeric](18, 2) NULL ,
	[rate2] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[STAFFDISCOUNT]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[STAFFDISCOUNT] (
	[DISCOUNT] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[STOOL_URINE1]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[STOOL_URINE1] (
	[REPNM] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FF1] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FF2] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FF3] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FF4] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FF5] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FF6] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TPAESTIMATE]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[TPAESTIMATE] (
	[PATIENT_CODE] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EST_DATE] [datetime] NULL ,
	[ITEM_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESCRIPTION] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AMT] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TPALEDGER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[TPALEDGER] (
	[TPA_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SUBMIT_DT] [datetime] NULL ,
	[BILL_DT] [datetime] NULL ,
	[PATIENT_CODE] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_NO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AMT_DR] [numeric](18, 2) NULL ,
	[AMT_CR] [numeric](18, 2) NULL ,
	[NARRAT] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TPALETTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[TPALETTER] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_CODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TPA_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LETTER_DT] [datetime] NULL ,
	[BILL_NO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_AMT] [numeric](18, 0) NULL ,
	[CARD_NO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT1] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT2] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT3] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT4] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT5] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT6] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT7] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT8] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT9] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT10] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT11] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT12] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT13] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT14] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT15] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT16] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT17] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT18] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT19] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT20] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT21] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT22] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT23] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT24] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT25] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT26] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT27] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT28] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT29] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT30] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT31] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT32] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT33] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT34] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT35] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT36] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT37] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT38] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT39] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT40] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OFFICER] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESG] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_BY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_TIME] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TPAMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[TPAMASTER] (
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADDRESS3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PHONE] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FAX] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EMAIL] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PIN] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate_status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TPAMISCMASTER]    Script Date: 2/26/2024 12:56:19 PM ******/
CREATE TABLE [dbo].[TPAMISCMASTER] (
	[ITEM] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TPAPREAUTHO]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[TPAPREAUTHO] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_CODE] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TPA_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LETTER_DT] [datetime] NULL ,
	[BILL_NO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_AMT] [numeric](18, 2) NULL ,
	[CARD_NO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OFFICER] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESG] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_BY] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT1] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT2] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT3] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT4] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT5] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT6] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT7] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT8] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT9] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT10] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT11] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT12] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT13] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT14] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT15] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT16] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT17] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT18] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT19] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT20] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT21] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT22] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT23] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT24] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT34] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT35] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[XRAYMASTER]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[XRAYMASTER] (
	[HEAD] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT2] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT3] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT5] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT6] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT7] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT8] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT9] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT10] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT11] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[abdomen]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[abdomen] (
	[head] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text1] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text4] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text5] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text6] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text7] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text8] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text9] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text10] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text11] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text12] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text13] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text14] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text15] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT16] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text17] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text18] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT19] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT20] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT21] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT22] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[agentmaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[agentmaster] (
	[code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[com_per] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[bactriawisemedicine]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[bactriawisemedicine] (
	[medicine] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bactria] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sample] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mark_i] [numeric](18, 0) NULL ,
	[mark_s] [numeric](18, 0) NULL ,
	[sample_qty] [numeric](18, 0) NULL ,
	[per_cent] [numeric](18, 2) NULL ,
	[i_per] [numeric](18, 2) NULL ,
	[s_per] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[bdummy]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[bdummy] (
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doc_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[btype] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bcharge] [numeric](18, 2) NULL ,
	[dcharge] [numeric](18, 2) NULL ,
	[scharge] [numeric](18, 2) NULL ,
	[mcharge] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[beddetails]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[beddetails] (
	[type] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bed_serial] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[booked] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[doctor_fee] [numeric](18, 2) NULL ,
	[BED_NO] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TPA_RATE] [numeric](18, 0) NULL ,
	[IAL_RATE] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[beddummy]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[beddummy] (
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doc_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[btype] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bcharge] [numeric](18, 2) NULL ,
	[dcharge] [numeric](18, 2) NULL ,
	[scharge] [numeric](18, 2) NULL ,
	[mcharge] [numeric](18, 2) NULL ,
	[dr_com] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[blood]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[blood] (
	[CODE] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESCRIPTION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [numeric](12, 1) NULL ,
	[MARK] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SRL] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_DT] [datetime] NULL ,
	[type] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NH_CODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[blood2]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[blood2] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[head] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_NAME] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REP_DT] [datetime] NULL ,
	[group_code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NH_CODE] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (26) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd1] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd2] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd3] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd4] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd5] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd6] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd7] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd8] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd8i] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd8ii] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd9] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd10] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd11] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd12] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd13] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd14] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd15] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd16] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd17] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd18] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd19] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd20] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd21] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd22] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd23] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd24] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd25] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd251] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd26] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd27] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd230] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd240] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd28] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd29] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [varchar] (350) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd30] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd31] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd32] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd33] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd34] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd35] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd36] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd37] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd38] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd39] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd40] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd41] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd42] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd43] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd44] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd45] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd46] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd47] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd48] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd49] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd50] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd60] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r4] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r5] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r6] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r7] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r8] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r9] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r10] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r11] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r12] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r13] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r14] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r15] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r16] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r17] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r18] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r19] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r20] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r21] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r22] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r23] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r24] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r25] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r26] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r27] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r28] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r29] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r30] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r31] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r32] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r33] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r34] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r35] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r36] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r37] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r38] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r39] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r40] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r41] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r42] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r43] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r44] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r45] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r46] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r47] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r48] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r49] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[r50] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u1] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u2] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u3] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u4] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u5] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u6] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u7] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u8] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u9] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u10] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u11] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u12] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u13] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u14] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u15] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u16] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u17] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u18] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u19] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u20] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u21] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u22] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u23] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u24] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u25] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u26] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u27] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u28] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u29] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u30] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u31] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u32] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u33] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u34] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u35] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u36] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u37] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u38] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u39] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u40] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u41] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u42] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u43] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u44] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u45] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u46] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u47] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u48] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u49] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u50] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[u51] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pathologist] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_digri] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[bloodreport]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[bloodreport] (
	[srl] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[charge]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[charge] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[subtype] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chg_date] [datetime] NULL ,
	[quantity] [numeric](18, 2) NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[ret_qty] [numeric](18, 2) NULL ,
	[ret_date] [datetime] NULL ,
	[amount] [numeric](18, 2) NULL ,
	[paid] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[entry_dt] [datetime] NULL ,
	[ret_amount] [numeric](18, 2) NULL ,
	[exp_dt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[staff] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[staff_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[corpt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STATUS] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VAT] [numeric](18, 2) NULL ,
	[VAT2] [numeric](18, 2) NULL ,
	[ent_time] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[time_ent] [timestamp] NULL ,
	[med_group] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INV_NO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vatamt] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[vatamtret] [numeric](18, 2) NULL ,
	[BED_NO] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_NAME] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grn_no] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[non_title] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lsd_drug] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_rate] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[sgst_ret] [numeric](18, 2) NULL ,
	[cgst_ret] [numeric](18, 2) NULL ,
	[mrp_rate] [numeric](18, 2) NULL ,
	[hsn_code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[out_sorce] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[chargebak]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[chargebak] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[subtype] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chg_date] [datetime] NULL ,
	[quantity] [numeric](18, 2) NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[ret_qty] [numeric](18, 2) NULL ,
	[ret_date] [datetime] NULL ,
	[amount] [numeric](18, 2) NULL ,
	[paid] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[entry_dt] [datetime] NULL ,
	[ret_amount] [numeric](18, 2) NULL ,
	[exp_dt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[companymaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[companymaster] (
	[company] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address3] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[corpbilldummy]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[corpbilldummy] (
	[srl] [numeric](7, 0) NULL ,
	[path_code] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[test] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 0) NULL ,
	[emp_id] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_dt] [datetime] NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[entry_dt] [datetime] NULL ,
	[chln_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chln_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[cr_master]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[cr_master] (
	[code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sl_no] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[crmedimaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[crmedimaster] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 2) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[med_date] [datetime] NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[place] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inden_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[code] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[IND_NO] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INDEN_TAG] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GRNNO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_DT] [datetime] NULL ,
	[ENTRY_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[diagonecticmaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[diagonecticmaster] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[billno] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_date] [datetime] NULL ,
	[amount] [numeric](18, 2) NULL ,
	[diagon_type] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[diagoreport]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[diagoreport] (
	[code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[rep_hed] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nh_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[result] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvlm] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvhm] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvlf] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvhf] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[diet]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[diet] (
	[patient_code] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[hight] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[weight] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[diagnosis] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[date] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[energy] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[protein] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fat] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cho] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cereals] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pulse] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[veg] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ground] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fruits] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fish] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chicken] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[egg] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[milk] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sugar] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oil] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[salt] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[jam] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[water] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text1] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[doctorcharge]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[doctorcharge] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[visit] [numeric](18, 0) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_date] [datetime] NULL ,
	[entry_dt] [datetime] NULL ,
	[narration] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[doctormaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[doctormaster] (
	[code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[qualification] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[specialist] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phoner] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mobile] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fax] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[visit] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fee] [numeric](18, 2) NULL ,
	[com_per] [numeric](18, 3) NULL ,
	[code1] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl] [numeric](7, 0) NULL ,
	[PATHOLOGY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[out_door] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reg_no] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mr_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[drspecialist]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[drspecialist] (
	[specialist] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[dstnew]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[dstnew] (
	[srl] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[material] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[antibiogram] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[referred] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_head] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dept] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[collect_date] [datetime] NULL ,
	[pathology] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[digri] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PRODUCT] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PRODUCT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PRODUCT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PRODUCT_PER] [numeric](18, 2) NULL ,
	[ca] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gn] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cult1] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cult2] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cult3] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cult4] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cult5] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[colony] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chk] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[remark] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[no_growth] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BACTRIA] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BACTRIA2] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BACTRIA3] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BACTRIA4] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[note] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text5] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text6] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text7] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text8] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text9] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text10] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text11] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text12] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text13] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text14] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text15] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text16] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text17] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text18] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text19] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text20] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text21] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text22] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text23] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text24] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text25] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text26] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text27] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text28] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text29] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text30] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text31] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text32] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text33] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text34] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text35] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text36] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text37] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text38] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text39] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text40] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text41] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text42] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text43] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text44] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text45] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text46] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text47] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text48] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text49] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text50] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text51] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text52] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text53] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text54] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text55] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text56] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text57] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text58] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text59] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text60] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text61] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text62] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text63] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text64] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text65] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text66] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text67] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text68] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text69] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text70] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text71] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text72] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text73] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text74] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text75] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text76] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text77] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text78] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text79] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text80] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text81] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text82] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text83] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text84] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text85] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text86] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text87] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text88] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text89] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text90] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text91] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text92] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text93] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text94] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text95] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text96] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text97] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text98] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text99] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text100] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text101] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text102] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text103] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text104] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text105] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text106] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text107] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text108] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text109] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text110] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text111] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text112] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text113] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text114] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text115] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text116] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text117] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text118] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text119] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text120] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text121] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text122] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text123] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text124] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text125] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text126] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text127] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text128] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text129] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text130] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text131] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text132] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text133] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text134] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text135] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text136] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text137] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text138] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text139] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_BY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_TIME] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ZNSTAIN] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OTHER] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GRAMSTAIN] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OTHER_AFB] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HIGH1] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HIGH2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HIGH3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COLONY1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COLONY2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COLONY3] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OUT_SAMPLE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[dstreport]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[dstreport] (
	[srl] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[echorep]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[echorep] (
	[path_code] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[referred] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[report_hed] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REG_NO] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text1] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text4] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text5] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text6] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text7] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text8] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text9] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text10] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text11] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text12] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text13] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text14] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text15] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text16] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text17] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text18] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text19] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text20] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text21] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text22] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text23] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text24] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text25] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text26] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text27] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text28] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text29] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text30] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text31] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text32] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text33] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text34] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text35] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text36] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text37] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text38] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text39] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text40] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text41] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[estimate]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[estimate] (
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[admit_dt] [datetime] NULL ,
	[bed_ch] [numeric](18, 0) NULL ,
	[medi_ch] [numeric](18, 0) NULL ,
	[path_ch] [numeric](18, 0) NULL ,
	[misc_ch] [numeric](18, 0) NULL ,
	[ot_ch] [numeric](18, 0) NULL ,
	[doctor_ch] [numeric](18, 0) NULL ,
	[advance] [numeric](18, 0) NULL ,
	[gross_tot] [numeric](18, 0) NULL ,
	[net_tot] [numeric](18, 0) NULL ,
	[sur_ch] [numeric](18, 0) NULL ,
	[radi] [numeric](18, 0) NULL ,
	[medl] [numeric](18, 0) NULL ,
	[MEDICLAIM] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STATUS] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PSTST] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[APPROVED] [numeric](18, 0) NULL ,
	[TPA] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OTHER_INV] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[generalrep]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[generalrep] (
	[final] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reg_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[referred] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_head] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[hed] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[text1] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text4] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text5] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text6] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text7] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text8] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text9] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text10] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text11] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text12] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text13] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text14] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text15] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text16] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text17] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text18] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text19] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text20] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text21] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text22] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text23] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text24] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text25] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text26] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text27] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text28] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text29] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text30] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text31] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text32] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text33] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT34] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT35] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT36] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[genericname]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[genericname] (
	[generic_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[genmedmaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[genmedmaster] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INV_NO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 0) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[med_date] [datetime] NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[place] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ind_no] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inden_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_DT] [datetime] NULL ,
	[CODE] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[histopath]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[histopath] (
	[path_code] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BED_NO] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_by] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross1] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross2] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross3] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross4] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross5] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross6] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross7] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross8] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross9] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross10] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gross11] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[uterus] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cervix] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[find3] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[find4] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[find5] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[find6] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[find7] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[overies] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[tubes] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[diagno] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[slide_no] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[date] [datetime] NULL ,
	[collect_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[hormonemaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[hormonemaster] (
	[code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvm] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvf1] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvf2] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvf3] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvf4] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvc1] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvc2] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[icumedmaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[icumedmaster] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 0) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[med_date] [datetime] NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[inden_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[itumedmaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[itumedmaster] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 0) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[med_date] [datetime] NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[inden_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[jmedicinemaster]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[jmedicinemaster] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_group] [int] NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [int] NULL ,
	[med_type] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[remarks] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[tot_pur] [numeric](18, 2) NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[reord_qty] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[johncharge]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[johncharge] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SUPP_CODE] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SUPP_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MED_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QUOT_DATE] [datetime] NULL ,
	[QUOT_NO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VALID_DATE] [datetime] NULL ,
	[QUANTITY] [numeric](18, 2) NULL ,
	[MRP] [numeric](18, 0) NULL ,
	[RATE] [numeric](18, 0) NULL ,
	[REMARKS] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[patient_code] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amount] [numeric](18, 0) NULL ,
	[bill_no] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[jpur_inv_reg]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[jpur_inv_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_dt] [datetime] NULL ,
	[inv_amt] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[net_inv_amt] [numeric](18, 2) NULL ,
	[entry_dt] [datetime] NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[due_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[jpurmedi]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[jpurmedi] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_date] [datetime] NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [datetime] NULL ,
	[unit_id] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[noof_unit] [numeric](18, 2) NULL ,
	[rate_unit] [numeric](18, 2) NULL ,
	[tot_rate] [numeric](18, 2) NULL ,
	[ad_percent] [numeric](18, 2) NULL ,
	[mr_percent] [numeric](18, 2) NULL ,
	[tot_calc] [numeric](18, 2) NULL ,
	[qtyin_unit] [numeric](18, 2) NULL ,
	[tot_qty] [numeric](18, 2) NULL ,
	[rate_unqty] [numeric](18, 2) NULL ,
	[up_flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[free_qty] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[ad_salcent] [numeric](18, 2) NULL ,
	[sale_unit] [numeric](18, 2) NULL ,
	[type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[days] [numeric](18, 0) NULL ,
	[due_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[lab]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[lab] (
	[ot_date] [datetime] NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fromtihme] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[totime] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[typeofoperation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[operated] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gvrade] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[linen_ledger]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[linen_ledger] (
	[date] [datetime] NULL ,
	[challan_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[item_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dept] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[stock_qty] [decimal](18, 0) NULL ,
	[issue_qty] [decimal](18, 0) NULL ,
	[description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[linendata]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[linendata] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [decimal](18, 0) NULL ,
	[CHALLAN_NO] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[floor] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[item] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [decimal](18, 0) NULL ,
	[RETURN_QTY] [decimal](18, 0) NULL ,
	[damage_ret_qty] [decimal](18, 0) NULL ,
	[issue_qty] [decimal](18, 0) NULL ,
	[rece_qty] [decimal](18, 0) NULL ,
	[darty_qty] [decimal](18, 0) NULL ,
	[due_qty] [decimal](18, 0) NULL ,
	[damage_qty] [decimal](18, 0) NULL ,
	[carried_over] [decimal](18, 0) NULL ,
	[T_date] [datetime] NULL ,
	[issue_date] [datetime] NULL ,
	[challan_londery] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SEND_LONDERY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LONDERY_CHLN_DT] [datetime] NULL ,
	[return_LONDERY] [decimal](18, 0) NULL ,
	[damage_londery] [decimal](18, 0) NULL ,
	[description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[linendataissue]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[linendataissue] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [decimal](18, 0) NULL ,
	[CHALLAN_NO] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[floor] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[item] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [decimal](18, 0) NULL ,
	[RETURN_QTY] [decimal](18, 0) NULL ,
	[damage_ret_qty] [decimal](18, 0) NULL ,
	[issue_qty] [decimal](18, 0) NULL ,
	[rece_qty] [decimal](18, 0) NULL ,
	[due_qty] [decimal](18, 0) NULL ,
	[damage_qty] [decimal](18, 0) NULL ,
	[carried_over] [decimal](18, 0) NULL ,
	[T_date] [datetime] NULL ,
	[issue_date] [datetime] NULL ,
	[stock_hand] [decimal](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[linenopen]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[linenopen] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[item] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [decimal](18, 0) NULL ,
	[date] [datetime] NULL ,
	[floor] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[linenopenstore]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[linenopenstore] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[item] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [decimal](18, 0) NULL ,
	[issue_qty] [decimal](18, 0) NULL ,
	[date] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[listofbill]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[listofbill] (
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_date] [datetime] NULL ,
	[type] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[subtype] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amount] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[bill_amount] [numeric](18, 2) NULL ,
	[m] [numeric](18, 2) NULL ,
	[j] [numeric](18, 2) NULL ,
	[i] [numeric](18, 2) NULL ,
	[g] [numeric](18, 2) NULL ,
	[o] [numeric](18, 2) NULL ,
	[r] [numeric](18, 2) NULL ,
	[b] [numeric](18, 2) NULL ,
	[f] [numeric](18, 2) NULL ,
	[d] [numeric](18, 2) NULL ,
	[n] [numeric](18, 2) NULL ,
	[l] [numeric](18, 2) NULL ,
	[x] [numeric](18, 2) NULL ,
	[v] [numeric](18, 2) NULL ,
	[s] [numeric](18, 2) NULL ,
	[SU] [numeric](18, 2) NULL ,
	[STAX] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[londery_challan]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[londery_challan] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[challan_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[challan_dt] [datetime] NULL ,
	[item_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[qty_issue] [numeric](18, 0) NULL ,
	[londery_chln_dt] [datetime] NULL ,
	[return_qty] [numeric](18, 0) NULL ,
	[damage_qty] [numeric](18, 0) NULL ,
	[floor] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity_issue] [numeric](18, 0) NULL ,
	[return_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[mbill_ret_reg]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[mbill_ret_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[bill_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_date] [datetime] NULL ,
	[bill_amt] [numeric](18, 2) NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[stax] [numeric](18, 2) NULL ,
	[surcharge_rate] [numeric](18, 2) NULL ,
	[surcharge] [numeric](18, 2) NULL ,
	[net_amt] [numeric](18, 2) NULL ,
	[entry_dt] [datetime] NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_dt] [datetime] NULL ,
	[muser] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[med_srl]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[med_srl] (
	[serial] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medgroup]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[medgroup] (
	[medgroup] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medi_bill_reg]    Script Date: 2/26/2024 12:56:20 PM ******/
CREATE TABLE [dbo].[medi_bill_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[srl_cr] [numeric](18, 0) NULL ,
	[bill_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_date] [datetime] NULL ,
	[bill_amt] [numeric](18, 2) NULL ,
	[bill_amtm] [numeric](18, 2) NULL ,
	[bill_amts] [numeric](18, 2) NULL ,
	[MED_GROUP] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[st_rate] [numeric](18, 2) NULL ,
	[stax] [numeric](18, 2) NULL ,
	[surcharge_rate] [numeric](18, 2) NULL ,
	[surcharge] [numeric](18, 2) NULL ,
	[net_amt] [numeric](18, 2) NULL ,
	[entry_dt] [datetime] NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[staff] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[muser] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[net_amt_ret] [numeric](18, 2) NULL ,
	[vatamt] [numeric](18, 2) NULL ,
	[vatamtm] [numeric](18, 2) NULL ,
	[vatamts] [numeric](18, 2) NULL ,
	[vatamtmr] [numeric](18, 2) NULL ,
	[vatamtsr] [numeric](18, 2) NULL ,
	[pay_mode] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADV_AMT] [numeric](18, 0) NULL ,
	[TOT_ADV] [numeric](18, 0) NULL ,
	[DUE_AMT] [numeric](18, 0) NULL ,
	[ENTRY_BY] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[disc_per] [numeric](18, 2) NULL ,
	[disc_amt] [numeric](18, 2) NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_rate] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL ,
	[sgst_ret] [numeric](18, 2) NULL ,
	[cgst_ret] [numeric](18, 2) NULL ,
	[gst_tot_ret] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medi_out_reg]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medi_out_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sale_date] [datetime] NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_group] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity] [numeric](18, 2) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[ref_date] [datetime] NULL ,
	[rate] [numeric](18, 2) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[bill_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[entry_dt] [datetime] NULL ,
	[exp_date] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[grnno] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_order] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFF] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[muser] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VAT] [numeric](18, 2) NULL ,
	[VAT2] [numeric](18, 2) NULL ,
	[cst] [numeric](18, 2) NULL ,
	[ent_time] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[time_ent] [timestamp] NULL ,
	[vatamt] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[address] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[disc_per] [numeric](18, 2) NULL ,
	[disc_amt] [numeric](18, 2) NULL ,
	[cost_price] [numeric](18, 2) NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_rate] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL ,
	[hsn_code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medi_ret_reg]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medi_ret_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ret_date] [datetime] NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity] [numeric](18, 2) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[ref_date] [datetime] NULL ,
	[rate] [numeric](18, 2) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[bill_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[entry_dt] [datetime] NULL ,
	[exp_date] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_dt] [datetime] NULL ,
	[INV_NO2] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vat] [numeric](18, 2) NULL ,
	[vatamt] [numeric](18, 2) NULL ,
	[vat2] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[GRNNO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFF] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DISC_PER] [numeric](18, 0) NULL ,
	[DISC_AMT] [numeric](18, 0) NULL ,
	[COST_PRICE] [numeric](18, 2) NULL ,
	[hsn_code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medi_sup_sum]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medi_sup_sum] (
	[supplier] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[total] [numeric](18, 2) NULL ,
	[c_total] [numeric](18, 2) NULL ,
	[INV_NO] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[INV_DT] [datetime] NULL ,
	[PO_DT] [datetime] NULL ,
	[GRN_DT] [datetime] NULL ,
	[valid_dt] [datetime] NULL ,
	[po_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_DT] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medi_vat_reg]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medi_vat_reg] (
	[code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[date] [datetime] NULL ,
	[bill_amt] [numeric](18, 2) NULL ,
	[AMT4] [numeric](18, 2) NULL ,
	[vat4] [numeric](18, 2) NULL ,
	[AMT5] [numeric](18, 2) NULL ,
	[VAT5] [numeric](18, 2) NULL ,
	[vat12] [numeric](18, 2) NULL ,
	[amt12] [numeric](18, 2) NULL ,
	[vat13] [numeric](18, 2) NULL ,
	[AMT13] [numeric](18, 2) NULL ,
	[non_vat] [numeric](18, 2) NULL ,
	[VAT_PER] [numeric](18, 2) NULL ,
	[taxable_0] [numeric](18, 2) NULL ,
	[gst_tot_0] [numeric](18, 2) NULL ,
	[taxable_5] [numeric](18, 2) NULL ,
	[gst_tot_5] [numeric](18, 2) NULL ,
	[cgst_5] [numeric](18, 2) NULL ,
	[sgst_5] [numeric](18, 0) NULL ,
	[taxable_12] [numeric](18, 2) NULL ,
	[gst_tot_12] [numeric](18, 2) NULL ,
	[cgst_12] [numeric](18, 2) NULL ,
	[sgst_12] [numeric](18, 2) NULL ,
	[taxable_18] [numeric](18, 2) NULL ,
	[gst_tot_18] [numeric](18, 2) NULL ,
	[cgst_18] [numeric](18, 2) NULL ,
	[sgst_18] [numeric](18, 2) NULL ,
	[taxable_28] [numeric](18, 2) NULL ,
	[gst_tot_28] [numeric](18, 2) NULL ,
	[cgst_28] [numeric](18, 2) NULL ,
	[sgst_28] [numeric](18, 2) NULL ,
	[patient_code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medicinemaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medicinemaster] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_group] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [int] NULL ,
	[med_type] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_dt] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[remarks] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[pr_more] [numeric](18, 2) NULL ,
	[tot_pur] [numeric](18, 2) NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[add_sale] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[reord_qty] [int] NULL ,
	[medgroup] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[openqty] [int] NULL ,
	[qtyin_unit] [numeric](18, 0) NULL ,
	[NO_QTY_UNIT] [numeric](18, 0) NULL ,
	[supp_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supp_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[each_rate] [numeric](18, 2) NULL ,
	[entry_dt] [datetime] NULL ,
	[ord_qty] [numeric](18, 0) NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[quantity] [numeric](18, 0) NULL ,
	[NOOF_UNIT] [numeric](18, 0) NULL ,
	[close_qty] [numeric](18, 0) NULL ,
	[close_dt] [datetime] NULL ,
	[cost_price] [numeric](18, 2) NULL ,
	[INDEN_TAG] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[generation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lsd_drug] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[hsn_code] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medicinemaster2]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medicinemaster2] (
	[med_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_group] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medicineot]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medicineot] (
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[otno] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ot_date] [datetime] NULL ,
	[medicine] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medidelrec]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medidelrec] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [int] NULL ,
	[p_invno] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[del_dt] [datetime] NULL ,
	[muser] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ent_time] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[time] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medistock]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medistock] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 0) NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[NOOF_UNIT] [numeric](18, 0) NULL ,
	[QTYIN_UNIT] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[medivatdummy]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[medivatdummy] (
	[bill_dt] [datetime] NULL ,
	[bill_no] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[with_vatamt] [numeric](18, 2) NULL ,
	[wout_vatamt] [numeric](18, 2) NULL ,
	[vat] [numeric](18, 2) NULL ,
	[vat_amt] [numeric](18, 2) NULL ,
	[bill_amt] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[metmaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[metmaster] (
	[material] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pack] [numeric](18, 0) NULL ,
	[group_name] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[quantity] [numeric](8, 0) NULL ,
	[reorder] [numeric](8, 0) NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[damage] [numeric](8, 0) NULL ,
	[mgroup] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reord_qty] [numeric](18, 0) NULL ,
	[supp_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[qtyin_unit] [numeric](18, 0) NULL ,
	[entry_dt] [datetime] NULL ,
	[ord_qty] [numeric](18, 0) NULL ,
	[close_qty] [numeric](18, 0) NULL ,
	[close_date] [datetime] NULL ,
	[store_order] [numeric](18, 0) NULL ,
	[order_dt] [datetime] NULL ,
	[pur_order] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[metstock]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[metstock] (
	[mgroup] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[qty] [numeric](18, 0) NULL ,
	[issue_qty] [numeric](18, 0) NULL ,
	[PUR_QTY] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[miscmaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[miscmaster] (
	[srl_no] [numeric](18, 0) NULL ,
	[misc_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[misc_head] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[type] [nvarchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate1] [numeric](18, 2) NULL ,
	[rate2] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[mwidal]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[mwidal] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_by] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bed_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[s1] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s2] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s3] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s4] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s5] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s6] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s7] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s8] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s9] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s10] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s11] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s12] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s13] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s14] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s15] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s16] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s17] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s18] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s19] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s20] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s21] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s22] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s23] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s24] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s25] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s26] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s27] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s28] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s29] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s30] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s31] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s32] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s33] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s34] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s35] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s36] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s37] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s38] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s39] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s40] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s41] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s42] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s43] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s44] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s45] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s46] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s47] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s48] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s49] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s50] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s51] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s52] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s53] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s54] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s55] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[newpathreport]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[newpathreport] (
	[path_code] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_head] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[text1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text5] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text6] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text7] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text8] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text9] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text11] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text12] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text13] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text14] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text15] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text16] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text17] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text18] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text19] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text20] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text21] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text22] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text23] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text24] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text25] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[remarks] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[coll_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhbill_history]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhbill_history] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amount] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[bill_amount] [numeric](18, 2) NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[type] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[delete_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhbill_reg]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhbill_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[amount] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[bill_amount] [numeric](18, 2) NULL ,
	[type] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[entry_dt] [datetime] NULL ,
	[SERVICE] [numeric](18, 2) NULL ,
	[SERVICE_PERCENT] [numeric](18, 2) NULL ,
	[description] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pay_mode] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chq_no] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[paid_by] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[chq_dt] [datetime] NULL ,
	[add_drbill] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rec_from] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[due_amt] [numeric](18, 2) NULL ,
	[dr_com] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vatamt] [numeric](18, 2) NULL ,
	[serv_tax] [numeric](18, 2) NULL ,
	[serv_tax_amt] [numeric](18, 2) NULL ,
	[TEXT1] [numeric](18, 0) NULL ,
	[TEXT2] [numeric](18, 0) NULL ,
	[TEXT3] [numeric](18, 0) NULL ,
	[TEXT4] [numeric](18, 0) NULL ,
	[TEXT5] [numeric](18, 0) NULL ,
	[TEXT6] [numeric](18, 0) NULL ,
	[TEXT7] [numeric](18, 0) NULL ,
	[OTHER_HEAD] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT8] [numeric](18, 0) NULL ,
	[TEXT9] [numeric](18, 0) NULL ,
	[TEXT] [numeric](18, 0) NULL ,
	[OTHER_HEAD2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhbillsummary]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhbillsummary] (
	[patient_code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[tpa_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_amt] [numeric](18, 2) NULL ,
	[net_amt] [numeric](18, 2) NULL ,
	[bill_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhfloorstock]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhfloorstock] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[place] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grnno] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inden] [numeric](18, 0) NULL ,
	[inden_dt] [datetime] NULL ,
	[material] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[tot_qty] [numeric](18, 0) NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[rate] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhinv_reg]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhinv_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sa_no] [numeric](18, 0) NULL ,
	[invoice] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_dt] [datetime] NULL ,
	[due_dt] [datetime] NULL ,
	[inv_amt] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[net_amt] [numeric](18, 2) NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[po_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[po_dt] [datetime] NULL ,
	[grnno] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grn_dt] [datetime] NULL ,
	[valid_dt] [datetime] NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[net_inv_amt] [numeric](18, 2) NULL ,
	[sl_no] [numeric](18, 0) NULL ,
	[sup_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhpurchase]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhpurchase] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl] [numeric](6, 0) NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity] [numeric](18, 2) NULL ,
	[qtyin_unit] [numeric](18, 0) NULL ,
	[free_qty] [numeric](18, 0) NULL ,
	[unit] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[valid_dt] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[manu_dt] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[pr_more] [numeric](18, 2) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[vat] [numeric](18, 2) NULL ,
	[cst] [numeric](18, 2) NULL ,
	[each_sale] [numeric](18, 2) NULL ,
	[rate] [numeric](18, 3) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[paydays] [numeric](18, 0) NULL ,
	[QUOTATION] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QDATE] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CHALANNO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CHALANDATE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GRNNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GRNSRL] [numeric](18, 0) NULL ,
	[RECQTY] [numeric](18, 2) NULL ,
	[DUEQTY] [numeric](18, 2) NULL ,
	[stax] [numeric](18, 2) NULL ,
	[atten] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[term] [nvarchar] (2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[discount] [numeric](18, 2) NULL ,
	[surch] [numeric](18, 2) NULL ,
	[ord_qty] [numeric](18, 0) NULL ,
	[add_sale] [numeric](18, 2) NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL ,
	[hsn_code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhpurchasedetails]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhpurchasedetails] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[invoice] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_dt] [datetime] NULL ,
	[grnno] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[day] [numeric](18, 0) NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supp_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[due_dt] [datetime] NULL ,
	[material] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[noof_unit] [numeric](18, 0) NULL ,
	[qtyin_unit] [numeric](18, 0) NULL ,
	[pur_qty] [numeric](18, 0) NULL ,
	[rate_unit] [numeric](18, 2) NULL ,
	[tot_rate] [numeric](18, 2) NULL ,
	[ad_percent] [numeric](18, 2) NULL ,
	[mr_percent] [numeric](18, 2) NULL ,
	[tot_calc] [numeric](18, 2) NULL ,
	[tot_pur_amt] [numeric](18, 2) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[openqty] [numeric](18, 0) NULL ,
	[rate_unqty] [numeric](18, 2) NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[return_qty] [numeric](18, 0) NULL ,
	[adj_qty] [numeric](18, 0) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[ad_salcent] [numeric](18, 2) NULL ,
	[sale_unit] [numeric](18, 2) NULL ,
	[batch] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_dt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity] [numeric](18, 0) NULL ,
	[free_qty] [numeric](18, 0) NULL ,
	[tot_qty] [numeric](18, 0) NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[total_amt] [numeric](18, 2) NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[description] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[MGROUP] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[days] [numeric](18, 0) NULL ,
	[reason] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vat] [numeric](18, 2) NULL ,
	[cst] [numeric](18, 2) NULL ,
	[reord_qty] [numeric](18, 0) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[grnsrl] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhrequisition]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhrequisition] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[place] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inden] [numeric](18, 0) NULL ,
	[grnno] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[issue_dt] [datetime] NULL ,
	[unit_id] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[tot_qty] [numeric](18, 0) NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[rate] [numeric](18, 2) NULL ,
	[order_qty] [numeric](18, 0) NULL ,
	[yn] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[issue_qty] [numeric](18, 0) NULL ,
	[date] [datetime] NULL ,
	[ok] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MST_UPDT] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DUE_QTY] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhstockdummy]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhstockdummy] (
	[material] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_dt] [datetime] NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grnno] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[pur_qty] [numeric](18, 0) NULL ,
	[allo_qty] [numeric](18, 0) NULL ,
	[rate_unit] [numeric](18, 2) NULL ,
	[place] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nhsupmaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nhsupmaster] (
	[code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[nicumedmaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[nicumedmaster] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 0) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[med_date] [datetime] NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[inden_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[occupancy]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[occupancy] (
	[patient_code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[iccud] [numeric](18, 0) NULL ,
	[iccur] [numeric](18, 0) NULL ,
	[iccum] [numeric](18, 0) NULL ,
	[nicud] [numeric](18, 0) NULL ,
	[nicur] [numeric](18, 0) NULL ,
	[nicum] [numeric](18, 0) NULL ,
	[gen3d] [numeric](18, 0) NULL ,
	[gen3r] [numeric](18, 0) NULL ,
	[gen3m] [numeric](18, 0) NULL ,
	[gen4d] [numeric](18, 0) NULL ,
	[gen4r] [numeric](18, 0) NULL ,
	[gen4m] [numeric](18, 0) NULL ,
	[hdu2d] [numeric](18, 0) NULL ,
	[hdu2r] [numeric](18, 0) NULL ,
	[hdu2m] [numeric](18, 0) NULL ,
	[cabnd] [numeric](18, 0) NULL ,
	[cabnr] [numeric](18, 0) NULL ,
	[cabnm] [numeric](18, 0) NULL ,
	[isold] [numeric](18, 0) NULL ,
	[isolr] [numeric](18, 0) NULL ,
	[isolm] [numeric](18, 0) NULL ,
	[iibedd] [numeric](18, 0) NULL ,
	[iibedr] [numeric](18, 0) NULL ,
	[iibedm] [numeric](18, 0) NULL ,
	[ivbedd] [numeric](18, 0) NULL ,
	[ivbedr] [numeric](18, 0) NULL ,
	[ivbedm] [numeric](18, 0) NULL ,
	[bed_ch] [numeric](18, 0) NULL ,
	[path_ch] [numeric](18, 0) NULL ,
	[radio_ch] [numeric](18, 0) NULL ,
	[doctor_ch] [numeric](18, 0) NULL ,
	[other_ch] [numeric](18, 0) NULL ,
	[medi_ch] [numeric](18, 0) NULL ,
	[surgi_ch] [numeric](18, 0) NULL ,
	[ot_ch] [numeric](18, 0) NULL ,
	[medical_ch] [numeric](18, 0) NULL ,
	[out_side] [numeric](18, 0) NULL ,
	[discount] [numeric](18, 0) NULL ,
	[serv_ch] [numeric](18, 0) NULL ,
	[bill_amt] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[opdotmaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[opdotmaster] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[padd1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[padd2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[padd3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ps] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[admit_by] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[radd1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[radd2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[radd3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ot_no] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ot_date] [datetime] NULL ,
	[fromtime] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[totime] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor_code] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[typeofoperation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srlno] [numeric](18, 0) NULL ,
	[operated] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grade] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[opdreport]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[opdreport] (
	[item] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[day_qty] [numeric](18, 0) NULL ,
	[day_qtynh] [numeric](18, 0) NULL ,
	[day_amt] [numeric](18, 0) NULL ,
	[day_amtnh] [numeric](18, 0) NULL ,
	[month_qty] [numeric](18, 0) NULL ,
	[month_qtynh] [numeric](18, 0) NULL ,
	[month_amt] [numeric](18, 0) NULL ,
	[month_amtnh] [numeric](18, 0) NULL ,
	[year_qty] [numeric](18, 0) NULL ,
	[year_qtynh] [numeric](18, 0) NULL ,
	[year_amt] [numeric](18, 0) NULL ,
	[year_amtnh] [numeric](18, 0) NULL ,
	[pre_yr_qty] [numeric](18, 0) NULL ,
	[pre_yr_qtynh] [numeric](18, 0) NULL ,
	[pre_yr_amt] [numeric](18, 0) NULL ,
	[pre_yr_amtnh] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[otcase]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[otcase] (
	[ot_type] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL ,
	[halfhour] [numeric](18, 2) NULL ,
	[description] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[otcharge]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[otcharge] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[otno] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ent_date] [datetime] NULL ,
	[chg_type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[subtype] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[description] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[quantity] [numeric](18, 0) NULL ,
	[rate] [numeric](18, 2) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[otequipment]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[otequipment] (
	[equipment] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[otgasmaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[otgasmaster] (
	[gas] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[otmedicinemaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[otmedicinemaster] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_power] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 0) NULL ,
	[ref_qty] [numeric](18, 0) NULL ,
	[med_date] [datetime] NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[inden_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ottypemaster]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[ottypemaster] (
	[grade] [numeric](18, 0) NULL ,
	[type] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[operation] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[pass_word]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[pass_word] (
	[floor] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_word] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[path_out_bill]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[path_out_bill] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[MONO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amount] [numeric](10, 2) NULL ,
	[discount] [numeric](10, 2) NULL ,
	[advance] [numeric](10, 2) NULL ,
	[due] [numeric](10, 2) NULL ,
	[tot_adv] [numeric](18, 2) NULL ,
	[srl_no] [numeric](7, 0) NULL ,
	[entry_dt] [datetime] NULL ,
	[doctorcode] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cancelled] [numeric](18, 2) NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[corpt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cancelled_dt] [datetime] NULL ,
	[bill_srl] [numeric](18, 0) NULL ,
	[bill_cncl] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PAY_MODE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CHQNO] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CHQDT] [datetime] NULL ,
	[RMO_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[AGENT_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFF] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFFNAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[discnarrat] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CNCL] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ent_time] [timestamp] NULL ,
	[CARD_NO] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_BY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[esi_ins_no] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[path_out_reg]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[path_out_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[test] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](8, 2) NULL ,
	[entry_dt] [datetime] NULL ,
	[corpt_bill] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[corpt_dt] [datetime] NULL ,
	[bill_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[ttype] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[corpt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cancelled] [numeric](18, 2) NULL ,
	[dept] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DEPT_S] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [numeric](18, 0) NULL ,
	[agent_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RMO_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DESCRIPTION] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[QTY] [numeric](18, 0) NULL ,
	[emp_id] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_dt] [datetime] NULL ,
	[slip_no] [numeric](7, 0) NULL ,
	[corpt_slip] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[slip_dt] [datetime] NULL ,
	[CNCL] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ent_time] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_cncl] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[retired] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CHQNO] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CHQDT] [datetime] NULL ,
	[PREP_BY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[esi_ins_no] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LABNAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[pathbilldummy]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[pathbilldummy] (
	[bill_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[path_code] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amount] [numeric](18, 2) NULL ,
	[advance] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[collection] [numeric](18, 2) NULL ,
	[BY_CARD] [numeric](18, 0) NULL ,
	[cancelled] [numeric](18, 2) NULL ,
	[due] [numeric](18, 2) NULL ,
	[tot_adv] [numeric](18, 2) NULL ,
	[collect] [numeric](18, 2) NULL ,
	[PATH] [numeric](18, 0) NULL ,
	[CHEM] [numeric](18, 0) NULL ,
	[ECG] [numeric](18, 0) NULL ,
	[ECHO] [numeric](18, 0) NULL ,
	[OTHE] [numeric](18, 0) NULL ,
	[COLL] [numeric](18, 0) NULL ,
	[EMER] [numeric](18, 0) NULL ,
	[RADIO] [numeric](18, 0) NULL ,
	[DRES] [numeric](18, 0) NULL ,
	[STIC] [numeric](18, 0) NULL ,
	[USG] [numeric](18, 0) NULL ,
	[discnarrat] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl] [numeric](5, 0) NULL ,
	[dr_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CNCL] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rmo_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_REF_FEE] [numeric](18, 2) NULL ,
	[DR_FEE] [numeric](18, 2) NULL ,
	[CARD_NO] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_BY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[pathbillreg]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[pathbillreg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[path_code] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amount] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[advance] [numeric](18, 2) NULL ,
	[collect] [numeric](18, 2) NULL ,
	[due] [numeric](18, 2) NULL ,
	[srl_no] [numeric](7, 0) NULL ,
	[entry_dt] [datetime] NULL ,
	[bill_srl] [numeric](7, 0) NULL ,
	[mono] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_cncl] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[corpt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFF] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFFNAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_BY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PREP_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[patho_doctor]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[patho_doctor] (
	[code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[email] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[patho_patient]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[patho_patient] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[path_code] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nh_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[out_door_id] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[emp_id] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_dt] [datetime] NULL ,
	[retired] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_name] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[corpt] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dlv_dt] [datetime] NULL ,
	[bill_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_dt] [datetime] NULL ,
	[addr] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[test_no] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[agent] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[agent_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RMO_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFF] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STAFFNAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crno] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CNCL] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[out_door] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DUE_LOCK] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_BY] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_TIME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[esi_ins_no] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pregnant] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[LABNAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[pathrate]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[pathrate] (
	[code] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[test_name] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](8, 2) NULL ,
	[base_rate] [numeric](8, 2) NULL ,
	[ttype] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status2] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status3] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate1] [numeric](18, 2) NULL ,
	[IAL_RATE] [numeric](18, 0) NULL ,
	[rate2] [numeric](18, 2) NULL ,
	[rate3] [numeric](18, 2) NULL ,
	[description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CONC_P_DIS] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DISC] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvlm] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvhm] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvlf] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvhf] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [numeric](18, 0) NULL ,
	[com_per] [numeric](18, 2) NULL ,
	[com_peragent] [numeric](18, 2) NULL ,
	[DEPT_S] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_REF_FEE] [numeric](18, 2) NULL ,
	[DR_FEE] [numeric](18, 2) NULL ,
	[rate4] [numeric](18, 2) NULL ,
	[base_rate1] [numeric](18, 2) NULL ,
	[out_sorce] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[delete_tag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[pathrateXX]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[pathrateXX] (
	[code] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[test_name] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate] [numeric](8, 2) NULL ,
	[ttype] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status2] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status3] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate1] [decimal](18, 2) NULL ,
	[rate2] [decimal](18, 2) NULL ,
	[rate3] [decimal](18, 2) NULL ,
	[description] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CONC_P_DIS] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DISC] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvlm] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvhm] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvlf] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nvhf] [nvarchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REMARK] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [decimal](18, 0) NULL ,
	[com_per] [decimal](18, 2) NULL ,
	[com_peragent] [decimal](18, 2) NULL ,
	[DEPT_S] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_REF_FEE] [decimal](18, 2) NULL ,
	[DR_FEE] [decimal](18, 2) NULL ,
	[rate4] [decimal](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[pathtestdummy]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[pathtestdummy] (
	[path_code] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[test] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amt] [numeric](18, 2) NULL ,
	[qty] [numeric](18, 0) NULL ,
	[com_per] [numeric](18, 2) NULL ,
	[dr_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[agent_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[agent_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[date] [datetime] NULL ,
	[CNCL] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[comm_yn] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REF_FEE] [numeric](18, 2) NULL ,
	[DR_FEE] [numeric](18, 2) NULL ,
	[DR_PHONE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[patientdata]    Script Date: 2/26/2024 12:56:21 PM ******/
CREATE TABLE [dbo].[patientdata] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pstat] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[father_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[padd1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[padd2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[padd3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ps] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mon] [nvarchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[doctor_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bedno] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[admit_by] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADMIT_BED] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[relation] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[radd1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[radd2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[radd3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[admit_date] [datetime] NULL ,
	[admit_time] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[discharge_date] [datetime] NULL ,
	[amount] [numeric](18, 2) NULL ,
	[srl_no] [int] NULL ,
	[nationality] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[occupation] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vn] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status1] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[status2] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref_doc] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REF_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[diagonesis] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[company] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mediclaim] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reimburse] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[day_case] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mode_pay] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bed_pref] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_cr] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[riskbond_dt] [datetime] NULL ,
	[risk_guardian] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[tpa] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CCN_NO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[POLICY_NO] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[invest] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[diagnosis] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[treatment] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[officer] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[off_regno] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[improved] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[diet] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[change] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[advice] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[followup] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[clinical_history] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[admit_off] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m1] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d1] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m2] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d2] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m3] [nvarchar] (230) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d3] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m4] [nvarchar] (230) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d4] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m5] [nvarchar] (230) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d5] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m6] [nvarchar] (230) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d6] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m7] [nvarchar] (230) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d7] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m8] [nvarchar] (230) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d8] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m9] [nvarchar] (230) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d9] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m10] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d10] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m11] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m12] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m13] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m14] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m15] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m16] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m17] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m18] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m19] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m20] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m21] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m22] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m23] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[m24] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d11] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d12] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d13] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d14] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d15] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d16] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d17] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d18] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d19] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d20] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d21] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d22] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d23] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d24] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[d25] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DC_DT] [datetime] NULL ,
	[dc_time] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_dt] [datetime] NULL ,
	[oper_time] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dbed] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_phone] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[stop_print] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srlno1] [numeric](18, 0) NULL ,
	[BILL_PREP_BY] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NH_COURSE] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[NH_COURSE1] [varchar] (900) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REST] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CONDITION] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[FLUID_INTAKE] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[con1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[con2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[con3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[con4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[con5] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ref5] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text29] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text30] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HEADING] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT31] [varchar] (800) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[trans_to] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[trans_reason] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DIALYSIS] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text34] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text35] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text36] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text37] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text38] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text39] [nvarchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rate_status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[payslip]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[payslip] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MONTH] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MONTH_SRL] [numeric](18, 0) NULL ,
	[YEAR] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[serv] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pan_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[desg] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[atnd] [numeric](18, 0) NULL ,
	[dayoff] [numeric](18, 0) NULL ,
	[paidday] [numeric](18, 0) NULL ,
	[basic] [numeric](18, 0) NULL ,
	[basicern] [numeric](18, 2) NULL ,
	[cca] [numeric](18, 2) NULL ,
	[hra] [numeric](18, 2) NULL ,
	[grossern] [numeric](18, 2) NULL ,
	[pf] [numeric](18, 2) NULL ,
	[ptax] [numeric](18, 2) NULL ,
	[esi] [numeric](18, 2) NULL ,
	[itax] [numeric](18, 2) NULL ,
	[grossdedn] [numeric](18, 2) NULL ,
	[netpay] [numeric](18, 2) NULL ,
	[ENTRY_DT] [datetime] NULL ,
	[OT_HOURS] [numeric](18, 2) NULL ,
	[ot_amt] [numeric](18, 2) NULL ,
	[ot_rate] [numeric](18, 2) NULL ,
	[dressing] [numeric](18, 2) NULL ,
	[group_1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COMP_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[placemed]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[placemed] (
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_number] [numeric](18, 0) NULL ,
	[med_month] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[place] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_date] [datetime] NULL ,
	[inden_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ptax]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[ptax] (
	[tx30] [numeric](18, 0) NULL ,
	[pt0] [numeric](18, 2) NULL ,
	[pt30] [numeric](18, 2) NULL ,
	[pt40] [numeric](18, 2) NULL ,
	[pt45] [numeric](18, 2) NULL ,
	[pt50] [numeric](18, 2) NULL ,
	[pt90] [numeric](18, 2) NULL ,
	[pt110] [numeric](18, 2) NULL ,
	[pt130] [numeric](18, 2) NULL ,
	[pt200] [numeric](18, 2) NULL ,
	[pt150] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[pur_inv_reg]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[pur_inv_reg] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sl_no] [numeric](18, 0) NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_dt] [datetime] NULL ,
	[inv_amt] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[net_inv_amt] [numeric](18, 2) NULL ,
	[entry_dt] [datetime] NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[due_dt] [datetime] NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[grn_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GRNNO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[add_more] [numeric](18, 2) NULL ,
	[po_no] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[po_dt] [datetime] NULL ,
	[po_amt] [numeric](18, 2) NULL ,
	[g_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[g_dt] [datetime] NULL ,
	[g_amt] [numeric](18, 2) NULL ,
	[grn_dt] [datetime] NULL ,
	[grn_amt] [numeric](18, 2) NULL ,
	[valid_dt] [datetime] NULL ,
	[store] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[disc_amt] [numeric](18, 2) NULL ,
	[rto_amt] [numeric](18, 2) NULL ,
	[cst_amt] [numeric](18, 2) NULL ,
	[free_amt] [numeric](18, 2) NULL ,
	[return_amt] [numeric](18, 2) NULL ,
	[MRP_TOT] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_rate] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[gst_amt] [numeric](18, 2) NULL ,
	[taxable_amt] [numeric](18, 2) NULL ,
	[tot_rate] [numeric](18, 2) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[purgroup]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[purgroup] (
	[metgroup] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[purmedi]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[purmedi] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_group] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supp_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_date] [datetime] NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[noof_unit] [numeric](18, 2) NULL ,
	[rate_unit] [numeric](18, 2) NULL ,
	[tot_rate] [numeric](18, 2) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[ad_percent] [numeric](18, 2) NULL ,
	[mr_percent] [numeric](18, 2) NULL ,
	[tot_calc] [numeric](18, 2) NULL ,
	[qtyin_unit] [numeric](18, 2) NULL ,
	[tot_qty] [numeric](18, 2) NULL ,
	[openqty] [numeric](18, 2) NULL ,
	[rate_unqty] [numeric](18, 2) NULL ,
	[up_flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[return_qty] [numeric](18, 0) NULL ,
	[adj_qty] [numeric](18, 0) NULL ,
	[free_qty] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[ad_salcent] [numeric](18, 2) NULL ,
	[sale_unit] [numeric](18, 2) NULL ,
	[type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[days] [numeric](8, 0) NULL ,
	[due_dt] [datetime] NULL ,
	[reason] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date1] [datetime] NULL ,
	[TOT_PUR_AMT] [numeric](18, 2) NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[staff] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grn_no] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PUR_RATE] [numeric](18, 2) NULL ,
	[staff_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vat] [numeric](18, 2) NULL ,
	[vat_amt] [numeric](18, 2) NULL ,
	[cst] [numeric](18, 2) NULL ,
	[cst_amt] [numeric](18, 2) NULL ,
	[vat2] [numeric](18, 2) NULL ,
	[vat2_amt] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[rgnno] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[disc2] [numeric](18, 2) NULL ,
	[disc_amt] [numeric](18, 2) NULL ,
	[exc_duty] [numeric](18, 2) NULL ,
	[disc_rate] [numeric](18, 2) NULL ,
	[cost_price] [numeric](18, 2) NULL ,
	[closing_qty] [numeric](18, 0) NULL ,
	[closing_date] [datetime] NULL ,
	[SALEPRINT2] [numeric](18, 2) NULL ,
	[EXP_QTY] [numeric](18, 0) NULL ,
	[EXP_LOCK_DT] [datetime] NULL ,
	[MRP_TOT] [numeric](18, 2) NULL ,
	[INDEN_TAG] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CLOSING_YEAR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_rate] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[sale_rate] [numeric](18, 2) NULL ,
	[hsn_code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[taxable_amt] [numeric](18, 2) NULL ,
	[sl_no] [numeric](18, 0) NULL ,
	[closing_time] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[purmedi2]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[purmedi2] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_group] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supp_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_date] [datetime] NULL ,
	[rgnno] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[noof_unit] [numeric](18, 2) NULL ,
	[rate_unit] [numeric](18, 2) NULL ,
	[tot_rate] [numeric](18, 2) NULL ,
	[ad_percent] [numeric](18, 2) NULL ,
	[mr_percent] [numeric](18, 2) NULL ,
	[tot_calc] [numeric](18, 2) NULL ,
	[tot_pur_amt] [numeric](18, 2) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[qtyin_unit] [numeric](18, 2) NULL ,
	[tot_qty] [numeric](18, 2) NULL ,
	[openqty] [numeric](18, 2) NULL ,
	[rate_unqty] [numeric](18, 2) NULL ,
	[up_flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[return_qty] [numeric](18, 0) NULL ,
	[adj_qty] [numeric](18, 0) NULL ,
	[free_qty] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[ad_salcent] [numeric](18, 2) NULL ,
	[sale_unit] [numeric](18, 2) NULL ,
	[type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[days] [numeric](8, 0) NULL ,
	[due_dt] [datetime] NULL ,
	[reason] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date1] [datetime] NULL ,
	[staff] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[staff_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vat] [numeric](18, 2) NULL ,
	[vat_amt] [numeric](18, 2) NULL ,
	[vat2] [numeric](18, 2) NULL ,
	[vat2_amt] [numeric](18, 2) NULL ,
	[cst] [numeric](18, 2) NULL ,
	[cst_amt] [numeric](18, 2) NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[disc_rate] [numeric](18, 2) NULL ,
	[disc_amt] [numeric](18, 2) NULL ,
	[exc_duty] [numeric](18, 2) NULL ,
	[cost_price] [numeric](18, 2) NULL ,
	[closing_qty] [numeric](18, 0) NULL ,
	[closing_date] [datetime] NULL ,
	[MRP_TOT] [numeric](18, 2) NULL ,
	[gst_per] [numeric](18, 2) NULL ,
	[gst_rate] [numeric](18, 2) NULL ,
	[gst_tot] [numeric](18, 2) NULL ,
	[cgst] [numeric](18, 2) NULL ,
	[sgst] [numeric](18, 2) NULL ,
	[hsn_code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[taxable_amt] [numeric](18, 2) NULL ,
	[sl_no] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[purmedibak]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[purmedibak] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supp_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_date] [datetime] NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[noof_unit] [numeric](18, 2) NULL ,
	[rate_unit] [numeric](18, 2) NULL ,
	[tot_rate] [numeric](18, 2) NULL ,
	[ad_percent] [numeric](18, 2) NULL ,
	[mr_percent] [numeric](18, 2) NULL ,
	[tot_calc] [numeric](18, 2) NULL ,
	[qtyin_unit] [numeric](18, 2) NULL ,
	[tot_qty] [numeric](18, 2) NULL ,
	[openqty] [numeric](18, 2) NULL ,
	[rate_unqty] [numeric](18, 2) NULL ,
	[up_flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[return_qty] [numeric](18, 0) NULL ,
	[adj_qty] [numeric](18, 0) NULL ,
	[free_qty] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[ad_salcent] [numeric](18, 2) NULL ,
	[sale_unit] [numeric](18, 2) NULL ,
	[type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[days] [numeric](18, 0) NULL ,
	[due_dt] [datetime] NULL ,
	[reason] [nvarchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date1] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[purmedistore]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[purmedistore] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_name] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supp_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_date] [datetime] NULL ,
	[rgnno] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_order] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date] [nvarchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[noof_unit] [numeric](18, 2) NULL ,
	[rate_unit] [numeric](18, 2) NULL ,
	[tot_rate] [numeric](18, 2) NULL ,
	[ad_percent] [numeric](18, 2) NULL ,
	[mr_percent] [numeric](18, 2) NULL ,
	[tot_calc] [numeric](18, 2) NULL ,
	[tot_pur_amt] [numeric](18, 2) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[qtyin_unit] [numeric](18, 2) NULL ,
	[tot_qty] [numeric](18, 2) NULL ,
	[openqty] [numeric](18, 2) NULL ,
	[rate_unqty] [numeric](18, 2) NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[return_qty] [numeric](18, 0) NULL ,
	[adj_qty] [numeric](18, 0) NULL ,
	[free_qty] [numeric](18, 2) NULL ,
	[sale_print] [numeric](18, 2) NULL ,
	[ad_salcent] [numeric](18, 2) NULL ,
	[sale_unit] [numeric](18, 2) NULL ,
	[type] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[entry_dt] [datetime] NULL ,
	[days] [numeric](18, 0) NULL ,
	[due_dt] [datetime] NULL ,
	[reason] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[exp_date1] [datetime] NULL ,
	[staff] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[staff_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vat] [numeric](18, 2) NULL ,
	[vat2] [numeric](18, 2) NULL ,
	[cst] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[cost_price] [numeric](18, 2) NULL ,
	[vat_amt] [numeric](18, 2) NULL ,
	[cst_amt] [numeric](18, 2) NULL ,
	[disc_amt] [numeric](18, 2) NULL ,
	[free_tax] [numeric](18, 2) NULL ,
	[disc_rate] [numeric](18, 2) NULL ,
	[exc_duty] [numeric](18, 2) NULL ,
	[MED_GROUP] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PLACE] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[quirymedi]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[quirymedi] (
	[depart] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[t_date] [datetime] NULL ,
	[med_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pur_qty] [numeric](18, 0) NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[ret_qty] [numeric](18, 0) NULL ,
	[supp_name] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[stock_qty] [numeric](18, 0) NULL ,
	[pur_rate] [numeric](18, 2) NULL ,
	[amount] [numeric](18, 2) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[FROMDT] [datetime] NULL ,
	[TODT] [datetime] NULL ,
	[generation] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EXP_QTY] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[quirymedi1]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[quirymedi1] (
	[depart] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[t_date] [datetime] NULL ,
	[med_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[batch_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pur_qty] [numeric](18, 0) NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[ret_qty] [numeric](18, 0) NULL ,
	[supp_name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inv_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[stock_qty] [numeric](18, 0) NULL ,
	[each_pur] [numeric](18, 2) NULL ,
	[BED_NO] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_CODE] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATIENT_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_CODE] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dr_reg] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BILL_DT] [datetime] NULL ,
	[BILL_NO] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EXP_DT] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SALE_RATE] [numeric](18, 2) NULL ,
	[EXP_QTY] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[salary]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[salary] (
	[serv] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[desg] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dsg_code] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[basic] [numeric](18, 2) NULL ,
	[da] [numeric](18, 2) NULL ,
	[pan_CARD_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pf_no] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dressing] [numeric](18, 2) NULL ,
	[group_1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[hra] [numeric](18, 2) NULL ,
	[cca] [numeric](18, 2) NULL ,
	[ot_cca] [numeric](18, 2) NULL ,
	[ot_hra] [numeric](18, 2) NULL ,
	[PF_YN] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bank_no] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[esi_no] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[valid] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[salarytr]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[salarytr] (
	[FINYR] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[serv] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[desg] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dayoff] [numeric](18, 0) NULL ,
	[atnd] [numeric](18, 0) NULL ,
	[absent] [numeric](18, 0) NULL ,
	[da_basic] [numeric](18, 2) NULL ,
	[paid_day] [numeric](18, 0) NULL ,
	[OT_HOURS] [numeric](18, 2) NULL ,
	[MONTH] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[valid] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[serologyreport]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[serologyreport] (
	[srl] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mcom3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[smstable]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[smstable] (
	[id] [bigint] IDENTITY (1, 1) NOT FOR REPLICATION  NOT NULL ,
	[patientcode] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[patientname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[underdoctor] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[patientmobile] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[doctormobile] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[bedno] [nchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[type] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[admissiondate] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[admissiontime] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dischargedate] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dischargetime] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[apistatus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SENT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ENTRY_DT] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[sticker]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[sticker] (
	[s1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s5] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s6] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s7] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s8] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s9] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s11] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s12] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s13] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s14] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s15] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s16] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SRL] [numeric](18, 0) NULL ,
	[code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s17] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s18] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s19] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s20] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s21] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s22] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s23] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[s24] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[stockdummy]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[stockdummy] (
	[date] [datetime] NULL ,
	[material] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[pur_qty] [numeric](18, 0) NULL ,
	[issue_qty] [numeric](18, 0) NULL ,
	[closing_qty] [numeric](18, 0) NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[stockmedi]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[stockmedi] (
	[med_name] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[op_qty] [int] NULL ,
	[p_qty] [int] NULL ,
	[s_qty] [int] NULL ,
	[ret_qty] [int] NULL ,
	[p_rate] [numeric](18, 2) NULL ,
	[f_qty] [int] NULL ,
	[med_number] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[stockmedi1]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[stockmedi1] (
	[med_name] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[op_qty] [int] NULL ,
	[p_qty] [int] NULL ,
	[s_qty] [int] NULL ,
	[ret_qty] [int] NULL ,
	[p_rate] [numeric](18, 2) NULL ,
	[f_qty] [int] NULL ,
	[med_number] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[stockposition]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[stockposition] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[grnno] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inden] [numeric](18, 0) NULL ,
	[material] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[toplace] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[stock] [numeric](8, 0) NULL ,
	[allot_date] [datetime] NULL ,
	[sale_qty] [numeric](18, 0) NULL ,
	[open_qty] [numeric](18, 0) NULL ,
	[rate] [numeric](18, 2) NULL ,
	[MGROUP] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[stool]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[stool] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REP_DT] [datetime] NULL ,
	[bedno] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[colour] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reaction] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[blood] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[consistancy] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd4] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[mucus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd5] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[occult] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd6] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vegetable] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd7] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[muscle] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd8] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pus] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd9] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[macrophages] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd10] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[protozoal_cysts] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd11] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crystal] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd12] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rbc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd13] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[epithelial] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd14] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[protozoa] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd15] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ova] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd16] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[other] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd17] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd18] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd19] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd20] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd21] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd22] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd23] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd24] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd25] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd26] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd27] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd28] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[suppliermaster]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[suppliermaster] (
	[sup_code] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[supplier] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address1] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address2] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[address3] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phone] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[umastat]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[umastat] (
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[patient_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_no] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bill_date] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bed] [numeric](18, 2) NULL ,
	[ot] [numeric](18, 2) NULL ,
	[diag] [numeric](18, 2) NULL ,
	[johnson] [numeric](18, 2) NULL ,
	[medicine] [numeric](18, 2) NULL ,
	[misc] [numeric](18, 2) NULL ,
	[doctor] [numeric](18, 2) NULL ,
	[bamt] [numeric](18, 2) NULL ,
	[discount] [numeric](18, 2) NULL ,
	[service] [numeric](18, 2) NULL ,
	[bedno] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[addr1] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[addr2] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[addr3] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[admit_dt] [datetime] NULL ,
	[disc_dt] [datetime] NULL ,
	[ps] [nvarchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[drcode] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[drname] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[urine]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[urine] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[age] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sex] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REP_DT] [datetime] NULL ,
	[bedno] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[colour] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd1] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[appeerance] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd2] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sediment] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd3] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gravity] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd4] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[reaction] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd5] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[albumen] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd6] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sugar] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd7] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acetone] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd8] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[excessphosphates] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd9] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bilesalt] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd10] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bilepigment] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd11] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[urobilinogen] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd12] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[urobilin] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd13] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[diacetic] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd14] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[epithelia] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd15] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pus] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd16] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rbc] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd17] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[other] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd18] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[casts] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd19] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crystalline] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd20] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[amorphous] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd21] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[microorganism] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd22] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[special] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd23] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[abnormalities] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd24] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd25] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd26] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd27] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd28] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd29] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dd30] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[userlist]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[userlist] (
	[NAME] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PWORD] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OP_MODE] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[usgabu]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[usgabu] (
	[finyr] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[nh_code] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BEDNO] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[material] [nvarchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[hed] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[referred] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text5] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text6] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text7] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text8] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text9] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text10] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text11] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text12] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text13] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text14] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text15] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text16] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text17] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text18] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text19] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text20] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text21] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text22] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text23] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text24] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[misc] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PATH_DR] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DR_QUALI] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT25] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT26] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT27] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT28] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT29] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT30] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT31] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT32] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT33] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT34] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT35] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CHECK_BY] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT36] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT37] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT38] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT39] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT40] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT41] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEXT42] [nvarchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[wardmaster]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[wardmaster] (
	[floor] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[item] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[unit_id] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pack] [numeric](18, 0) NULL ,
	[qty] [numeric](18, 0) NULL ,
	[stock_qty] [numeric](18, 0) NULL ,
	[issue_qty] [numeric](18, 0) NULL ,
	[reorder_qty] [numeric](18, 0) NULL ,
	[rate] [numeric](18, 2) NULL ,
	[REQ_QTY] [numeric](18, 0) NULL ,
	[MGROUP] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[xrayreport]    Script Date: 2/26/2024 12:56:22 PM ******/
CREATE TABLE [dbo].[xrayreport] (
	[final] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[year] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[srl_no] [numeric](18, 0) NULL ,
	[path_code] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[REG_NO] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[name] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[referred] [nvarchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text1] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text2] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text3] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text4] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text5] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text6] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_head] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[HED] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rep_dt] [datetime] NULL ,
	[TEXT7] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text8] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text9] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text10] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text11] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text12] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[text13] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_blood] ON [dbo].[blood]([SRL]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_charge] ON [dbo].[charge]([patient_code], [type]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_medi_bill_reg] ON [dbo].[medi_bill_reg]([finyr], [bill_no]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_medicinemaster] ON [dbo].[medicinemaster]([med_name], [med_group]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_path_out_reg] ON [dbo].[path_out_reg]([path_code]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_patho_patient] ON [dbo].[patho_patient]([path_code]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_pathrate] ON [dbo].[pathrate]([test_name]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_patientdata] ON [dbo].[patientdata]([patient_code]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

 CREATE  CLUSTERED  INDEX [IX_purmedi] ON [dbo].[purmedi]([med_name]) WITH  FILLFACTOR = 70 ON [PRIMARY]
GO

GRANT  REFERENCES ,  SELECT ,  UPDATE ,  INSERT ,  DELETE  ON [dbo].[abdomen]  TO [public]
GO

