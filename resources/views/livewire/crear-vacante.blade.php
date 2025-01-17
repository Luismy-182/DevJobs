
<form class="md:1/2 space-y-5 w-2/4"  wire:submit.prevent="crearVacante">

        <div>
            <x-input-label for="titulo" :value="__('Titulo vacante')" />

            <x-text-input id="titulo" class="block mt-1 w-full" type="text" wire:model="titulo" :value="old('titulo')" placeholder="Titulo vacante"/>
            
            @error('titulo')
                    <livewire:mostrar-alerta :message="$message" />                
            @enderror
        </div>

        <div>
            <x-input-label for="salario" :value="__('salario mensual')" />
            <select wire:model="salario" id="salario" class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm w-full">
                <option value="">--Seleccione--</option>
                @foreach ($salarios as $salario)
                <option value="{{$salario->id}}">{{$salario->salario}}</option>
                @endforeach
            </select>
            @error('salario')
            <livewire:mostrar-alerta :message="$message" />                
        @enderror
            
        </div>

        <div>
            <x-input-label for="categoria" :value="__('Categoría')" />
            <select wire:model="categoria" id="categoria" class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm w-full">
            
              
                
                <option value="">--Seleccione--</option>
                @foreach ($categorias as $categoria)
                <option value="{{$categoria->id}}">{{$categoria->categoria}}</option>
                    
                @endforeach
            </select>

            @error('categoria')
            <livewire:mostrar-alerta :message="$message" />                
        @enderror
        </div>


        <div>
            <x-input-label for="empresa" :value="__('Empresa')" />
            <x-text-input id="empresa" class="block mt-1 w-full" type="text" wire:model="empresa" :value="old('empresa')" placeholder="Titulo empresa, ejem Netflix, uber"/>
            
            @error('empresa')
            <livewire:mostrar-alerta :message="$message" />                
        @enderror
        </div>


        <div>
            <x-input-label for="ultimo_dia" :value="__('Ultimo día para postularse')" />
            <x-text-input id="ultimo_dia" class="block mt-1 w-full" type="date" wire:model="ultimo_dia" :value="old('ultimo_dia')"/>
            

            @error('ultimo_dia')
            <livewire:mostrar-alerta :message="$message" />                
        @enderror
        </div>


        <div>
            <x-input-label for="descripcion" :value="__('Descripción del puesto, experiencia, etc.')" />
            <textarea wire:model="descripcion" id="descripcion" class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm w-full h-72"></textarea>
            

            @error('descripcion')
            <livewire:mostrar-alerta :message="$message" />                
        @enderror
        </div>

        <div>
            <x-input-label for="imagen" :value="__('Sube una imagen')" />
            <x-text-input id="imagen" class="block mt-1 w-full" type="file" wire:model="imagen" accept="image/*"/>

            <div class="my-5 w-80">
                    @if($imagen)
                    Imagen: 
                    <img src="{{ $imagen->temporaryUrl()}}"
                    @endif
            </div>
            
            @error('imagen')
            <livewire:mostrar-alerta :message="$message" />                
            @enderror
        </div>

        <x-primary-button class="w-full justify-center">
            Crear vacante
        </x-primary-button>

        
        
        
</form>