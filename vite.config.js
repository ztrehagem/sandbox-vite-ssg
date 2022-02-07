import path from "path";
import { defineConfig } from "vite";

export default defineConfig({
  root: path.resolve("src"),

  publicDir: path.resolve("public"),

  build: {
    outDir: path.resolve("dist"),

    rollupOptions: {
      input: {
        index: path.resolve("src/index.html"),
        foo: path.resolve("src/foo.html"),
        nested: path.resolve("src/nested/index.html"),
        "nested/bar": path.resolve("src/nested/bar.html"),
      },
    },
  },
});
