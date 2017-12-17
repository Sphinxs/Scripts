
# -*- encoding: utf8 -*-


from mpl_toolkits.basemap import Basemap

import matplotlib.pyplot as plt


map = Basemap ()

map.drawcoastlines (color = '#777799')

map.drawcountries (color = '#ccccee')


plt.savefig('Map', format = 'png')
