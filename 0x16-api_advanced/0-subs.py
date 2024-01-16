#!/usr/bin/python3
"""
    Script thatqueries the redit apt and returns the numbers of
    subscribers of a subreddit passed to it
"""

import requests


def number_of_subscribers(subreddit):
    """
        Function that returns the numbers of
        subscribers of a subreddit passed to it
    """

    apiUrl = "https://reddit.com/r/{}/about.json".format(subreddit)
    userAgent = "Mozilla/5.0"

    response = requests.get(apiUrl, headers={"user-agent": userAgent})
    if not response:
        return 0
    retValue = response.json().get('data').get('subscribers')
    if retValue:
        return retValue
    else:
        return 0
