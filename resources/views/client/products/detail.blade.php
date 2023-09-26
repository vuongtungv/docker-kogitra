@extends('client.layouts_2.master')

@section('client_content_2')

{{--Breadcrumbs    --}}
<div class="banner-wrapper no_background">
    <div class="banner-wrapper-inner container">
        <div class="breadcrumb-trail breadcrumbs">
            <ul class="trail-items breadcrumb">
                <li class="trail-item trail-begin"><a href="index.php"><span>Home</span></a></li>
                <li class="trail-item"><a href="#"><span>Blog</span></a></li>
                <li class="trail-item trail-end active"><span>Single Post.</span></li>
            </ul>
        </div>
    </div>
</div>

{{--body--}}
<div class="single-thumb-vertical main-container shop-page right-sidebar">
    <div class="container">
        <div class="row">
            <div class="main-content col-xl-9 col-lg-8 col-md-8 col-sm-12 has-sidebar">
                <div class="kodory-notices-wrapper"></div>
                <div id="product-27"
                     class="post-27 product type-product status-publish has-post-thumbnail product_cat-table product_cat-new-arrivals product_cat-lamp product_tag-table product_tag-sock first instock shipping-taxable purchasable product-type-variable has-default-attributes">
                    <div class="main-contain-summary">
                        <div class="contain-left has-gallery">
                            <div class="single-left">
                                <div class="kodory-product-gallery kodory-product-gallery--with-images kodory-product-gallery--columns-4 images">
                                    <a href="#" class="kodory-product-gallery__trigger">
                                        <img draggable="false" class="emoji" alt="🔍"
                                             src="https://s.w.org/images/core/emoji/11/svg/1f50d.svg"></a>
                                    <div class="flex-viewport">
                                        <figure class="kodory-product-gallery__wrapper">
                                            <div class="kodory-product-gallery__image">
                                                <img alt="img"
                                                     src="assets/images/apro131-2.jpg">
                                            </div>
                                            <div class="kodory-product-gallery__image">
                                                <img src="assets/images/apro134-1.jpg"
                                                     alt="img">
                                            </div>
                                            <div class="kodory-product-gallery__image">
                                                <img src="assets/images/apro132-1.jpg"
                                                     class="" alt="img">
                                            </div>
                                            <div class="kodory-product-gallery__image">
                                                <img src="assets/images/apro133-1.jpg"
                                                     class="" alt="img">
                                            </div>
                                        </figure>
                                    </div>
                                    <ol class="flex-control-nav flex-control-thumbs">
                                        <li><img
                                                src="assets/images/apro131-2-100x100.jpg" alt="img">
                                        </li>
                                        <li><img
                                                src="assets/images/apro134-1-100x100.jpg" alt="img">
                                        </li>
                                        <li><img
                                                src="assets/images/apro132-1-100x100.jpg" alt="img">
                                        </li>
                                        <li><img
                                                src="assets/images/apro133-1-100x100.jpg" alt="img">
                                        </li>
                                    </ol>
                                </div>
                            </div>
                            <div class="summary entry-summary">
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <h1 class="product_title entry-title">{{$detail->name}}</h1>
                                <p class="price"><span class="kodory-Price-amount amount">
                                        {{formatPrice($detail->price_range_1)}}</span>
                                    <span class="kodory-Price-amount amount">
                                        @if($detail->price_range_2)<span
                                            class="kodory-Price-currencySymbol"></span>- {{formatPrice($detail->price_range_2)}}</span>
                                        @endif
                                </p>
{{--                                <p class="stock in-stock">--}}
{{--                                    Tình trạng: <span> Còn hàng</span>--}}
{{--                                </p>--}}
                                <div class="kodory-product-details__short-description">
                                    <p>{{$detail->brief}}</p>
                                </div>
                                <form class="variations_form cart">
                                    <table class="variations">
                                        <tbody>
                                        <tr>
                                            <td class="label"><label>Color</label></td>
                                            <td class="value">
                                                <select title="box_style" data-attributetype="box_style"
                                                        data-id="pa_color"
                                                        class="attribute-select " name="attribute_pa_color"
                                                        data-attribute_name="attribute_pa_color"
                                                        data-show_option_none="yes">
                                                    <option data-type="" data-pa_color="" value="">Choose an option
                                                    </option>
                                                    <option data-width="30" data-height="30" data-type="color"
                                                            data-pa_color="#3155e2" value="blue"
                                                            class="attached enabled">Blue
                                                    </option>
                                                    <option data-width="30" data-height="30" data-type="color"
                                                            data-pa_color="#ffe59e" value="pink"
                                                            class="attached enabled">Pink
                                                    </option>
                                                    <option data-width="30" data-height="30" data-type="color"
                                                            data-pa_color="#b6b8ba" value="red"
                                                            class="attached enabled">Red
                                                    </option>
                                                    <option data-width="30" data-height="30" data-type="color"
                                                            data-pa_color="#e8e120" value="yellow"
                                                            class="attached enabled">Yellow
                                                    </option>
                                                </select>
                                                <div class="data-val attribute-pa_color"
                                                     data-attributetype="box_style">
                                                    <label>
                                                        <input type="radio" name="color">
                                                        <span class="change-value color"
                                                              style="background: #3155e2;" data-value="blue">
                                                            </span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" name="color">
                                                        <span class="change-value color"
                                                              style="background: #52b745;" data-value="green">
                                                            </span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" name="color">
                                                        <span class="change-value color"
                                                              style="background: #ffe59e;" data-value="pink">
                                                            </span>
                                                    </label>
                                                </div>
                                                <a class="reset_variations" href="#"
                                                   style="visibility: hidden;">Clear</a></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="single_variation_wrap">
                                        <div class="kodory-variation single_variation"></div>
                                        <div class="kodory-variation-add-to-cart variations_button ">
                                            <div class="quantity">
                                                <span class="qty-label">Quantiy:</span>
                                                <div class="control">
                                                    <a class="btn-number qtyminus quantity-minus" href="#">-</a>
                                                    <input type="text" data-step="1" name="quantity[25]" value="0" title="Qty" class="input-qty input-text qty text" size="4" pattern="[0-9]*">
                                                    <a class="btn-number qtyplus quantity-plus" href="#">+</a>
                                                </div>
                                            </div>
                                            <button type="submit"
                                                    class="single_add_to_cart_button button alt kodory-variation-selection-needed">
                                                Add to cart
                                            </button>
                                            <input name="add-to-cart" value="27" type="hidden">
                                            <input name="product_id" value="27" type="hidden">
                                            <input name="variation_id" class="variation_id" value="0" type="hidden">
                                        </div>
                                    </div>
                                </form>
                                <div class="yith-wcwl-add-to-wishlist">
                                    <div class="yith-wcwl-add-button show">
                                        <a href="#" rel="nofollow"
                                           data-product-id="27" data-product-type="variable" class="add_to_wishlist">
                                            Add to Wishlist</a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                                <a href="#"
                                   class="compare button" data-product_id="27" rel="nofollow">Compare</a>
                                <div class="product_meta">
                                    <div class="wcml-dropdown product wcml_currency_switcher">
                                        <ul>
                                            <li class="wcml-cs-active-currency">
                                                <a class="wcml-cs-item-toggle">USD</a>
                                                <ul class="wcml-cs-submenu">
                                                    <li>
                                                        <a>EUR</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <span class="sku_wrapper">SKU: <span class="sku">885B712</span></span>
                                    <span class="posted_in">Categories: <a
                                            href="#"
                                            rel="tag">Clothing</a>, <a
                                            href="#" rel="tag">New arrivals</a>, <a
                                            href="#" rel="tag">Footwear</a></span>
                                    <span class="tagged_as">Tags: <a href="#"
                                                                     rel="tag">Clothing</a>, <a
                                            href="#" rel="tag">Sock</a></span>
                                </div>
                                <div class="kodory-share-socials">
                                    <h5 class="social-heading">Share: </h5>
                                    <a target="_blank" class="facebook" href="#">
                                        <i class="fa fa-facebook-f"></i>
                                    </a>
                                    <a target="_blank" class="twitter"
                                       href="#"><i class="fa fa-twitter"></i>
                                    </a>
                                    <a target="_blank" class="googleplus"
                                       href="#"><i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="kodory-tabs kodory-tabs-wrapper">
                        <ul class="tabs dreaming-tabs" role="tablist">
                            <li class="description_tab active" id="tab-title-description" role="tab"
                                aria-controls="tab-description">
                                <a href="#tab-description">Description</a>
                            </li>
                            <li class="additional_information_tab" id="tab-title-additional_information" role="tab"
                                aria-controls="tab-additional_information">
                                <a href="#tab-additional_information">Additional information</a>
                            </li>
                            <li class="reviews_tab" id="tab-title-reviews" role="tab" aria-controls="tab-reviews">
                                <a href="#tab-reviews">Reviews (0)</a>
                            </li>
                        </ul>
                        <div class="kodory-Tabs-panel kodory-Tabs-panel--description panel entry-content kodory-tab"
                             id="tab-description" role="tabpanel" aria-labelledby="tab-title-description">
                            <h2>Description</h2>
                            <div class="container-table">
                                <div class="container-cell">
                                    <h2 class="az_custom_heading">Platea viverra aenean<br>dictumst</h2>
                                    <p>Lore ipsum dolor sit amet consectetur elit
                                        scelerisque integer, quam dapibus per risus donec semper
                                        vulputate interdum, imperdiet mus rhoncus commodo ultricies
                                        class urna tincidunt. Imperdiet vitae lacus etiam metus ut nisl
                                        curae, conubia enim scelerisque quis facilisis torquent,
                                        ultricies orci faucibus dictumst mauris curabitur. Massa risus
                                        nec sociosqu fames montes accumsan iaculis justo turpis
                                        luctus</p>
                                </div>
                                <div class="container-cell">
                                    <div class="az_single_image-wrapper az_box_border_grey">
                                        <img src="assets/images/single-pro1.jpg"
                                             class="az_single_image-img attachment-full" alt="img"></div>
                                </div>
                            </div>
                            <div class="container-table">
                                <div class="container-cell">
                                    <div class="az_single_image-wrapper az_box_border_grey">
                                        <img src="assets/images/single-pro2.jpg"
                                             class="az_single_image-img attachment-full" alt="img"></div>
                                </div>
                                <div class="container-cell">
                                    <h2 class="az_custom_heading">
                                        Potenti praesent molestie<br>
                                        at viverra</h2>
                                    <p>This generator uses a dictionary of Latin words to construct
                                        passages of Lorem Ipsum text that meet your desired length. The
                                        sentence and paragraph durations and punctuation dispersal are
                                        calculated using Gaussian distribution, based on statistical
                                        analysis of real world texts. This ensures that the generated
                                        Lorem Ipsum text is unique, free of repetition and also
                                        resembles readable text as much as possible.</p>
                                </div>
                            </div>
                        </div>
                        <div class="kodory-Tabs-panel kodory-Tabs-panel--additional_information panel entry-content kodory-tab"
                             id="tab-additional_information" role="tabpanel"
                             aria-labelledby="tab-title-additional_information">
                            <h2>Additional information</h2>
                            <table class="shop_attributes">
                                <tbody>
                                <tr>
                                    <th>Color</th>
                                    <td><p>Blue, Pink, Red, Yellow</p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="kodory-Tabs-panel kodory-Tabs-panel--reviews panel entry-content kodory-tab"
                             id="tab-reviews" role="tabpanel" aria-labelledby="tab-title-reviews">
                            <div id="reviews" class="kodory-Reviews">
                                <div id="comments">
                                    <h2 class="kodory-Reviews-title">Reviews</h2>
                                    <p class="kodory-noreviews">There are no reviews yet.</p>
                                </div>
                                <div id="review_form_wrapper">
                                    <div id="review_form">
                                        <div id="respond" class="comment-respond">
                                            <span id="reply-title" class="comment-reply-title">Be the first to review “T-shirt with skirt”</span>
                                            <form id="commentform" class="comment-form">
                                                <p class="comment-notes"><span id="email-notes">Your email address will not be published.</span>
                                                    Required fields are marked <span class="required">*</span></p>
                                                <p class="comment-form-author">
                                                    <label for="author">Name&nbsp;<span
                                                            class="required">*</span></label>
                                                    <input id="author" name="author" value="" size="30" required=""
                                                           type="text"></p>
                                                <p class="comment-form-email"><label for="email">Email&nbsp;
                                                        <span class="required">*</span></label>
                                                    <input id="email" name="email" value="" size="30" required=""
                                                           type="email"></p>
                                                <div class="comment-form-rating"><label for="rating">Your rating</label>
                                                    <p class="stars">
                                                        <span>
                                                        <a class="star-1" href="#">1</a>
                                                        <a class="star-2" href="#">2</a>
                                                        <a class="star-3" href="#">3</a>
                                                        <a class="star-4" href="#">4</a>
                                                        <a class="star-5" href="#">5</a>
                                                        </span>
                                                    </p>
                                                    <select title="product_cat" name="rating" id="rating" required=""
                                                            style="display: none;">
                                                        <option value="">Rate…</option>
                                                        <option value="5">Perfect</option>
                                                        <option value="4">Good</option>
                                                        <option value="3">Average</option>
                                                        <option value="2">Not that bad</option>
                                                        <option value="1">Very poor</option>
                                                    </select></div>
                                                <p class="comment-form-comment"><label for="comment">Your
                                                        review&nbsp;<span class="required">*</span></label><textarea
                                                        id="comment" name="comment" cols="45" rows="8"
                                                        required=""></textarea></p><input name="wpml_language_code"
                                                                                          value="en" type="hidden">
                                                <p class="form-submit"><input name="submit" id="submit" class="submit"
                                                                              value="Submit" type="submit"> <input
                                                        name="comment_post_ID" value="27" id="comment_post_ID"
                                                        type="hidden">
                                                    <input name="comment_parent" id="comment_parent" value="0"
                                                           type="hidden">
                                                </p></form>
                                        </div><!-- #respond -->
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sidebar col-xl-3 col-lg-4 col-md-4 col-sm-12">
                <div id="widget-area" class="widget-area shop-sidebar">
                    <div id="kodory_products-2" class="widget kodory widget_products"><h2 class="widgettitle">Featured Products<span class="arrow"></span></h2><ul class="product_list_widget"><li>

                                <a href="#">
                                    <img src="assets/images/apro61-1-600x778.jpg" class="attachment-kodory_thumbnail size-kodory_thumbnail" alt="img" width="600" height="778">		<span class="product-title">Shark Shirt</span>
                                </a>

                                <div class="rating-wapper nostar"><div class="star-rating"><span style="width:0%">Rated <strong class="rating">0</strong> out of 5</span></div><span class="review">(0)</span></div>
                                <span class="kodory-Price-amount amount"><span class="kodory-Price-currencySymbol">$</span>79.00</span> – <span class="kodory-Price-amount amount"><span class="kodory-Price-currencySymbol">$</span>139.00</span>
                            </li>
                            <li>

                                <a href="#">
                                    <img src="assets/images/apro71-1-600x778.jpg" class="attachment-kodory_thumbnail size-kodory_thumbnail" alt="img" width="600" height="778">		<span class="product-title">Kid Backpack</span>
                                </a>

                                <div class="rating-wapper nostar"><div class="star-rating"><span style="width:0%">Rated <strong class="rating">0</strong> out of 5</span></div><span class="review">(0)</span></div>
                                <del><span class="kodory-Price-amount amount"><span class="kodory-Price-currencySymbol">$</span>109.00</span></del> <ins><span class="kodory-Price-amount amount"><span class="kodory-Price-currencySymbol">$</span>89.00</span></ins>
                            </li>
                            <li>

                                <a href="#">
                                    <img src="assets/images/apro101-1-600x778.jpg" class="attachment-kodory_thumbnail size-kodory_thumbnail" alt="img" width="600" height="778">		<span class="product-title">Penguin Hoodie</span>
                                </a>

                                <div class="rating-wapper nostar"><div class="star-rating"><span style="width:0%">Rated <strong class="rating">0</strong> out of 5</span></div><span class="review">(0)</span></div>
                                <span class="kodory-Price-amount amount"><span class="kodory-Price-currencySymbol">$</span>60.00</span>
                            </li>
                            <li>

                                <a href="#">
                                    <img src="assets/images/apro91-1-600x778.jpg" class="attachment-kodory_thumbnail size-kodory_thumbnail" alt="img" width="600" height="778">		<span class="product-title">Elegant Diamond</span>
                                </a>

                                <div class="rating-wapper nostar"><div class="star-rating"><span style="width:0%">Rated <strong class="rating">0</strong> out of 5</span></div><span class="review">(0)</span></div>
                                <span class="kodory-Price-amount amount"><span class="kodory-Price-currencySymbol">$</span>89.00</span> – <span class="kodory-Price-amount amount"><span class="kodory-Price-currencySymbol">$</span>139.00</span>
                            </li>
                        </ul></div><div id="kodory_product_categories-2" class="widget kodory widget_product_categories"><h2 class="widgettitle">Product categories<span class="arrow"></span></h2><ul class="product-categories"><li class="cat-item cat-item-22"><a href="#">Toys</a></li>
                            <li class="cat-item cat-item-16"><a href="#">Teddy Bear</a></li>
                            <li class="cat-item cat-item-24"><a href="#">Clothing</a></li>
                            <li class="cat-item cat-item-27"><a href="#">Backpack</a></li>
                            <li class="cat-item cat-item-19"><a href="#">New arrivals</a></li>
                            <li class="cat-item cat-item-17 current-cat"><a href="#">Footwear</a></li>
                            <li class="cat-item cat-item-26"><a href="#">T-shirt</a></li>
                            <li class="cat-item cat-item-18"><a href="#">Hoodie</a></li>
                            <li class="cat-item cat-item-15"><a href="#">Uncategorized</a></li>
                        </ul></div>                    </div><!-- .widget-area -->
            </div>
            <div class="col-md-12 col-sm-12 dreaming_related-product">
                <div class="block-title">
                    <h2 class="product-grid-title">
                        Related Products
                        <span></span>
                    </h2>
                </div>
                <div class="owl-slick owl-products equal-container better-height"
                     data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:30,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;slidesToShow&quot;:4}"
                     data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                    <div class="product-item style-01 post-27 product type-product status-publish has-post-thumbnail product_cat-table product_cat-new-arrivals product_cat-lamp product_tag-table product_tag-sock  instock shipping-taxable purchasable product-type-variable has-default-attributes ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link"
                                   href="single-product.html" tabindex="0">
                                    <img class="img-responsive"
                                         src="assets/images/apro101-1-600x778.jpg"
                                         alt="Penguin Hoodie" width="600" height="778">
                                </a>
                                <div class="flash"><span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_variable add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html"
                                       tabindex="0">Penguin Hoodie</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>60.00</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-30 product type-product status-publish has-post-thumbnail product_cat-light product_cat-bed product_cat-specials product_tag-light product_tag-table product_tag-sock last instock featured downloadable shipping-taxable purchasable product-type-simple  ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link" href="single-product.html"
                                   tabindex="0">
                                    <img class="img-responsive"
                                         src="assets/images/apro41-1-600x778.jpg"
                                         alt="Cute Shoes" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_variable add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html" tabindex="0">Cute Shoes</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>134.00</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-35 product type-product status-publish has-post-thumbnail product_cat-chair product_cat-new-arrivals product_cat-lamp product_tag-light product_tag-hat product_tag-sock first instock shipping-taxable purchasable product-type-simple  ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link"
                                   href="single-product.html" tabindex="0">
                                    <img class="img-responsive"
                                         src="assets/images/apro151-1-600x778.jpg"
                                         alt="Modern Platinum" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onsale"><span class="number">-11%</span></span>
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_variable add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html" tabindex="0">Modern Platinum</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><del><span class="kodory-Price-amount amount"><span
                                                class="kodory-Price-currencySymbol">$</span>89.00</span></del> <ins><span
                                            class="kodory-Price-amount amount"><span
                                                class="kodory-Price-currencySymbol">$</span>79.00</span></ins></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-25 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-specials product_tag-light product_tag-sock  instock sale featured shipping-taxable purchasable product-type-simple ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link"
                                   href="single-product.html" tabindex="-1">
                                    <img class="img-responsive"
                                         src="assets/images/apro13-1-600x778.jpg"
                                         alt="Hello Shirt" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_variable add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html"
                                       tabindex="-1">Hello Shirt</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>109.00</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-93 product type-product status-publish has-post-thumbnail product_cat-light product_cat-table product_cat-new-arrivals product_tag-table product_tag-sock last instock shipping-taxable purchasable product-type-simple ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link" href="single-product.html"
                                   tabindex="-1">
                                    <img class="img-responsive"
                                         src="assets/images/apro181-2-600x778.jpg"
                                         alt="Soccer Shoes" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_variable add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html" tabindex="-1">City
                                        life jumpers</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>98.00</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-22 product type-product status-publish has-post-thumbnail product_cat-table product_cat-bed product_cat-lamp product_tag-table product_tag-hat product_tag-sock first instock featured downloadable shipping-taxable purchasable product-type-simple ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link" href="single-product.html"
                                   tabindex="-1">
                                    <img class="img-responsive"
                                         src="assets/images/apro171-1-600x778.jpg"
                                         alt="Cute Girl Shirt" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <form class="variations_form cart">
                                    <table class="variations">
                                        <tbody>
                                        <tr>
                                            <td class="value">
                                                <select title="box_style" data-attributetype="box_style"
                                                        data-id="pa_color"
                                                        class="attribute-select " name="attribute_pa_color"
                                                        data-attribute_name="attribute_pa_color"
                                                        data-show_option_none="yes" tabindex="-1">
                                                    <option data-type="" data-pa_color="" value="">Choose an
                                                        option
                                                    </option>
                                                    <option data-width="30" data-height="30" data-type="color"
                                                            data-pa_color="#ffe59e" value="pink"
                                                            class="attached enabled">Pink
                                                    </option>
                                                    <option data-width="30" data-height="30" data-type="color"
                                                            data-pa_color="#a825ea" value="purple"
                                                            class="attached enabled">Purple
                                                    </option>
                                                    <option data-width="30" data-height="30" data-type="color"
                                                            data-pa_color="#b6b8ba" value="red"
                                                            class="attached enabled">Red
                                                    </option>
                                                </select>
                                                <div class="data-val attribute-pa_color"
                                                     data-attributetype="box_style">
                                                    <label>
                                                        <input type="radio" name="color">
                                                        <span class="change-value color"
                                                              style="background: #3155e2;" data-value="blue">
                                                            </span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" name="color">
                                                        <span class="change-value color"
                                                              style="background: #52b745;" data-value="green">
                                                            </span>
                                                    </label>
                                                    <label>
                                                        <input type="radio" name="color">
                                                        <span class="change-value color"
                                                              style="background: #ffe59e;" data-value="pink">
                                                            </span>
                                                    </label>
                                                </div>
                                                <a class="reset_variations" href="#" tabindex="-1"
                                                   style="visibility: hidden;">Clear</a></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </form>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_variable add_to_cart_button">Select
                                            options</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html" tabindex="-1">Cute Girl Shirt</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>105.00</span> – <span
                                        class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>110.00</span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-sm-12 kodory_dreaming_upsell-product">
                <div class="block-title">
                    <h2 class="product-grid-title">
                        Upsell Products
                        <span></span>
                    </h2>
                </div>
                <div class="owl-slick owl-products equal-container better-height"
                     data-slick="{&quot;arrows&quot;:false,&quot;slidesMargin&quot;:30,&quot;dots&quot;:true,&quot;infinite&quot;:false,&quot;slidesToShow&quot;:4}"
                     data-responsive="[{&quot;breakpoint&quot;:480,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:768,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;10&quot;}},{&quot;breakpoint&quot;:992,&quot;settings&quot;:{&quot;slidesToShow&quot;:2,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1200,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;20&quot;}},{&quot;breakpoint&quot;:1500,&quot;settings&quot;:{&quot;slidesToShow&quot;:3,&quot;slidesMargin&quot;:&quot;30&quot;}}]">
                    <div class="product-item style-01 post-27 product type-product status-publish has-post-thumbnail product_cat-table product_cat-new-arrivals product_cat-lamp product_tag-table product_tag-sock  instock shipping-taxable purchasable product-type-variable has-default-attributes ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link"
                                   href="single-product.html" tabindex="0">
                                    <img class="img-responsive"
                                         src="assets/images/apro141-1-600x778.jpg"
                                         alt="Red Car" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_external add_to_cart_button">Buy
                                            it on Amazon</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html" tabindex="0">Dining Teddy Bear</a>
                                </h3>
                                <div class="rating-wapper ">
                                    <div class="star-rating"><span style="width:100%">Rated <strong
                                                class="rating">5.00</strong> out of 5</span></div>
                                    <span class="review">(1)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>207.00</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-26 product type-product status-publish has-post-thumbnail product_cat-light product_cat-chair product_cat-sofas product_tag-light product_tag-hat last instock featured shipping-taxable product-type-external  ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link" href="single-product.html"
                                   tabindex="0">
                                    <img class="img-responsive"
                                         src="assets/images/apro31-1-600x778.jpg"
                                         alt="Cute Girl Shirt" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_simple add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html" tabindex="0">Cute Girl Shirt</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>120.00</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-37 product type-product status-publish has-post-thumbnail product_cat-chair product_cat-bed product_tag-light product_tag-hat product_tag-sock first instock shipping-taxable purchasable product-type-simple  ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link kodory-product-gallery__image"
                                   href="single-product.html"
                                   tabindex="0">
                                    <img class="img-responsive wp-post-image"
                                         src="assets/images/apro83-1-600x778.jpg"
                                         alt="Baby Shirt" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="cart.html" class="button product_type_simple add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html#"
                                       tabindex="0">Baby Shirt</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>56.00</span></span>
                            </div>
                        </div>
                    </div>
                    <div class="product-item style-01 post-1194 product_variation type-product_variation status-publish has-post-thumbnail product  instock shipping-taxable purchasable product-type-variation ">
                        <div class="product-inner tooltip-left">
                            <div class="product-thumb">
                                <a class="thumb-link"
                                   href="single-product.html" tabindex="-1">
                                    <img class="img-responsive"
                                         src="assets/images/apro302-600x778.jpg"
                                         alt="Cute Shoes" width="600" height="778">
                                </a>
                                <div class="flash">
                                    <span class="onnew"><span class="text">New</span></span></div>
                                <div class="group-button">
                                    <div class="yith-wcwl-add-to-wishlist">
                                        <div class="yith-wcwl-add-button show">
                                            <a href="wishlist.html" class="add_to_wishlist">Add to Wishlist</a>
                                        </div>
                                    </div>
                                    <div class="kodory product compare-button">
                                        <a href="compare.html" class="compare button">Compare</a>
                                    </div>
                                    <a href="#" class="button yith-wcqv-button">Quick View</a>
                                    <div class="add-to-cart">
                                        <a href="single-product.html" class="button product_type_simple add_to_cart_button">Add to
                                            cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-info equal-elem">
                                <h3 class="product-name product_title">
                                    <a href="single-product.html"
                                       tabindex="-1">Cute Shoes</a>
                                </h3>
                                <div class="rating-wapper nostar">
                                    <div class="star-rating"><span style="width:0%">Rated <strong
                                                class="rating">0</strong> out of 5</span></div>
                                    <span class="review">(0)</span></div>
                                <span class="price"><span class="kodory-Price-amount amount"><span
                                            class="kodory-Price-currencySymbol">$</span>79.00</span></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

