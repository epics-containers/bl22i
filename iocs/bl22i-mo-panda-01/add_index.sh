#!/bin/bash
pod=$(kubectl get pods --no-headers -l app=bl22i-opis -o custom-columns=:metadata.name)
kubectl cp  index.bob $pod:/usr/share/nginx/html/bl22i-ea-ioc-03/index.bob
