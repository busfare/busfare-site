@extends('layouts.admin')

@section('title')
   @lang('Edit Role Permissions')
@endsection

@section('breadcrumb')
 <section class="section">
    <div class="section-header justify-content-between">
        <h1>@lang('Edit Role Permissions : '.$role->name)</h1>
        <a href="{{route('admin.role.manage')}}" class="btn btn-primary"><i class="fas fa-backward"></i> @lang('Back')</a>
    </div>
</section>
@endsection

@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header justify-content-between">
                    <h6 class="mb-2">@lang('Assign Permissions')</h6>
                        <div class="form-group">
                            <input class="form-control search" type="text" placeholder="@lang('Search Permission Name')">
                        </div>
                        <label class="cswitch mb-2 d-flex justify-content-between align-items-center border p-2 rounded">
                            <span class="cswitch--label font-weight-bold ml-4">@lang('Check All')</span>
                            <input class="cswitch--input check-all" type="checkbox" />
                            <span class="cswitch--trigger wrapper"></span>
                        </label>
                 </div>
                <div class="card-body">
                    <form action="{{route('admin.role.update',$role->id)}}" method="POST">
                         @csrf
                        <div class="row custom-data">
                            @foreach ($permissions as $item)
                            <div class="col-md-4 col-lg-3 elements">
                                <div class="card">
                                    <div class="card-body">
                                        <label class="cswitch mb-0 d-flex justify-content-between align-items-center">
                                            <input class="cswitch--input permission" name="permissions[]" value="{{$item->id}}" {{in_array($item->id,$perms)? 'checked':''}} type="checkbox" />
                                            <span class="cswitch--trigger wrapper"></span>
                                            <span class="cswitch--label font-weight-bold ">@lang(ucwords($item->name))</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                        </div>

                        <div class="form-group mb-0 text-right">
                            <button type="submit" class="btn btn-primary btn-lg">@lang('Submit')</button>
                        </div>
                     </form>
                    </div>
                </div>
            </div>
        </div>
@endsection


@push('script')
    <script>
        'use strict';

        var elements = $('.elements');
        $(document).on('input','.search',function(){
            var search = $(this).val().toUpperCase();
            var match = elements.filter(function (idx, elem) {
                return $(elem).text().trim().toUpperCase().indexOf(search) >= 0 ? elem : null;
            }).sort();
            var content = $('.custom-data');
            if (match.length == 0) {
                content.html('<div class="col-md-12 text-center"><h6>@lang('No permission found!')</h6></div>');
            }else{
                content.html(match);
            }
        });

        $('.check-all').on('change',function () { 
            if($(this).is(':checked')){
                $.each($(".permission"), function (i, element) { 
                    $(element).attr('checked',true);
                });
            }
            else{
                $.each($(".permission"), function (i, element) { 
                    $(element).attr('checked',false);
                });
            }
        })
    </script>
@endpush