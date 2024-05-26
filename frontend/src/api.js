import axios from 'axios'

export function login(data) {
    axios.defaults.baseURL = 'http://localhost:3000';

    return axios.post(`${axios.defaults.baseURL}/login`, {user: {email: data.email, password: data.password}}).then(res => {
        // localStorage.setItem('auth', 'bearer:' + res.data.jti)
        return res;
    }).catch(error => {
        alert(error);
    });
}

export function getHealthProfiles() {
    axios.defaults.baseURL = 'http://localhost:3000';
    axios.defaults.headers.common['Authorization'] = 'bearer:' + localStorage.getItem('auth');

    axios.post(`${axios.defaults.baseURL}/health_profiles`).then(res => {
        console.log(res.data)
        alert(res.data);
        return res;
    }).catch(error => {
        alert(error);
    });
}