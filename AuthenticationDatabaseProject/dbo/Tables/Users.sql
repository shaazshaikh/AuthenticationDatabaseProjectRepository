CREATE TABLE [dbo].[Users] (
    [Id]            UNIQUEIDENTIFIER NOT NULL,
    [Username]      NVARCHAR (50)    NOT NULL,
    [Password]      NVARCHAR (100)   NOT NULL,
    [UniqueShareId] NVARCHAR (20)    NULL,
    [Email]         NVARCHAR (20)    NULL,
    [IsDeleted]     BIT              DEFAULT ((0)) NOT NULL,
    [CreatedDate]   DATETIME         NOT NULL,
    [ModifiedDate]  DATETIME         NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Email]
    ON [dbo].[Users]([Email] ASC);

