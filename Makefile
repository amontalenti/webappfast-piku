qcommit:
	@echo "Quick commit"
	git commit -a -m 'quick commit'

deploy:
	@echo "Deploy"
	git push && piku stop && piku deploy

logs:
	piku logs

shell:
	piku -t run bash
