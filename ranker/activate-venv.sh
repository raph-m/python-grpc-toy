if [ ! -d .venvs/ranker ]; then
  echo "No existing env, creating it"
  python3 -m venv .venvs/ranker
fi
echo "Activating virtual environment"
source .venvs/ranker/bin/activate