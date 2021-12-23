@php
$banners = $modelBanner->start()->getBanner()->getData()
@endphp
@if (!empty($banners))
<section class="section swiper-container swiper-slider swiper-slider-1" data-loop="true">
  <div class="swiper-wrapper text-center text-lg-left">
    @foreach ($banners as $key => $banner)
    <div class="swiper-slide swiper-slide-caption context-dark" data-slide-bg="{{ asset($banner->image) }}">
      <div class="swiper-slide-caption section-md text-center">
        <div class="container">
          
        </div>
      </div>
    </div>
    @endforeach
  </div>
  <!-- Swiper Pagination-->
  <div class="swiper-pagination"></div>
  <!-- Swiper Navigation-->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>
</section>
<!--slider-->
@endif