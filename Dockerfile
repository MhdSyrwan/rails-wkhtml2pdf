# Use the barebones version of Ruby 2.2.3.
FROM mhdsyrwan/rails-essentials:latest

# Optionally set a maintainer name to let people know who made this image.
MAINTAINER Muhammad Al-Syrwan <mhdsyrwan@gmail.com>

RUN apt-get install -yq libqtwebkit-dev --fix-missing --no-install-recommends

RUN curl -o /tmp/wkhtml2pdf.deb http://download.gna.org/wkhtmltopdf/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb

RUN dpkg -i /tmp/wkhtml2pdf.deb; exit 0

RUN apt-get install -fy --fix-missing
