# network-programming
A demonstration of network programming in C using sockets

## client.c and server.c
Is the normal client-server architecture that is using the connection oriented protocol (TCP).

## talker.c and listener.c
This demonstrates connection-less communication in which the talker does not need to know if the listener is up and running.
It 'fires and forget' using the User Datagram Protocol (UDP). If the listener running when the talker transmits the message, it will recieve the message otherwise the message will be lost and the talker does not care.

## poll.c, pollserver.c, select.c, and selectserver.c
The common operation of the above codes is to ensuring achievement of ublocking sockets and allow other operations to continue as it waits for response.
Poll.c and pollserver.c uses `poll()` api and select.c and selectserver.c uses `select()` api.
<ul>
  <li>poll.c: This demonste</li>
</ul>

