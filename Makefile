port="5002"

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "srv:        start Flask dev server"
	@echo "hc:         hit healthcheck"
	@echo "ind:        open index page"
	@echo "load:       run load test"
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

load:
	poetry run locust -f locustfile.py --headless -t 10s -u 5 -r 1 --host "http://127.0.0.1:$(port)"

fmt:
	poetry run black *.py; poetry run black *.py

venv:
	poetry env info

deps:
	poetry show --tree --no-dev
