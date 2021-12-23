@extends($sc_templatePath.'.layout')

@section('main')
<!--form-->
<div class="container">
    <div class="row">
        <div class="col-12">
            <h2 class="title-page">{{ $title }}</h2>
        </div>
        <div class="col-12 col-sm-12">
            <div class="row">
                <div class="col-12 col-sm-12 col-md-6 active">
                    <form action="{{sc_route('postLogin') }}" method="post" class="box">
                        {!! csrf_field() !!}
                        <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="control-label">{{ trans('account.email') }}</label>
                            <input class="is_required validate account_input form-control {{ ($errors->has('email'))?"input-error":"" }}"
                                type="text" name="email" value="{{ old('email') }}">
                            @if ($errors->has('email'))
                            <span class="help-block">
                                {{ $errors->first('email') }}
                            </span>
                            @endif
                        </div>
                        <div class="form-group{{ $errors->has('password') ? ' has-error' : '' }}">
                            <label for="password" class="control-label">{{ trans('account.password') }}</label>
                            <input class="is_required validate account_input form-control {{ ($errors->has('password'))?"input-error":"" }}"
                                type="password" name="password" value="">
                            @if ($errors->has('password'))
                            <span class="help-block">
                                {{ $errors->first('password') }}
                            </span>
                            @endif
                    
                        </div>
                        <p class="lost_password form-group">
                            <a class="btn btn-link" href="{{sc_route('forgot') }}">
                                {{ trans('account.password_forgot') }}
                            </a>
                            <br>
                            <a class="btn btn-link" href="{{sc_route('register') }}">
                                {{ trans('account.title_register') }}
                            </a>
                        </p>
                        <button type="submit" name="SubmitLogin" class="btn btn-default btn-submit">{{ trans('account.login') }}</button>
                    </form>
                    
                    <!--/login form-->
                </div>
            </div>
        </div>
    </div>
</div>
<!--/form-->
@endsection

@section('breadcrumb')
<div class="breadcrumbs">
    <ol class="breadcrumb">
        <li><a href="{{sc_route('home') }}">{{ trans('front.home') }}</a></li>
        <li class="active">{{ $title }}</li>
    </ol>
</div>
@endsection