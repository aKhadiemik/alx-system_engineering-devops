#!/usr/bin/python3
"""
Module prints titles of the first 10 hot posts for a given subreddit
"""
from requests import get


def top_ten(subreddit):
    """
    function prints the titles of the first
    10 hot posts for a given subreddit
    """

    if subreddit is None or not isinstance(subreddit, str):
        print("None")

    user_agent = {'User-agent': 'Reddit API test'}
    params = {'limit': 10}
    url = 'https://www.reddit.com/r/{}/hot/.json'.format(subreddit)

    response = get(url, headers=user_agent, allow_redirects=False,
                   params=params)
    results = response.json()

    try:
        subreddit_posts = results.get('data').get('children')

        for i in subreddit_posts:
            print(i.get('data').get('title'))

    except Exception:
        print("None")
