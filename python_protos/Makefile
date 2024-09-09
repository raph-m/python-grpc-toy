maybe-create-venv:
	bash maybe-create-venv.sh

protos: maybe-create-venv
	source .venvs/python_protos/bin/activate; \
	which python;
	python -m grpc_tools.protoc \
		-I ${PYTHON_GRPC_TOY_ROOT}/ \
		--python_out=. \
		--grpc_python_out=. \
		${PYTHON_GRPC_TOY_ROOT}/protos/rank/routeDefinition.proto \
		${PYTHON_GRPC_TOY_ROOT}/protos/rank/service.proto;
