#!/usr/bin/python3
"""
Module gets number of subreddit subscribers through Reddit API
"""
from requests import get


def number_of_subscribers(subreddit):
    """
    function returns total number of subscribers
    """

    if subreddit is None or not isinstance(subreddit, str):
        return 0

    user_agent = {'User-agent': 'Reddit API test'}
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    response = get(url, headers=user_agent, allow_redirects=False)
    results = response.json()

    try:
        return results.get('data').get('subscribers')

    except Exception:
        return 0
