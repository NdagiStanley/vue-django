<template>
	<div id="user-input">
		<input v-model="newKeywordText" v-on:keyup.enter="searchKeyword"></input>
		<button v-on:click="searchKeyword">Search</button>
	</div>
</template>

<script>
export default {
	data: function() {
		return {
			newKeywordText: ''
		}
	},
	methods: {
		searchKeyword () {
			// pass
			// Future dispatch to store
			this.newKeywordText = ''
		}
	}
}
</script>
