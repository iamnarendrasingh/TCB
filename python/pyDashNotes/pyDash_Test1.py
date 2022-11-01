#importing important package
import pandas as pd

import chart_studio.plotly as py
import plotly.figure_factory as ff

#importing CSV file
df = pd.read_csv("https://raw.githubusercontent.com/plotly/datasets/master/school_earnings.csv")

#table = ff.create_table(df)
#py.iplot(table, filename='table1')
