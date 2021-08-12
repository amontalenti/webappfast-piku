help:
	@echo "Try: dummycommit, quickcommit, deploy, logs, shell"

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
