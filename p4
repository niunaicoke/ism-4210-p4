use EBE;
select EventCode, EventName, Description, EventDate, StartTime, EndTime
from events
where Ticket =true
order by EventDate asc;

use EBE;
select count(VenueID)
from venue
where Parking=true and City='Gainesville';

use EBE;
select VenueID, count(VenueID) as number_of_events
from events
group by VenueID
order by number_of_events desc;

use EBE;
select EventCode, TicketPrice*TicketsSold as rev
from ticketed_events
where TicketsAvailable = TicketsSold
order by rev desc;

use EBE;
select distinct Ticket, sec_to_time(avg(timediff(EndTime,StartTime))) as average_duration
from events
group by Ticket;

use EBE;
select distinct ClientID, count(ContactName) as num_contact
from contact
group by ClientID asc; 

