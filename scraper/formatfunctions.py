from tokenize import String
import pandas as pd


def fill_box_na(df: pd.DataFrame):
    """
    Fill NA values in a given boxscore dataframe
    """

    #defining default values
    na_team = "undefined"
    na_min = "00:00"
    na_quota = "0 - 0 - 0%"
    na_float = 0.0

    #filling null values
    df['team'] = df['team'].fillna(na_team)
    df['min'] = df['min'].fillna(na_min)
    df['2Ps'] = df['2Ps'].fillna(na_quota)
    df['3Ps'] = df['3Ps'].fillna(na_quota)
    df['FGs'] = df['FGs'].fillna(na_quota)
    df['FTs'] = df['FTs'].fillna(na_quota)
    df['Ps'] = df['Ps'].fillna(na_float)
    df['As'] = df['As'].fillna(na_float)
    df['BLs'] = df['BLs'].fillna(na_float)
    df['STs'] = df['STs'].fillna(na_float)
    df['TOs'] = df['TOs'].fillna(na_float)
    df['EFs'] = df['EFs'].fillna(na_float)


def name_formatter(df: pd.DataFrame):
    """
    creates a number and name for teamaction-rows in a boxscore dataframe
    """

    numbers = df['name'].apply(lambda x: 999 if x=="Team" else x[1:(x.find(" "))])
    df['name'] = df['name'].apply(lambda x: "Team" if x=="Team" else x[(x.find(" "))+1:])  
    df.insert(loc=2, column="number", value=numbers)

def min_to_sec(df: pd.DataFrame):
    """
    reformats the content of the minutes column(e.g. "3:56") in seconds (e.g. "236")
    """
    seconds = df['min'].apply(lambda x :  (int(x.split(":")[0])*60) +int(x.split(":")[1]))
    df.insert(loc=df.columns.get_loc('min'), column="sec",  value=seconds)
    df.drop(columns=['min'], inplace=True)

def quota_formatter(df: pd.DataFrame, c_name: String):
    """
    Reformats values in the "Succesful- Attempts - Relative"-Format into three seperate columns
    The relative column is further reshaped from a %-value to a decimal value
    """
    #getting the position of the column in question
    pos = df.columns.get_loc(c_name)

    #setting up the new column names
    new_names = [c_name[:-1]+"_P",c_name[:-1]+"_A", c_name[:-1]+"_R"]

    #extracting the data
    data = []
    data.append(df[c_name].apply(lambda x : int(x.split(" - ")[0])))
    data.append(df[c_name].apply(lambda x : int(x.split(" - ")[1])))
    data.append(df[c_name].apply(lambda x : float(x.split(" - ")[2][:-1])/100))

    #inserting new columns
    for i in reversed(range(3)):
        df.insert(loc=pos, column=new_names[i], value=data[i])

    #dropping old column
    df.drop(columns=[c_name], inplace=True)

def rebound_formatter(df : pd.DataFrame):
    """
    Reformats the Rebounds column of a given boxscore dataframe so that it only contains
    the total number of rebounds
    """
    df['Rs'] = df['Rs'].apply(lambda x : int(x.split(" - ")[2]) if len(x) > 3 else int(x))

#Testcases