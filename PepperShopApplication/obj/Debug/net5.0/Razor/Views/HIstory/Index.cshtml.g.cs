#pragma checksum "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\HIstory\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "4767a79b83a1a5ba6ea1fbc468182ba7e46cf088"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_HIstory_Index), @"mvc.1.0.view", @"/Views/HIstory/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\_ViewImports.cshtml"
using PepperShopApplicationApplication;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\_ViewImports.cshtml"
using PepperShopApplicationApplication.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4767a79b83a1a5ba6ea1fbc468182ba7e46cf088", @"/Views/HIstory/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c536afdb55df1d7e16f875b277c43fe32619ae40", @"/Views/_ViewImports.cshtml")]
    public class Views_HIstory_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<PepperShopApplication.Models.CartItem>>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\HIstory\Index.cshtml"
  
    ViewData["Title"] = "Giỏ Hàng";
    Layout = "_layout_second";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"
<div class=""content_cart"">
    <div class=""cart"">
        <div class=""header_cart"">
            <div class=""bark_header_cart"">
                <a href=""#"">Peper Shop | Tình trạng đơn hàng</a>
            </div>

        </div>
        <table class=""table table-light table-striped  table-hover"">
            <thead>
                <tr>
                    <th class=""text-center"" scope=""col"" style=""width: 50%;"">Sản Phẩm</th>
                    <th class=""text-center"" scope=""col"">Đơn Giá</th>
                    <th class=""text-center"" scope=""col"">Số Lượng</th>
                    <th class=""text-center"" scope=""col"">Số Tiền</th>
                    <th class=""text-center"" scope=""col"">Trạng thái</th>
                </tr>
            </thead>
            <tbody>
");
            WriteLiteral("                    <tr class=\"row_cart\">\r\n                        <th scope=\"row\">\r\n                            <div class=\"product_cart\">\r\n                                <img src=\"@*@item.ImageCart*@\"");
            BeginWriteAttribute("alt", " alt=\"", 1198, "\"", 1204, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                                <h6>");
            WriteLiteral("</h6>\r\n                                <p>");
            WriteLiteral("t</p>\r\n                            </div>\r\n                        </th>\r\n                        <td class=\"align-middle text-center\">");
            WriteLiteral("</td>\r\n");
            WriteLiteral("\r\n\r\n                        \r\n\r\n                        <td  class=\"align-middle text-center\">");
            WriteLiteral("</td>\r\n                        <td class=\"align-middle text-center\">");
            WriteLiteral("</td>\r\n                        <td class=\"align-middle text-center\">\r\n                           hoàn thành\r\n                        </td>\r\n                    </tr>\r\n");
            WriteLiteral("            </tbody>\r\n        </table>\r\n    </div>\r\n</div>\r\n\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<PepperShopApplication.Models.CartItem>> Html { get; private set; }
    }
}
#pragma warning restore 1591