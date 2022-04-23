# cheeseos
<h1>cheeseos is a hobby OS written in assembly</h1>

<br>

<h2>os.bin is the fully compiled build of cheeseos</h2>
<p>running the os:</p>

<p>qemu-system-x86_64 os.bin</p>
<p>note: qemu and qemu-system packages are required</p>
<p><b>WARNING:</b> while cheeseos can be flashed to a drive and run on actual hardware it won't work correctly</p>
<br>

<h2>manual compiling:</h2>
<p>to compile any part of the os simply run:</p>
<p>nasm -f bin FILENAME</p>
