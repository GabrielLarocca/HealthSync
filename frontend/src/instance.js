import axios from "axios";

const bearer_token = localStorage.getItem('auth_token');

const instance = axios.create({ 
    baseUrl: import.meta.env.VITE_BACKEND_URL
});

instance.defaults.headers.common['Authorization'] = bearer_token ?? null;
instance.defaults.baseURL = import.meta.env.VITE_BACKEND_URL;

export default instance;

