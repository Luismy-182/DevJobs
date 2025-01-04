<x-guest-layout>
    <div class="mb-4 text-sm text-gray-600">
        {{ __('Olvidaste tu password? no te preocupes, coloca tu email y te enviaremos un enlace para crear uno nuevo.') }}
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <div class="flex justify-between my-5">
            <!--:href= ya esta en html para redireccionar -->
           {{--Este es otra forma de comentar en los blade--}}

                <x-link :href="route('login')"> 
                   Iniciar sesión
               </x-link>

               <x-link :href="route('register')">
                   Crear cuenta
               </x-link>

        </div>
   

        <x-primary-button class="justify-center w-full">
            {{ __('Enviar instrucciones') }}
        </x-primary-button>
    </form>
</x-guest-layout>
