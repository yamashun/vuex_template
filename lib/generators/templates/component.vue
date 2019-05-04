<template>
<div>
  <foo-bar></foo-bar>
</div>
</template>

<script>
import { mapGetters } from "vuex";
import FooBar from "components/foo/bar";

export default {
  components: {
    FooBar,
  },
  mounted () {
    // some initial processing
  },
  data () {
    return {
      localValue: "",
    };
  },
  computed: {
    ...mapGetters(["foo"]),
    submittable () {
      return false;
    },
  },
  methods: {
    clickButton() {
    },
  },
};
</script>
