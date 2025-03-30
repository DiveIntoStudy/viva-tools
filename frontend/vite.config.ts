import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import tsconfigPaths from "vite-tsconfig-paths";

export default defineConfig(() => {
  return {
    plugins: [react(), tsconfigPaths()],
    base: "/", 
    server: {
      port: 3000,
    },
    build: {
      outDir: "build",
    },
  };
});
