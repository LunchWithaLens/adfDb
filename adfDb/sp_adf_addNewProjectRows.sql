CREATE PROCEDURE [dbo].[sp_adf_addNewProjectRows]
	AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	INSERT INTO dbo.EpmProject(ProjectId, ProjectActualCost, ProjectActualDuration, ProjectActualFinishDate, ProjectActualStartDate, ProjectActualWork,ProjectCost, ProjectCreatedDate, ProjectCurrency, ProjectDescription, ProjectDuration, ProjectFinishDate, ProjectIdentifier, ProjectLastPublishedDate, ProjectModifiedDate, ProjectName, ProjectPercentCompleted, ProjectPercentWorkCompleted, ProjectStartDate, ProjectStatusDate, ProjectWork) --- Columns of smaller table
        SELECT ProjectId, ProjectActualCost, ProjectActualDuration, ProjectActualFinishDate, ProjectActualStartDate, ProjectActualWork,ProjectCost, ProjectCreatedDate, ProjectCurrency, ProjectDescription, ProjectDuration, ProjectFinishDate, ProjectIdentifier, ProjectLastPublishedDate, ProjectModifiedDate, ProjectName, ProjectPercentCompleted, ProjectPercentWorkCompleted, ProjectStartDate, ProjectStatusDate, ProjectWork ---Columns of Master table
        FROM dbo.EpmProjectStage
    where dbo.EpmProjectStage.ProjectId 
	Not In (Select ProjectId from dbo.EpmProject)
END

