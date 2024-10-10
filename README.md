# Network Programming with BSD Sockets
A demonstration of network programming in C using sockets

## client.c and server.c
Is the normal client-server architecture that is using the connection oriented protocol (TCP).

## talker.c and listener.c
This demonstrates **connection-less communication**, where the sender (talker) does not need to know if the receiver (listener) is up and running. It uses a "fire-and-forget" approach with **User Datagram Protocol (UDP)**.
In this model:
`*` The talker sends a message without establishing a connection with the listener.
`*` If the listener is running at the time the message is transmitted, it will receive the message.
`*` If the listener is not available, the message will be lost.
`*` The talker does not care whether the message is received, as there is no feedback mechanism or guarantee of delivery in UDP.

## poll.c, pollserver.c, select.c, and selectserver.c
These demonstrates how to achieve non-blocking socket I/O using the `poll()` and `select()` system calls in C. The examples provided show both proof-of-concept code and real-world applications of these APIs.
The primary goal of these examples is to illustrate how to handle multiple file descriptors (e.g., sockets) without blocking the program while waiting for data. By using either `poll()` or `select()`, the program can monitor multiple connections and perform other operations concurrently.
1. **poll.c**  
   Proof of concept demonstrating the behavior of the `poll()` system call. This example shows how to use `poll()` to monitor multiple file descriptors for readability, writability, or errors.
2. **select.c**  
   Proof of concept demonstrating the behavior of the `select()` system call. This example showcases how `select()` works to monitor a set of file descriptors for various events.
3. **pollserver.c**  
   A server implementation using the `poll()` API to manage multiple client connections in a non-blocking manner. This demonstrates how `poll()` can be used in real-world applications to efficiently handle I/O on many sockets.
4. **selectserver.c**  
   A server implementation using the `select()` API to manage multiple client connections. This shows how `select()` can be applied in a practical server application to handle multiple sockets without blocking.

## broadcast.c
This demonstrates the transmission of broadcast messages to the entire network nodes.
The principle of operation is that the 
