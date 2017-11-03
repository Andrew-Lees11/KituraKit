#!/bin/bash


USER=SwiftDevOps:${GH_TOKEN}
git config user.name "KituraKit bot"
git config push.default simple
git remote rm origin
git remote add origin https://${USER}@github.com/IBM-Swift/KituraKit
cd Sources/KituraKit
git checkout master .builds/checkouts/LoggerAPI.git*/Sources/LoggerAPI
git checkout master .builds/checkouts/CircuitBreaker.git*/Sources/CircuitBreaker
git checkout master .builds/checkouts/KituraContracts.git*/Sources/KituraContracts
git checkout master .builds/checkouts/SwiftyRequest.git*/Sources/SwiftyRequest
git checkout master Sources/KituraKit/Client.swift
git checkout master Sources/KituraKit/PersistableExtension.swift
git checkout master Sources/KituraKit/RequestErrorExtension.swift
git add .
git commit -m "Update to version 0.0.2"
git push
