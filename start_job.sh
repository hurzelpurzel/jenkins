JENKINS_HOST=localhost:8080
JOBNAME=test2
USER=ludger
APITOKEN=11d3766a5e67027781a9db3a5931c28449
curl -v -X POST -u $USER:$APITOKEN "http://$JENKINS_HOST/job/$JOBNAME/build"
#curl "http://JENKINS_HOST/job/MY_JOB_NAME/buildWithParameters?PARAMETER0=VALUE0&PARAMETER1=VALUE1"



# Job info
# http://localhost:8080/job/test2/api/xml
# Build info
# http://localhost:8080/job/test2/1/api/xml

# Job log
http://localhost:8080/job/test2/lastBuild/consoleText