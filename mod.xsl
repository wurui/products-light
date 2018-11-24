<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.products-light">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-products-light" ox-mod="products-light">

            <ul>
            	<xsl:for-each select="data/ecom-products/i">
            		<li>
            			<a href="{LINK/detail}">
	            			<div class="mainpic">
	            				<img src="//a.oxm1.cc/img/blank.png" style="background-image:url({media/i[type='image']/src})"/>
	            			</div>
	            			<h3 class="title">
	            				<xsl:value-of select="title"/>
	            			</h3>
	            			<h3 class="subtitle">
	            				<xsl:value-of select="brief"/>
	            			</h3>
	            			<p class="bottom">
	            				<em class="price">
	            					<xsl:value-of select="price"/>
	            				</em>
	            				<xsl:if test="orig_price !=''">
	            					&#160;&#160;
		            				<em class="orig_price">
		            					<xsl:value-of select="orig_price"/>
		            				</em>
	            				</xsl:if>
	            			</p>
	            		</a>
            			
            		</li>
            	</xsl:for-each>
            	
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
