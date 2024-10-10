# Network Programming with BSD Sockets
A demonstration of network programming in C using sockets

## client.c and server.c
Is the normal client-server architecture that is using the connection oriented protocol (TCP).

## talker.c and listener.c
This demonstrates connection-less communication in which the talker does not need to know if the listener is up and running.
It 'fires and forget' using the User Datagram Protocol (UDP). If the listener running when the talker transmits the message, it will recieve the message otherwise the message will be lost and the talker does not care.

## poll.c, pollserver.c, select.c, and selectserver.c
These demonstrates how to achieve non-blocking socket I/O using the `poll()` and `select()` system calls in C. The examples provided show both proof-of-concept code and real-world applications of these APIs.
### Overview
The primary goal of these examples is to illustrate how to handle multiple file descriptors (e.g., sockets) without blocking the program while waiting for data. By using either `poll()` or `select()`, the program can monitor multiple connections and perform other operations concurrently.
1. **poll.c**  
   Proof of concept demonstrating the behavior of the `poll()` system call. This example shows how to use `poll()` to monitor multiple file descriptors for readability, writability, or errors.
2. **select.c**  
   Proof of concept demonstrating the behavior of the `select()` system call. This example showcases how `select()` works to monitor a set of file descriptors for various events.
3. **pollserver.c**  
   A server implementation using the `poll()` API to manage multiple client connections in a non-blocking manner. This demonstrates how `poll()` can be used in real-world applications to efficiently handle I/O on many sockets.
4. **selectserver.c**  
   A server implementation using the `select()` API to manage multiple client connections. This shows how `select()` can be applied in a practical server application to handle multiple sockets without blocking.
