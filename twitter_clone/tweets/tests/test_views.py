from django.core.urlresolvers import reverse
from django.test import TestCase


class TweetViewTest(TestCase):
    def setUp(self):
        self.url = reverse('tweets')

    def test_tweet_index_should_have_greetings(self):
        response = self.client.get(self.url)

        expected = 'Hello, Twitter Clone!'
        self.assertContains(response, expected, status_code=200)
