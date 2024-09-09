source .venvs/python_protos/bin/activate

python -m grpc_tools.protoc \
  -I ${PYTHON_GRPC_TOY_ROOT}/ \
  --python_out=./runtime \
  --grpc_python_out=./runtime \
  ${PYTHON_GRPC_TOY_ROOT}/protos/rank/routeDefinition.proto \
  ${PYTHON_GRPC_TOY_ROOT}/protos/rank/service.proto \
  ${PYTHON_GRPC_TOY_ROOT}/protos/model/entityType.proto

find ${PYTHON_GRPC_TOY_ROOT}/python_protos/runtime/protos -type d -exec touch {}/__init__.py  \;

python -m grpc_tools.protoc \
  -I ${PYTHON_GRPC_TOY_ROOT}/ \
  --pyi_out=./stubs \
  ${PYTHON_GRPC_TOY_ROOT}/protos/rank/routeDefinition.proto \
  ${PYTHON_GRPC_TOY_ROOT}/protos/rank/service.proto \
  ${PYTHON_GRPC_TOY_ROOT}/protos/model/entityType.proto;

find ${PYTHON_GRPC_TOY_ROOT}/python_protos/stubs/protos -type d -exec touch {}/__init__.py  \;