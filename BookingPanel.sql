USE [Hotel]
GO

/****** Object:  View [dbo].[BookingPanel]    Script Date: 17.03.2024 10:41:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[BookingPanel]
AS
SELECT TOP (100) PERCENT b.BookingId, b.BookingDate, g.FirstName, g.Surname, r.RoomNumber, b.DateOfRegestration, s.DateOfCheckOut, b.NumberOfAdults, b.NumberOfChildren, DATEDIFF(DAY, b.DateOfRegestration, s.DateOfCheckOut) 
                  * (b.NumberOfAdults * rs.PricePerPerson + b.NumberOfChildren * rs.PricePerChild) AS Price
FROM     dbo.Bookings AS b INNER JOIN
                  dbo.Guests AS g ON b.PersonId = g.PersonId INNER JOIN
                  dbo.Rooms AS r ON b.RoomId = r.RoomID INNER JOIN
                  dbo.Specifications AS s ON b.BookingId = s.BookingId AND g.PersonId = s.PersonId AND r.RoomID = s.RoomId INNER JOIN
                  dbo.RoomStandards AS rs ON r.StandardId = rs.StandardId
ORDER BY b.DateOfRegestration DESC, b.BookingId DESC
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[34] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "b"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 275
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent = 
               Top = 7
               Left = 323
               Bottom = 170
               Right = 538
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "r"
            Begin Extent = 
               Top = 7
               Left = 586
               Bottom = 170
               Right = 822
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "s"
            Begin Extent = 
               Top = 7
               Left = 870
               Bottom = 170
               Right = 1076
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rs"
            Begin Extent = 
               Top = 7
               Left = 1124
               Bottom = 148
               Right = 1318
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BookingPanel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'BookingPanel'
GO

