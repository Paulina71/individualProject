FROM python:3.6.8
ENV home_dir=/opt/redis_data/
WORKDIR ${home_dir}
RUN mkdir -p ${home_dir} && pip install --upgrade pip && pip install jupyter
        && pip install redis
COPY ./ ./
CMD ["jupyter","notebook","--port=8888","--no-browser","--ip=0.0.0.0","--allow-root","- -NotebookApp.token=''","--NotebookApp.password=''"]
