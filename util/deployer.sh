echo ''
echo '-------------------------------------'
echo 'Start Deploying ......'
echo '-------------------------------------'

GitHubEMail=lrxcywq@outlook.com
GitHubUser=lrxcy
GitHubKEY=lrxcy
GitHubRepo=CheckChrome

mkdir ./_deploy
cd ./_deploy
git init
git config --global push.default matching
git config --global user.email "${GitHubEMail}"
git config --global user.name "${GitHubUser}"
git remote add origin https://github.com/${GitHubKEY}/${GitHubRepo}.git
git pull origin url_ssl
rm -rf ./*
cp -rf ../public/* ../_deploy/
git add --all .
git commit -m "Daily check of Chrome offline packages by Travis CI"
git push --quiet --force origin HEAD:url_ssl
