# Example docker pyqt on raspberry pi

<h2>commands</h2>

<p>docker build:</p>
<pre><code>docker build --tag testpyqt .</code></pre>

<p>run GUI app in docker using x server:</p>
<pre><code>docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY testpyqt</code></pre>
<blockquote><p>link: https://stackoverflow.com/questions/24095968/docker-for-gui-based-environments</p></blockquote>

<p>Im case we have the error "QXcbConnection: Could not connect to display unix:0" then run:</p>
<pre><code>xhost +</code></pre>
<blockquote><p>link: https://github.com/jessfraz/dockerfiles/issues/155</p></blockquote>
