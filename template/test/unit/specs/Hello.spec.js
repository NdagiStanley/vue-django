import Vue from 'vue'{{#if_eq lintConfig "airbnb"}};{{/if_eq}}
import Hello from '@/components/Hello'{{#if_eq lintConfig "airbnb"}};{{/if_eq}}

describe('Hello.vue', () => {
  it('should render correct contents', () => {
    const Constructor = Vue.extend(Hello){{#if_eq lintConfig "airbnb"}};{{/if_eq}}
    const vm = new Constructor().$mount(){{#if_eq lintConfig "airbnb"}};{{/if_eq}}
    expect(vm.$el.querySelector('.hello h1').textContent)
    {{#if_eq runner "karma"}}.to.equal('Hello World!'){{#if_eq lintConfig "airbnb"}};{{/if_eq}}{{/if_eq}}{{#if_eq runner "jest"}}.toEqual('Hello World!'){{#if_eq lintConfig "airbnb"}};{{/if_eq}}{{/if_eq}}
  }){{#if_eq lintConfig "airbnb"}};{{/if_eq}}
}){{#if_eq lintConfig "airbnb"}};{{/if_eq}}
