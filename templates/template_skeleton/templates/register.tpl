{extends file='includes/theme.tpl'}

{block name="body"}    
    <div id="common-page-header">
        <h1>{sirclo_get_text text='register_title'}</h1>
        <p>{sirclo_get_text text='register_subtitle'}</p>
    </div>

    <div id="common-page-content">
        <div id="store-login" class="row">
            <div class="span6">
                <div class="wrapper">
                    {sirclo_render_register_form form_class="sirclo-form" link_terms=$links['terms'] link_privacy=$links['privacy'] with_birthday=true}
                </div>
            </div>
        </div>
    </div>

{/block}

{block name="footer"}
    <script type="text/javascript" src="http://cdn.sirclo.com/initareas.js"></script>
    <script type="text/javascript">
        var register = new SIRCLO.Register();
        register.init();
    </script>
{/block}
