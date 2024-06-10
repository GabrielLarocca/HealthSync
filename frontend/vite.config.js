import { fileURLToPath, URL } from "node:url";

import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";

// https://vitejs.dev/config/
export default defineConfig({
	plugins: [vue()],
	resolve: {
		alias: {
			"@": fileURLToPath(new URL("./src", import.meta.url)),
		},
	},
	server: {
		host: "0.0.0.0",
		port: 5173, // This is the port which we will use in docker
		// Thanks @sergiomoura for the window fix
		// add the next lines if you're using windows and hot reload doesn't work
	},
	watch: {
		usePolling: true,
	},
	configureWebpack: {
		entry: "./src/main.js",
		devServer: {
			hot: true,
		},
		watch: true,
		watchOptions: {
			ignored: /node_modules/,
			poll: 1000,
		},
	},
	transpileDependencies: true,
});
