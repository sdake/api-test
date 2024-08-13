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
RUN ls -lR /source/v-env

RUN ${PIP} install wheel
RUN ${PIP} install build
RUN ${PIP} install setuptools
RUN ${PYTHON} -m build --wheel --no-isolation

RUN ${PIP} install dist/*.whl

CMD [ "${VENV}/python api.py" ]
