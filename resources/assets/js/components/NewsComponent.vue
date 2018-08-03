<template>
    <section class="b-news-component">
        <article class="b-news" v-for="news in newsItems">
            <div class="row">
                <div class="col-4 col-sm-2 col-md-2 col-lg-1 col-xl-1">
                    <div class="b-news__date">
                                <span class="b-news__day">
                                    {{ news.published_at | formatDate('DD') }}
                                </span>
                        <span class="b-news__month">
                                    {{ news.published_at | formatDate('MMM') }}
                                </span>
                        <span class="b-news__year">
                                    {{ news.published_at | formatDate('YYYY') }}
                                </span>
                    </div>
                </div>
                <div class="col-8 col-sm-10 col-md-10 col-lg-11 col-xl-11">

                    <a href="#">
                        <h3 class="b-news__title">
                            {{ news.title }}
                        </h3>
                    </a>
                    <span class="b-news__place text-uppercase">{{ news.place }}</span>
                    <p class="b-news__summary">
                        {{ news.summary }}
                    </p>

                </div>
            </div>
        </article>
    </section>
</template>
<script>
    import axios from 'axios';

    export default {
        name: 'news-component',
        data() {
            return {
                newsItems: []
            };
        },
        created() {
            axios.get('/api/news').then(response => {
                this.newsItems = response.data;
            });
        }
    }
</script>