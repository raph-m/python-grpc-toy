if [ ! -d .venvs/python_protos ]; then
  echo "No existing env, creating it"
  python3 -m venv .venvs/python_protos
fi

source .venvs/python_protos/bin/activate

pip install -r generate-requirements.txt