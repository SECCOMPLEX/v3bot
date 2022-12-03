if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SECCOMPLEX/v3bot.git /v3bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /v3bot
fi
cd /v3bot
pip3 install -U -r requirements.txt
echo "Starting v3bot...."
python3 bot.py
