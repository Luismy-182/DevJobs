<div class="bg-gray-100 p-5 mt-10 flex flex-col justify-center items-center">
    <h3 class="text-center text-2xl font-bold my-4">
            Postularme a esta vacante 
    </h3>
 

    @if(session()->has('mensaje')) {{--Si hay un mensaje muestralo--}}
            <p class="uppercase border border-green-600 bg-green-100 text-green-600 font-bold p-2 my-5 text-sm rounded-lg">
                {{ session('mensaje') }}
            </p>

    @else {{--Si no hay mensaje muestra el form--}}
            <form class="w-96 mt-5" wire:submit.prevent='postularme'>
                <div class="mb-4">
                    <x-input-label for="cv" :value="__('Sube tu CV (PDF)')"/>
                    <x-text-input id="cv" wire:model='cv' type="file" accept=".pdf" class="block mt-1 w-full"/>
                </div>
        {{--Si algo sale mal  muestra el error--}}
                @error('cv')
                    <livewire:mostrar-alerta :message="$message">
                @enderror


                <x-primary-button class="my-5">
                    {{__('Postularme')}}
                </x-primary-button>
            </form>
    @endif
</div>