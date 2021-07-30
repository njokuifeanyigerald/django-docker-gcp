# !/bin/bash

python manage.py migrate
# apply database migrations

if ['$ENV' == 'dev']
# collect static files on it
DEV
then 
    python manage.py collectstatic  --noinput 
fi
# launch supervisor
/usr/local/bin/supervisord