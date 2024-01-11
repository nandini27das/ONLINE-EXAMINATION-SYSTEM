CREATE TABLE [dbo].[ques] (
    [ID]     INT          IDENTITY (1, 1) NOT NULL,
    [ques]    NVARCHAR (MAX) NOT NULL,
	[settype]    NVARCHAR (MAX) NOT NULL,
    [opta]    NVARCHAR (50)  NOT NULL,
    [optb]    NVARCHAR (50)  NOT NULL,
    [optc]    NVARCHAR (50)  NOT NULL,
    [optd]    NVARCHAR (50)  NOT NULL,
    [ans]     NUMERIC (18)   NOT NULL,
	PRIMARY KEY CLUSTERED ([ID] ASC)
);

