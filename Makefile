#    Lunadry -- A code formatter.
#    Copyright (C) 2014 Patrick Joseph Donnelly
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

NAME = lunadry
VERSION = 1.0.0

tarball = $(NAME)-$(VERSION).tar.gz


$(tarball):
	git archive --format=tar.gz --prefix=$(NAME)-$(VERSION)/ HEAD > $@

release: $(tarball)

# vim: set noexpandtab tabstop=4:
