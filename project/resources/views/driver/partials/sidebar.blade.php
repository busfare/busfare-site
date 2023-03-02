<aside id="sidebar-wrapper">
  <ul class="sidebar-menu">
      <li class="menu-header">@lang('Dashboard')</li>
      <li class="nav-item {{menu('driver.dashboard')}}">
        <a href="{{route('driver.dashboard')}}" class="nav-link"><i class="fas fa-fire"></i><span>@lang('Dashboard')</span></a>
      </li>
      
      <li class="nav-item {{menu('driver.qr')}}">
        <a href="{{route('driver.qr')}}" class="nav-link"><i class="fas fa-qrcode"></i><span>@lang('QR Code')</span></a>
      </li>

      <li class="nav-item {{menu('driver.api.key.form')}}">
        <a href="{{route('driver.api.key.form')}}" class="nav-link"><i class="fas fa-key"></i><span>@lang('API Access Key')</span></a>
      </li>

      <li class="nav-item {{menu('driver.transactions')}}">
        <a href="{{route('driver.transactions')}}" class="nav-link"><i class="fas fa-exchange-alt"></i><span>@lang('Transactions')</span></a>
      </li> 

      <li class="menu-header">@lang('Withdraw')</li>
      <li class="nav-item dropdown {{menu('driver.withdraw*')}}">
        <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-university"></i> <span>@lang('Withdraw')</span></a>
        <ul class="dropdown-menu">
          <li class="{{menu('driver.withdraw.form')}}"><a class="nav-link" href="{{route('driver.withdraw.form')}}">@lang('Withdraw Money')</a></li>
          <li class="{{menu('driver.withdraw.history')}}"><a class="nav-link" href="{{route('driver.withdraw.history')}}">@lang('Withdraw History')</a></li>
         
        </ul>
      </li>
      <li class="menu-header">@lang('Setting')</li>
      <li class="nav-item {{menu('driver.profile.setting')}}">
        <a href="{{route('driver.profile.setting')}}" class="nav-link"><i class="far fa-user"></i><span>@lang('Profile Setting')</span></a>
      </li>
      <li class="nav-item {{menu('driver.change.password')}}">
        <a href="{{route('driver.change.password')}}" class="nav-link"><i class="fas fa-key"></i><span>@lang('Change Password')</span></a>
      </li>
      <li class="nav-item {{menu('driver.two.step')}}">
        <a href="{{route('driver.two.step')}}" class="nav-link"><i class="fas fa-lock"></i><span>@lang('Two Step Security')</span></a>
      </li>
      <li class="nav-item {{menu('driver.ticket.index')}}">
        <a href="{{route('driver.ticket.index')}}" class="nav-link"><i class="fas fa-ticket-alt"></i><span>@lang('Support Ticket')</span></a>
      </li>
      <li class="nav-item {{menu('driver.logout')}}">
        <a href="{{route('driver.logout')}}" class="nav-link"><i class="fas fa-sign-out-alt"></i><span>@lang('Log Out')</span></a>
      </li>
    </ul>
</aside>