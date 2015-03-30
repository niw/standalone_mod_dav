Standalone WebDav Server
========================

This is a tiny script, configuration and directory structure which can run WebDav server using [Apache HTTP Server](http://httpd.apache.org/).
Basically designed to run WebDav server quickly on OS X.

Usage
-----

Clone this repository and symbolic link ``modules`` directory where Apache HTTP server is using. On OS X, it's ``/usr/libexec/apache2``.

    $ git clone https://github.com/niw/standalone_mod_dav.git
    $ cd standalone_mod_dav
    $ ln -s /usr/libexec/apache2 modules 

Create ``document_root`` directory

    $ mkdir document_root

or create a symbolic link where you want to use as a root.

    $ ln -s ~/Documents document_root

Use ``htdigest`` command to create credentials to allow access this WebDav.

    $ htdigest -c .htdigest dav USER_NAME

Then run next command.

    $ ./httpd start

If it's failing, you may see error in ``logs/error_log`` or, you may need to use Apache HTTP Server 2.4, which comes with OS X 10.10 Yosemite.

Access to the WebDav
--------------------

Assuming you're testing this on your OS X. Open Finder then hit `⌘-K`, then put `http://localhost:4000` to Server Address field. Put user name and password you set to ``.htdigest`` then you'll see ``document_root`` in the Finder.

Security
--------

The default configuration is only allowing access from ``localhost``.
You may want to modify ``httpd.conf`` to allow, deny access from specific host.

Also, this is not intended to use in public, there are no SSL configurations yet.
Please **do not** expose this WebDav server without any additional security layers.
