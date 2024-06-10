import instance from './instance';
import Swal from 'sweetalert2'

export async function  login(data) {
    return instance.post(`/login`, {user: {email: data.email, password: data.password}}).then(res => {
        localStorage.setItem('auth_token',res.headers.authorization)
        console.log(res)
        return res; 
    }).catch(error => {
        console.log(error)
        // Swal.fire('Ops', error.response.data.error, 'error');
    });
}

export async function getHealthProfiles() {
    // axios.defaults.headers.common['Authorization'] = 'bearer:' + localStorage.getItem('auth');

    instance.post(`${instance.defaults.baseURL}/health_profiles`).then(res => {
        console.log(res.data)
        alert(res.data);
        return res;
    }).catch(error => {
        alert(error);
    });
}