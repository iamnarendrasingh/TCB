Learning flask link : https://flask.palletsprojects.com/en/1.1.x/

16Jan2021
Task : Setup flask on system



Dependencies :

Werkzeug implements WSGI, the standard Python interface between applications and servers.

Jinja is a template language that renders the pages your application serves.

MarkupSafe comes with Jinja. It escapes untrusted input when rendering templates to avoid injection attacks.

ItsDangerous securely signs data to ensure its integrity. This is used to protect Flask’s session cookie.

Click is a framework for writing command line applications. It provides the flask command and allows adding custom management commands.


Virtual environments
Use a virtual environment to manage the dependencies for your project, both in development and in production.

What problem does a virtual environment solve? The more Python projects you have, the more likely it is that you need to work with different versions of Python libraries, or even Python itself. Newer versions of libraries for one project can break compatibility in another project.

Virtual environments are independent groups of Python libraries, one for each project. Packages installed for one project will not affect other projects or the operating system’s packages.

Python 3 comes bundled with the venv module to create virtual environments. If you’re using a modern version of Python, you can continue on to the next section.