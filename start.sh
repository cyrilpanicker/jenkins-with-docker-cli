if [ ! -d "./jenkins_home" ] 
then
    mkdir ./jenkins_home
fi
eval "echo \"$(cat .env.template)\"" > .env && docker-compose up -d