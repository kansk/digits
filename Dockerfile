FROM nvidia/digits:6.0

### Needed Packages Installation ###

RUN apt-get update && apt-get install -y --no-install-recommends \
            build-essential \
            dh-make \
            devscripts \
            equivs \
            lintian \
            g++ \
            git \
            python-dev \
            python-pip \
            python-six \
            python-requests \
            python-flask \
            python-gevent \
            python-flaskext.socketio \
            python-flaskext.wtf \
            python-wtforms \
            python-wxgtk2.8 \
            python-pydot \
            python-lmdb \
            python-pil \
            python-skimage \
            python-matplotlib \
            python-caffe-nv \
            caffe-nv \
            gunicorn \
            nginx \
            xterm \
            nano \
            curl \
            libprotobuf-dev && \
            rm -rf /var/lib/apt/lists/*


### Volume Mounts ###

VOLUME /data
VOLUME /s3-endpoint


### Port Mapping ###
# These are the ports DIGITS and Tensorboard listen to
EXPOSE 5000
EXPOSE 6006
