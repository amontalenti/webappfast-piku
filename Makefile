help:
	@echo "Try: dummycommit, quickcommit, pushboth, deploy, logs, shell, show, hard-restart"

dummycommit:
	@echo "Dummy commit"
	git commit --allow-empty -m 'dummy commit'

quickcommit:
	@echo "Quick commit"
	git commit -a -m 'quick commit'

pushboth:
	git push && git push origin

deploy:
	@echo "Deploy"
	git push && piku stop && piku deploy

tail-piku-logs:
	piku logs

logs: tail-piku-logs

shell:
	piku -t run bash

show:
	piku run -- tree /home/piku/.piku -L 2

tail-uwsgi-logs:
	piku run -- tail -n1000 -f /home/piku/.piku/uwsgi/uwsgi.log

tail-nginx-access:
	piku run -- sudo tail -n100 -f /var/log/nginx/access.log

tail-nginx-errors:
	piku run -- sudo tail -n100 -f /var/log/nginx/error.log

uwsgi-restart:
	piku run -- sudo /etc/init.d/uwsgi-piku restart

nginx-restart:
	piku run -- sudo /etc/init.d/nginx restart

hard-restart: nginx-restart uwsgi-restart
	piku restart
