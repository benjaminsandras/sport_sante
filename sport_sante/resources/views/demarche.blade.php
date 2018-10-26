@extends('template')

@section('titre')
    Les structures
@endsection

@section('contenu')

	
<div>
	<h1 id="titreDemarche">Nos Démarches</h1>
</div>




<div class="data-table card">
	<table>
		<thead>
			<tr>
				<th class="label-cell">Nom</th>
				<th class="label-cell">Activité</th>
				<th class="label-cell">Lieu</th>
				<!-- <th class="tablet-only">Comment</th> -->
			</tr>
		</thead>
		<tbody>
			<tr>
					@foreach($demarches as $demarche)
        <td class="label-cell">{{ $demarche->nom }}</td>
		<td class="label-cell">{{ $demarche->activite }}</td>
        <td class="label-cell">{{ $demarche->lieu }}</td>
		
        <!-- <td class="tablet-only">I like it!</td> -->
		@endforeach
      </tr>
    </tbody>
  </table>
</div>

@endsection

		


   
	
