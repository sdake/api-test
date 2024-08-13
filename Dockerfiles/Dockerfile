FROM debian:12

RUN apt update
RUN apt --yes install git
RUN apt --yes install python3-minimal
RUN apt --yes install python3-venv


ENV VENV_PATH="/source/v-env"
ENV PYTHON="${VENV_PATH}/bin/python"
ENV PIP="${VENV_PATH}/bin/pip"

RUN git clone https://github.com/sdake/api-test /source

WORKDIR /source
RUN python3 -m venv /source/v-env
ENV PATH=$PATH:/source/v-env/bin

RUN ${PIP} install wheel
RUN ${PIP} install build
RUN ${PIP} install setuptools
RUN ${PIP} install "fastapi[standard]"


#RUN ${PYTHON} -m build --wheel --no-isolation
RUN ${PIP} install . 

#CMD "${PYTHON}", "fastapi", "dev", "api.py" ]
CMD "${PYTHON}" "${VENV_PATH}/bin/fastapi" "dev" "api.py" "--host" "0.0.0.0" "--port" "8080"
