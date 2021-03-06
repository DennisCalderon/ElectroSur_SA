USE [ActivosFijos]
GO
/****** Object:  StoredProcedure [dbo].[usp_U_acfCMPt_Componente]    Script Date: 28/04/2017 16:41:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Update one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
ALTER PROCEDURE [dbo].[usp_U_acfCMPt_Componente]
@sCMPid char(15) OUTPUT
, @sCMPcomponente varchar(100) OUTPUT
, @decCMPusoestimado decimal(18, 2) OUTPUT
, @decCMPconservacion decimal(18, 2) OUTPUT
, @decCMPobsolecencia decimal(18, 2) OUTPUT
, @decCMPlimitelegal decimal(18, 2) OUTPUT
, @decCMPtotalfactores decimal(18, 2) OUTPUT
, @decCMPfactorusoestimado decimal(18, 2) OUTPUT
, @iCMPvutilanio int OUTPUT
, @iCMPvutildia int OUTPUT
, @mCMPnivel int OUTPUT
AS
-- updates a row in the table based on the primary key

UPDATE [dbo].[acfCMPt_Componente]
SET
[CMPcomponente] = @sCMPcomponente
,[CMPusoestimado] = @decCMPusoestimado
,[CMPconservacion] = @decCMPconservacion
,[CMPobsolecencia] = @decCMPobsolecencia
,[CMPlimitelegal] = @decCMPlimitelegal
,[CMPtotalfactores] = @decCMPtotalfactores
,[CMPfactorusoestimado] = @decCMPfactorusoestimado
,[CMPvutilanio] = @iCMPvutilanio
,[CMPvutildia] = @iCMPvutildia
,[CMPnivel] = @mCMPnivel
WHERE 
[CMPid] = @sCMPid
SELECT 
@sCMPid = [CMPid]
,@sCMPcomponente = [CMPcomponente]
,@decCMPusoestimado = [CMPusoestimado]
,@decCMPconservacion = [CMPconservacion]
,@decCMPobsolecencia = [CMPobsolecencia]
,@decCMPlimitelegal = [CMPlimitelegal]
,@decCMPtotalfactores = [CMPtotalfactores]
,@decCMPfactorusoestimado = [CMPfactorusoestimado]
,@iCMPvutilanio = [CMPvutilanio]
,@iCMPvutildia = [CMPvutildia]
,@mCMPnivel =[CMPnivel]
FROM [dbo].[acfCMPt_Componente]
WHERE 
[CMPid] = @sCMPid




-- Select All rows
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
ALTER PROCEDURE [dbo].[usp_S_acfCMPt_Componente]
AS
-- selects all rows from the table
SELECT 
[CMPid]
,[CMPcomponente]
,[CMPusoestimado]
,[CMPconservacion]
,[CMPobsolecencia]
,[CMPlimitelegal]
,[CMPtotalfactores]
,[CMPfactorusoestimado]
,[CMPvutilanio]
,[CMPvutildia]
,[CMPnivel]
FROM [dbo].[acfCMPt_Componente]



USE [ActivosFijos]
GO
/****** Object:  StoredProcedure [dbo].[usp_I_acfCMPt_Componente]    Script Date: 28/04/2017 16:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- Insert a new row
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
ALTER PROCEDURE [dbo].[usp_I_acfCMPt_Componente]
@sCMPid char(15) OUTPUT
, @sCMPcomponente varchar(100) OUTPUT
, @decCMPusoestimado decimal(18, 2) OUTPUT
, @decCMPconservacion decimal(18, 2) OUTPUT
, @decCMPobsolecencia decimal(18, 2) OUTPUT
, @decCMPlimitelegal decimal(18, 2) OUTPUT
, @decCMPtotalfactores decimal(18, 2) OUTPUT
, @decCMPfactorusoestimado decimal(18, 2) OUTPUT
, @iCMPvutilanio int OUTPUT
, @iCMPvutildia int OUTPUT
, @mCMPnivel int OUTPUT
AS
-- inserts a new row into the table
INSERT [dbo].[acfCMPt_Componente]
(
[CMPid]
,[CMPcomponente]
,[CMPusoestimado]
,[CMPconservacion]
,[CMPobsolecencia]
,[CMPlimitelegal]
,[CMPtotalfactores]
,[CMPfactorusoestimado]
,[CMPvutilanio]
,[CMPvutildia]
,[CMPnivel]
)
VALUES
(
@sCMPid
,@sCMPcomponente
,@decCMPusoestimado
,@decCMPconservacion
,@decCMPobsolecencia
,@decCMPlimitelegal
,@decCMPtotalfactores
,@decCMPfactorusoestimado
,@iCMPvutilanio
,@iCMPvutildia
,@mCMPnivel
)
SELECT 
@sCMPid = [CMPid]
,@sCMPcomponente = [CMPcomponente]
,@decCMPusoestimado = [CMPusoestimado]
,@decCMPconservacion = [CMPconservacion]
,@decCMPobsolecencia = [CMPobsolecencia]
,@decCMPlimitelegal = [CMPlimitelegal]
,@decCMPtotalfactores = [CMPtotalfactores]
,@decCMPfactorusoestimado = [CMPfactorusoestimado]
,@iCMPvutilanio = [CMPvutilanio]
,@iCMPvutildia = [CMPvutildia]
,@mCMPnivel = [CMPnivel]
FROM [dbo].[acfCMPt_Componente]
WHERE 
[CMPid] = @sCMPid



USE [ActivosFijos]
GO
/****** Object:  StoredProcedure [dbo].[usp_B_acfCMPt_Componente]    Script Date: 28/04/2017 16:39:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/////////////////////////
-- SIGUIENTE TABLA
--//////////////////////////

-- Select one row based on the primary key(s)
------------------------------------------------------------
-- Stored procedure generated by CodeTrigger
-- This script was generated on 22/03/2017 10:50:32 
------------------------------------------------------------
ALTER PROCEDURE [dbo].[usp_B_acfCMPt_Componente]
@sCMPid char(15)
AS
-- selects all rows from the table
SELECT 
[CMPid]
,[CMPcomponente]
,[CMPusoestimado]
,[CMPconservacion]
,[CMPobsolecencia]
,[CMPlimitelegal]
,[CMPtotalfactores]
,[CMPfactorusoestimado]
,[CMPvutilanio]
,[CMPvutildia]
,[CMPnivel]
FROM [dbo].[acfCMPt_Componente]
WHERE 
[CMPid] = @sCMPid



