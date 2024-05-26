<script setup lang="ts"></script>

<template>
  <div class="p-8">
    <h1 class="text-3xl font-bold mb-6">Medical Office Dashboard</h1>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
      <!-- Number of Records -->

      <div class="bg-white shadow rounded-lg p-6">
        <div class="flex items-center justify-between mb-4">
          <div>
            <span class="text-gray-600 text-sm">Number of Records</span>

            <h2 class="text-2xl font-bold">1,532</h2>
          </div>

          <div class="text-blue-500 bg-blue-100 rounded-full p-4">
            <i class="fas fa-file-medical fa-2x"></i>
          </div>
        </div>
      </div>

      <!-- Number of Patients Treated -->

      <div class="bg-white shadow rounded-lg p-6">
        <div class="flex items-center justify-between mb-4">
          <div>
            <span class="text-gray-600 text-sm">Patients Treated</span>

            <h2 class="text-2xl font-bold">874</h2>
          </div>

          <div class="text-green-500 bg-green-100 rounded-full p-4">
            <i class="fas fa-user-md fa-2x"></i>
          </div>
        </div>
      </div>

      <!-- Patients with Green Records -->

      <div class="bg-white shadow rounded-lg p-6">
        <div class="flex items-center justify-between mb-4">
          <div>
            <span class="text-gray-600 text-sm">Green Records</span>

            <h2 class="text-2xl font-bold">645</h2>
          </div>

          <div class="text-green-500 bg-green-100 rounded-full p-4">
            <i class="fas fa-notes-medical fa-2x"></i>
          </div>
        </div>
      </div>

      <!-- Patients with Yellow Records -->

      <div class="bg-white shadow rounded-lg p-6">
        <div class="flex items-center justify-between mb-4">
          <div>
            <span class="text-gray-600 text-sm">Yellow Records</span>

            <h2 class="text-2xl font-bold">279</h2>
          </div>

          <div class="text-yellow-500 bg-yellow-100 rounded-full p-4">
            <i class="fas fa-exclamation-triangle fa-2x"></i>
          </div>
        </div>
      </div>

      <!-- Patients with Red Records -->

      <div class="bg-white shadow rounded-lg p-6">
        <div class="flex items-center justify-between mb-4">
          <div>
            <span class="text-gray-600 text-sm">Red Records</span>

            <h2 class="text-2xl font-bold">103</h2>
          </div>

          <div class="text-red-500 bg-red-100 rounded-full p-4">
            <i class="fas fa-procedures fa-2x"></i>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
