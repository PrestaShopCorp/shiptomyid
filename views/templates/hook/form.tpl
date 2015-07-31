{*
* This file is part of a NewQuest Project
*
* (c) NewQuest <contact@newquest.fr>
*
* For the full copyright and license information, please view the LICENSE
* file that was distributed with this source code.
*}

<link rel="stylesheet" href="{$css_file|escape:'urlencode'}" />
        <div class="ship2myid-content">
            <div class="config-header">
                <div class="ship2myid-logo"><img width="230" id="ship2myid-logo" src="{$path|escape:'htmlall'}img/ship2myid.jpg" />
                </div>
                <div class="ship2myid-tagline gray">
                    <div><strong>{l s='No address? No problem!' mod='shiptomyid'}</strong></div>
                    <div>{l s='Ship2MyID ships anything, anywhere without needing the receiver`s address.' mod='shiptomyid'}</div>
                </div>
            </div>
            <div class="config-middle">
                <div class="config-middle-left gray">
                    <strong>{l s='With Ship2MyID integration at checkout, your store will be able to:' mod='shiptomyid'} </strong>
                    <ul class="lign-height">
                        <li>{l s='Generate NEW transactions, which were not possible before' mod='shiptomyid'}</li>
                        <li>{l s='Each transaction creates a NEW strong prospect' mod='shiptomyid'}</li>
                        <li>{l s='Ship directly to social media profiles, email address, and mobile phone numbers of customers' mod='shiptomyid'}</li>
                        <li>{l s='Exponential consumer acquisition' mod='shiptomyid'}</li>
                        <li>{l s='Decreases time & errors for electronic checkout' mod='shiptomyid'}</li>
                        <li>{l s='Leverage thousands of Ship2MyID registered users for transactions' mod='shiptomyid'}</li>
                        <li>{l s='Convert web and mobile browsers into buyers' mod='shiptomyid'}</li>
                        <li>{l s='Sell more gifts, easily while cutting down marketing costs' mod='shiptomyid'}</li>
                    </ul>
                </div>
                <div class="config-middle-right gray">
                    <span>{l s='The Ship2MyID Advantage' mod='shiptomyid'}</span>
                    <br/>
                    <object  width="550" height="280">
                        <param name="movie" value="{$youtube_link|escape:'htmlall'}" />
                        <param name="wmode" value="transparent" />
                        <embed style="border: 1px #000 solid;" src="{$youtube_link|escape:'htmlall'}"
                               type="application/x-shockwave-flash"
                               wmode="transparent" width="550" height="280" />
                    </object>
                </div>
            </div>
            <div class="config-middle-bottom gray">
                <div class="mark-image">
                    <div class="mark-title">
                        <b>{l s='We help you stand out' mod='shiptomyid'}</b>
                    </div>
                    <div>
                        <img width="300"  id="ship2myid-logo" src="{$path|escape:'htmlall'}img/banner.png" />
                    </div>
                </div>
                <div style="  float: left;width: 65%;">
                    <div style="width: 74%;float: right;padding-top: 45px;"><p style="  text-align: center;  line-height: 25px;">{l s='Generate new transactions that were not possible before. Enable REAL gifting by delivering gifts to cell numbers, emails or social ID of the receiver.  A prestashop store will increase consumer`s ability to send gifts up to 98%, and speed up mobile checkout by 75x' mod='shiptomyid'}
</p></div>
                    <div style="width: 74%;float: right;text-align: center;"><a href="{$ship2myid_reg_link|escape:'htmlall'}" target="_blank"> <img id="ship2myid-reg-button" width="400" src="{$path|escape:'htmlall'}img/reg_button.jpg" /> </a></div>
                    <div style="  float: right;width: 74%;text-align: center;"><p>{l s='For further support,' mod='shiptomyid'} <a href="{$ship2myid_doc_link|escape:'htmlall'}" target="_blank">{l s='click here to download the Ship2MyID User Manual' mod='shiptomyid'}</a><br/><span style="font-size:10px;">*Partnership Terms and Conditions apply<span></p></div>
                </div>
            </div>
            <div class="config-bottom">
                <div style="  text-align: center;padding: 10px 0px;margin: 10px 0px;" class="dark-gray">
                    <img src="{$path|escape:'htmlall'}img/logo.png" style="  margin-right: 15px;vertical-align: middle;" /><span>{l s='Have you accepted our Terms & Conditions?' mod='shiptomyid'} <input type="radio" onclick="javascript:document.getElementById('module_form').style.display = 'none';" name="condition" {if !$mod_status } checked="checked" {/if} value="no">{l s=' No' mod='shiptomyid'} <input type="radio" onclick="javascript:document.getElementById('module_form').style.display = 'block';" value="yes" {if $mod_status } checked="checked" {/if} name="condition">{l s=' Yes' mod='shiptomyid'} </span>
                </div>
                <div style="float: left;width: 100%;" class="gray"><p style="margin-left: 10px;">{l s='If you have any issues or have questions please download our' mod='shiptomyid'} <a href="{$ship2myid_doc_link|escape:'htmlall'}" target="_blank">{l s='user manual' mod='shiptomyid'}</a> or email <a href="mailto:merchantsupport@ship2myid.com" target="_blank">{l s='PrestaShop Enquiry' mod='shiptomyid'}</a></p></div>
            </div>
        </div>  