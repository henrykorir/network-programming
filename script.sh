#!/bin/bash

mkdir bin bin/client_server bin/showip bin/broadcaster bin/poll bin/select bin/talker_listener

gcc showip.c -o showip
mv ./showip  ./bin/showip/showip

gcc server.c -o server
mv ./server ./bin/client_server/server

gcc client.c -o client
mv ./client  ./bin/client_server/client

gcc poll.c -o poll 
mv ./poll  ./bin/poll/poll

gcc pollserver.c -o pollserver
mv ./pollserver  ./bin/poll/pollserver

gcc select.c -o select 
mv ./select  ./bin/select/select

gcc selectserver.c -o selectserver 
mv ./selectserver  ./bin/select/selectserver

gcc broadcaster.c -o broadcaster
mv ./broadcaster  ./bin/broadcaster/broadcaster

gcc talker.c -o talker
mv ./talker  ./bin/talker_listener/talker

gcc listener.c -o listener
mv ./listener  ./bin/talker_listener/listener

rm *.o -v # remove object files - it is useless now
