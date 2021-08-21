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

logs:
	piku logs

shell:
	piku -t run bash

show:
	piku run -- tree /home/piku/.piku -L 2

uwsgi-restart:
	piku run -- sudo /etc/init.d/uwsgi-piku restart

nginx-restart:
	piku run -- sudo /etc/init.d/nginx restart

hard-restart: nginx-restart uwsgi-restart
	piku restart
