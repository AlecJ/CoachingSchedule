const app = Vue.createApp({
    data() {
        return {
            news_items: [
                {'id': 1,
                 'text': 'This is a news item!',
                 'time': '13 hours ago'},
                 {'id': 2,
                 'text': 'And another one!',
                 'time': '13 hours ago'},
                 {'id': 3,
                 'text': 'Third one!',
                 'time': '13 hours ago'}
            ]
        }
    }
})
