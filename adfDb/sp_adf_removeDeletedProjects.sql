CREATE PROCEDURE [dbo].[sp_adf_removeDeletedProjects]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    Delete from dbo.EpmProject where dbo.EpmProject.ProjectId
	Not in (Select ProjectId from dbo.EpmProjectStage)
END

