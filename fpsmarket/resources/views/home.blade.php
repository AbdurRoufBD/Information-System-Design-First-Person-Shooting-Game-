@extends('layout.app')

@section ('content')
<br>
<br>
<br>
<br>
<br>

@endsection
   
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    
    <table allign="center" class="table table-striped">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">Item_Name</th>
        <th scope="col">Item_Type</th>
        <th scope="col">Item_Link</th>
        </tr>
    </thead>
    <tbody>

    <?php 
        DB::table('game_items')->orderBy('item_id')->chunk(4, function ($users) {
            
            foreach ($users as $user) {
                

                echo "<tr>
                <th scope='row'>".$user->item_id."</th>
                <td>".$user->item_name."</td>
                <td>".$user->item_type."</td>
                <td>".$user->item_file."</td>
                </tr>";

            }

            
        });

        
    
    
    ?>
    </tbody>
</table>