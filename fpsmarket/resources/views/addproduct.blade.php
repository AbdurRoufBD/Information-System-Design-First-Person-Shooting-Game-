@extends('layout.app')

@section ('content')
<br>
<br>
<br>
<br>
<br>
 <h1>Add Product</h1>

    {!! Form::open(['url' => 'addproduct/submit']) !!}
        <div class="form-group">
            {{ Form::label('itemname', 'Item Name')}}
            {{ Form::text('itemname', '',['class' => 'form-control','placeholder'=>'Enter item name'])}}
        </div>
        <div class="form-group">
            {{ Form::label('itemtype', 'Item Type')}}
            {{ Form::select('itemtype', ['1' => 'Skin', '2' => 'Weapon'], null, ['class' => 'form-control','placeholder' => 'Pick an item type...']) }}
        </div>

        <div class="form-group">
            {{ Form::label('filelink', 'Item File Link')}}
            {{ Form::text('filelink', '',['class' => 'form-control','placeholder'=>'Enter item file link'])}}
        </div>

        <div class="form-group">
            {{ Form::submit('Submit',['class' => 'btn btn-primary'])}}
        </div>
    {!! Form::close() !!}
@endsection