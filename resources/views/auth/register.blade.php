<x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Nombre')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Repetir Password')" />

            <x-text-input id="password_confirmation" class="block mt-1 w-full"
                            type="password"
                            name="password_confirmation" required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>


                <!-- Email Address -->
                <div class="mt-4">
                    <x-input-label for="rol" :value="__('¿Que tipo de cuenta deseas en DevJobs?')" />
                    
                    <select name="rol" id="rol" class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm w-full">
                        <option value="" class="align-center">--Selecciona un rol--</option>
                        <option value="1">Developer - Buscar Empleos</option>
                        <option value="2">Recruiter - Publicar empleos</option>
                    </select>



                </div>
        

        <div class="flex justify-between my-5">
            <!--:href= ya esta en html para redireccionar -->
           {{--Este es otra forma de comentar en los blade--}}
               <x-link :href="route('login')">
                   Iniciar sesión
               </x-link>
   
               <x-link :href="route('password.request')"> 
                   Olvidaste tu password?
               </x-link>
             
   
          
           </div>


        <x-primary-button class="w-full justify-center">
            {{ __('Registrarse') }}
        </x-primary-button>
    </form>
</x-guest-layout>
