<template>
	<div v-if="loading" class="loading">Loading...</div>

	<div v-if="error" class="error">{{ error }}</div>
	<ul role="list" class="divide-y divide-gray-100">
		<li
			v-for="health_profile in health_profiles"
			:key="health_profile.email"
			class="flex justify-between gap-x-6 py-5"
		>
			<div class="flex min-w-0 gap-x-4">
				<div class="min-w-0 flex-auto">
					<p class="text-sm font-semibold leading-6 text-gray-900">
						{{ health_profile.name }}
					</p>
					<p class="mt-1 truncate text-xs leading-5 text-gray-500">
						{{ health_profile.birth_date }}
					</p>
				</div>
			</div>
			<div class="hidden shrink-0 sm:flex sm:flex-col sm:items-end">
				<p class="text-sm leading-6 text-gray-900">
					{{ health_profile.gender }}
				</p>
				<p
					v-if="health_profile.created_at"
					class="mt-1 text-xs leading-5 text-gray-500"
				>
					Criado em
					<time :datetime="person.created_at">{{
						health_profile.created_at
					}}</time>
				</p>
				<div v-else class="mt-1 flex items-center gap-x-1.5">
					<div class="flex-none rounded-full bg-emerald-500/20 p-1">
						<div class="h-1.5 w-1.5 rounded-full bg-emerald-500" />
					</div>
					<p class="text-xs leading-5 text-gray-500">Online</p>
				</div>
			</div>
		</li>
	</ul>
</template>

<script setup>
import { onMounted, ref, watch } from 'vue'
import { useRoute } from 'vue-router'
import { getHealthProfiles } from '../api';
//ref é igual useState em react
const loading = ref(false)
const health_profiles = ref([])
const error = ref(null)

onMounted(() => fetchData());

async function fetchData() {
  error.value = health_profiles.value = []
  loading.value = true
	console.log('teste')
  try {
    // replace `getPost` with your data fetching util / API wrapper
    health_profiles.value = await getHealthProfiles()
	console.log(health_profiles)  
  } catch (err) {
    error.value = err.toString()
  } finally {
    loading.value = false
  }
}

</script>
