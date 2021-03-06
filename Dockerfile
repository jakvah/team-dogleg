FROM python:3.7

#RUN pip install gym numpy matplotlib tensorflow==1.15 stable-baselines
EXPOSE 8988
EXPOSE 6006

ENV PROJECT_PATH=/usr/src
WORKDIR $PROJECT_PATH

COPY requirements.txt $PROJECT_PATH
RUN pip install --no-cache-dir -r $PROJECT_PATH/requirements.txt

COPY gym-drill $PROJECT_PATH
RUN pip install --no-cache-dir -e $PROJECT_PATH


#Add comment for git
