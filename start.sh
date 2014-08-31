#!/bin/bash

docker run -i -t --rm --name nyu-vote-nginx --link nyu-vote:nyuVote -p 80:80 lingz/nyu-vote-nginx
