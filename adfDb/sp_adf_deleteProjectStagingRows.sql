CREATE PROCEDURE [dbo].[sp_adf_deleteProjectStagingRows]
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    Delete from dbo.EpmProjectStage
END
