# Hotel_Database_SQL :hotel:
This is an example of a simple database storing basic information related to room reservations in a hotel.

## The project consists of 7 tables:

  * Bookings
      - BookingId
      - PersonId
      - BookingDate
      - DateOfRegestration
      - NumberOfAdults
      - NumberOfChildren
      - RoomId
        
  * Specifications
      - BookingId
      - PersonId
      - DateOfCheckOut
      - RoomId
        
  * Guests
      - PersonId
      - FirstName
      - Surname
      - City
      - PostCode
      - Street
      - FlatHouseNumber
        
  * Rooms
      - RoomID
      - RoomNumber
      - Floor
      - MaxNumberOfGuests
      - StandardId
        
  * RoomStandards
      - StandardId
      - PricePerPerson
      - PricePerChild
        
  * BookingChanges
    Contains the same columns as the Bookings table.<br>
    Used to store changed records in the Bookings table.
    
  * DeletedGuests
    Contains the same columns as the Guests table.<br>
    Used to store deleted records in the Guests table.

## The project also includes views:

  * BookingPanel <br>
    <i>Provides a detailed view of reservations</i>
     - BookingId
     - BookingDate
     - FirstName
     - Surname
     - RoomNumber
     - DateOfRegestration
     - DateOfCheckOut
     - NumberOfAdults
     - NumberOfChildren
     - Price
       
  * GuestsNumOfBooking <br>
    <i>Shows how many bookings a particular customer has made</i>
      - FirstName
      - Surname
      - City
      - NumOfBookings
    
  * RoomPrices <br>
    <i>Presents prices of all rooms</i>
     - RoomNumber
     - Floor
     - MaxNumberOfGuests
     - PricePerPerson
     - PricePerChild
     - PriceFrom (lowest possible price per room)
     - PriceTo (highest possible price per room)

---

<br>

# Baza danych - Hotel :hotel:

Jest to przykład prostej bazy danych przechowującej podstawowe informacje związane z rezerwacją pokoju w hotelu.

## Projekt składa się z 7 tabel:

  * Bookings
      - BookingId
      - PersonId
      - BookingDate
      - DateOfRegestration
      - NumberOfAdults
      - NumberOfChildren
      - RoomId
        
  * Specifications
      - BookingId
      - PersonId
      - DateOfCheckOut
      - RoomId
        
  * Guests
      - PersonId
      - FirstName
      - Surname
      - City
      - PostCode
      - Street
      - FlatHouseNumber
        
  * Rooms
      - RoomID
      - RoomNumber
      - Floor
      - MaxNumberOfGuests
      - StandardId
        
  * RoomStandards
      - StandardId
      - PricePerPerson
      - PricePerChild
        
  * BookingChanges
    Zawiera te same kolumny co tabela Bookings.<br>
    Służy do przechowywania zmienionych rekordów w tabeli Bookings.
    
  * DeletedGuests
    Zawiera te same kolumny co tabela Guests.<br>
    Służy do przechowywania usuniętych rekordów w tabeli Guests.

## W projekcie utworzone zostały również widoki:

  * BookingPanel <br>
    <i>Stanowi szczegółowy podgląd do rezerwacji</i>
     - BookingId
     - BookingDate
     - FirstName
     - Surname
     - RoomNumber
     - DateOfRegestration
     - DateOfCheckOut
     - NumberOfAdults
     - NumberOfChildren
     - Price
       
  * GuestsNumOfBooking <br>
    <i>Pokazuje ile rezerwacji dokonał dany klient</i>
      - FirstName
      - Surname
      - City
      - NumOfBookings
    
  * RoomPrices <br>
    <i>Przedstawia ceny wszsystkich pokoi</i>
     - RoomNumber
     - Floor
     - MaxNumberOfGuests
     - PricePerPerson
     - PricePerChild
     - PriceFrom (najniższa możliwa cena za pokój)
     - PriceTo (najwyższa możliwa cena za pokój)
