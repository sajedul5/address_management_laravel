@php
  $prefix = Request::route()->getPrefix();
  $route = Route::current()->getName();
@endphp


<!-- Sidebar Menu -->
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

    <li class="nav-item has-treeview  {{($prefix=='/todo')?'menu-open':''}}">
      <a href="#" class="nav-link">
        <i class="nav-icon fas fa-copy"></i>
        <p>
          Task  Management
          <i class="fas fa-angle-left right"></i>
        </p>
      </a>
      <ul class="nav nav-treeview">
        <li class="nav-item">
          <a href="{{route('todo.home.task.view')}}" class="nav-link {{($route=='/todo.home.task.view')?'active':''}}">
            <i class="far fa-circle nav-icon"></i>
            <p>Home Task</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('todo.home.task.view')}}" class="nav-link {{($route=='/divisions.view')?'active':''}}">
            <i class="far fa-circle nav-icon"></i>
            <p>Office Task</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('todo.home.task.view')}}" class="nav-link {{($route=='/todo.home.task.view')?'active':''}}">
            <i class="far fa-circle nav-icon"></i>
            <p>My Life Task</p>
          </a>
        </li>
      </ul>
    </li>

  </ul>
</nav>
<!-- /.sidebar-menu -->
