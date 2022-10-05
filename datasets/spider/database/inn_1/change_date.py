import pandas as pd
month_to_name={
        'JAN' : "01",
        'FEB' : "02",
        'MAR' : "03",
        'APR' : "04",
        'MAY' : "05",
        'JUN' : "06",
        'JUL' : "07",
        'AUG' : "08",
        'SEP' : "09", 
        'OCT' : "10",
        'NOV' : "11",
        'DEC' : "12"
};
df = pd.read_csv('./data_csv/Reservations.csv')
def change_date(x):
    x = x.split("-")
    x[2] = "20"+x[2][:len(x[2])-1]
    x[1] = month_to_name[x[1]]
    x = "-".join([x[2],x[1],x[0][1:]])
    print x
    return x
df["CheckIn"] = df["CheckIn"].apply(change_date)
df["CheckOut"] = df["CheckOut"].apply(change_date)
df.to_csv('./data_csv/Reservations_t.csv', encoding='utf-8', index=False)
