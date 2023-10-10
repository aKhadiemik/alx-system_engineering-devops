#!/usr/bin/python3
"""
Module rerquests data through Reddit API
"""
import requests
after = None


def recurse(subreddit, hot_list=[]):
    """prints top ten post for given subreddit"""
    global after
    user_agent = {'User-Agent': 'Reddit API test'}
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    param = {'after': after}
    results = requests.get(url, headers=user_agent,
                           allow_redirects=False, params=param)

    if results.status_code == 200:
        top_ten = results.json().get("data").get("after")
        if top_ten is not None:
            after = top_ten
            recurse(subreddit, hot_list)
        all_titles = results.json().get("data").get("children")
        for title_ in all_titles:
            hot_list.append(title_.get("data").get("title"))
        return hot_list
    else:
        return (None)
