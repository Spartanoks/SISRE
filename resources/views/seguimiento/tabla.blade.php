<tr>
    <th class=" tg-baqh">Hora</th>
    <th class="tg-0lax">Usuario</th>
    <th class="tg-0lax">Comentario</th>
</tr>


@foreach ($reclamos as $reclamo)
    <tr class="tablax">
        <td class="tg-0lax">{{ $reclamo->created_at }}</td>
        <td class="tg-0lax">{{ $reclamo->usuario->nombre }} {{ $reclamo->usuario->apellido }}</td>
        <td class="tg-0lax">{{ $reclamo->ultima_actualizacion }}</td>
    </tr>
@endforeach
