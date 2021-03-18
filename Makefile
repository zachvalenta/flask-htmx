port="5002"

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "srv:        start Flask dev server"
	@echo "hc:         hit healthcheck"
	@echo "ind:        open index page"
	@echo "fmt:        autoformat and lint"
	@echo "venv:       show environment info"
	@echo "deps:       list prod dependencies"
	@echo
	@echo "======================================================================"
	@echo

srv:
	poetry run flask run -p $(port)

hc:
	curl -w "\n" "http://127.0.0.1:$(port)/hc"

ind:
	open http://localhost:5002/

fmt:
	poetry run black app.py; poetry run black app.py

venv:
	poetry env info

deps:
	poetry show --tree --no-dev
