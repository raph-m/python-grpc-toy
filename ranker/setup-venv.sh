cd ${PYTHON_GRPC_TOY_ROOT}/python_protos
make protos

cd ${PYTHON_GRPC_TOY_ROOT}/ranker

if [ ! -d .venvs/ranker ]; then
  echo "No existing env, creating it"
  python3 -m venv .venvs/ranker
fi
echo "Activating virtual environment"
source .venvs/ranker/bin/activate

pip install -r requirements.txt