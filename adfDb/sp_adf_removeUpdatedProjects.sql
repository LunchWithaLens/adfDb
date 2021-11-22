CREATE PROCEDURE [dbo].[sp_adf_removeUpdatedProjects]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    Delete EpmProject
	from EpmProject p
	Inner join EpmProjectStage ps on p.ProjectId = ps.ProjectId
	where p.ProjectModifiedDate < ps.ProjectModifiedDate 
	 
END
