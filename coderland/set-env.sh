#/usr/local/bin/launch.sh
#until $(oc get project istio-system &> /dev/null); do sleep 1; done
echo "in set-env from the github repo v27-17:17"
oc login -u admin -p admin 

mkdir -p ~/projects/ && cd ~/projects/

#export PATH=$PATH:/root/installation/istio-1.0.5/bin


curl https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.gz -o node-v10.15.3-linux-x64.tar.gz 
sleep 5
tar zxf node-v10.15.3-linux-x64.tar.gz && rm -f node-v10.15.3-linux-x64.tar.gz && export PATH=~/projects/node-v10.15.3-linux-x64/bin:$PATH

cd ~/projects/ && git clone https://github.com/redhat-developer-demos/coderland-photo-store
cd coderland-photo-store
npm install

#set whatever environment variables are needed to run Don's code. I think (fingers crossed) that I can do this via the Katacoda URL that I can get automatically.

#npm start &

cd ~/projects/ && git clone https://github.com/redhat-developer-demos/knative-proxy
cd knative-proxy
npm install

# set environment variables as needed
#npm start &

cd ~/projects/ && git clone https://github.com/redhat-developer-demos/image-overlay
cd image-overlay
mvn package
java -jar target/imageOverlay-1.0.0.jar & 

cd ~/projects/ && git clone https://github.com/openshift-cloud-functions/knative-operators 
cd knative-operators/etc/scripts
./install.sh

cd ~/projects/

