FROM jupyter/pyspark-notebook

RUN pip install jupyter-contrib-nbextensions && \
    jupyter contrib nbextension install --user

RUN mkdir -p ~/.jupyter && \
    echo "c.Completer.use_jedi = False" >> ~/.jupyter/jupyter_notebook_config.py

RUN pip install jupyterlab-lsp python-lsp-server

RUN pip install tabnine-jupyter

CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
