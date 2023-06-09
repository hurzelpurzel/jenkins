JENKINS_HOST=localhost:8080
JOBNAME=test2
USER=ludger
APITOKEN=11d3766a5e67027781a9db3a5931c28449
#CRUMB=$(curl -u $USER:$PW  "http://$JENKINS_HOST/crumbIssuer/api/xml?xpath=/*/crumb/text()")
#echo "crumb = $CRUMB"
curl -v -u $USER:$APITOKEN -X POST  -H "Content-Type:application/xml" -d "@/home/ludger/02_Development/jenkins/template.xml" "http://$JENKINS_HOST/createItem?name=$JOBNAME" 