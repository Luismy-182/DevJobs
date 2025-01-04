<div>

    <livewire:filtrar-vacantes />
    <div class="py-12">
        <div class="max-w-6xl mx-auto">
            <h3 class="font-extrabold text-4xl text-gray-700 mb-12  text-center md:text-start">Nuestras Vacantes Disponibles</h3>

            <div class="bg-white shadow-sm rounded-lg p-6 divide-y divide-gray-200">
                @forelse ($vacantes as $vacante)
                    <div class="md:flex md:justify-between md:items-center py-5">
                        <div class="md-flex-1">
                            <a href="{{route('vacantes.show', $vacante->id)}}" class="text-3xl font-extrabold text-gray-600">
                                {{$vacante->titulo}}
                            </a>
                            <p class="text-base text-gray-600 mb-1">{{$vacante->empresa}}</p>
                            <p>
                                Último día para postularse:
                                <span>{{$vacante->ultimo_dia->format('d/m/Y')}}</span>
                            </p>
                        </div>

               
                    <div class="mt-5 md:mt-0">
                        <a class="bg-indigo-500 p-3 text-sm uppercase font-bold text-white rounded-lg" href="{{route('vacantes.show', $vacante->id)}}">Ver vacante</a>
                    </div>
                </div>
                @empty
                    <p class="p-3 text-center text-sm text-gray-600">No hay vacantes Aún</p>
                @endforelse
            </div>



        </div>
    </div>
</div>