#pragma checksum "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "8ec0a707c0e13260130e364dad60276ed9ef804c"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Index), @"mvc.1.0.view", @"/Views/Home/Index.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"8ec0a707c0e13260130e364dad60276ed9ef804c", @"/Views/Home/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c536afdb55df1d7e16f875b277c43fe32619ae40", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<PepperShopApplication.ViewModels.HomeViewModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "AddToCart", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Cart", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", new global::Microsoft.AspNetCore.Html.HtmlString("button"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("height: 34px; width: 60px;"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-warning"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
  
    ViewData["Title"] = "PepperShop_Application";
    Layout = "_Layout";


#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<div class=\"slide \">\r\n    <div class=\"background_slide\">\r\n        <img class=\"img\" src=\"./img/0153eedc5b553971d2966d9be1ac72a4.png\"");
            BeginWriteAttribute("alt", " alt=\"", 348, "\"", 354, 0);
            EndWriteAttribute();
            WriteLiteral(@">
    </div>
    <div class=""slide_tagname"">
        <div id=""carouselExampleIndicators"" class=""carousel slide example_1"" data-bs-ride=""true"">
            <div class=""carousel-indicators "">
                <button type=""button"" data-bs-target=""#carouselExampleIndicators"" data-bs-slide-to=""0""
                        class=""active"" aria-current=""true"" aria-label=""Slide 1""></button>
                <button type=""button"" data-bs-target=""#carouselExampleIndicators"" data-bs-slide-to=""1""
                        aria-label=""Slide 2""></button>
                <button type=""button"" data-bs-target=""#carouselExampleIndicators"" data-bs-slide-to=""2""
                        aria-label=""Slide 3""></button>
            </div>
            <div class=""carousel-inner  "">
                <div class=""carousel-item active "">
                    <img src=""./img/slide_1.png"" class=""d-block w-100"" alt=""..."">
                </div>
                <div class=""carousel-item "">
                    <img src=""./img/slide_2.");
            WriteLiteral(@"png"" class=""d-block w-100"" alt=""..."">
                </div>
                <div class=""carousel-item "">
                    <img src=""./img/slide_1.png"" class=""d-block w-100"" alt=""..."">
                </div>
            </div>
            <button class=""carousel-control-prev"" type=""button"" data-bs-target=""#carouselExampleIndicators""
                    data-bs-slide=""prev"">
                <span class=""carousel-control-prev-icon"" aria-hidden=""true""></span>
                <span class=""visually-hidden"">Previous</span>
            </button>
            <button class=""carousel-control-next"" type=""button"" data-bs-target=""#carouselExampleIndicators""
                    data-bs-slide=""next"">
                <span class=""carousel-control-next-icon"" aria-hidden=""true""></span>
                <span class=""visually-hidden"">Next</span>
            </button>
            <div class=""second_slide"">
                <div class=""element_slide"">
                    <img src=""./img/tiki.png""");
            BeginWriteAttribute("alt", " alt=\"", 2387, "\"", 2393, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <p>TikiNGON</p>\r\n                </div>\r\n                <div class=\"element_slide text-uppercase\">\r\n                    <img src=\"./img/qua.png\"");
            BeginWriteAttribute("alt", " alt=\"", 2562, "\"", 2568, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <p>Mua là có quà</p>\r\n                </div>\r\n                <div class=\"element_slide text-uppercase\">\r\n                    <img src=\"./img/deal.png\"");
            BeginWriteAttribute("alt", " alt=\"", 2743, "\"", 2749, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <p>coupon</p>\r\n                </div>\r\n                <div class=\"element_slide text-uppercase\">\r\n                    <img src=\"./img/ngocdung.png\"");
            BeginWriteAttribute("alt", " alt=\"", 2921, "\"", 2927, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <p>Ngoc dung food</p>\r\n                </div>\r\n                <div class=\"element_slide text-uppercase\">\r\n                    <img src=\"./img/haisantuoi.png\"");
            BeginWriteAttribute("alt", " alt=\"", 3109, "\"", 3115, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <p>Hải sản tươi sống</p>\r\n                </div>\r\n                <div class=\"element_slide text-uppercase\">\r\n                    <img src=\"./img/topmeal.png\"");
            BeginWriteAttribute("alt", " alt=\"", 3297, "\"", 3303, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <p>topmeal</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n</div>\r\n<div class=\"tagname_food\">\r\n    <div class=\"tag\">\r\n        Những món ăn hot\r\n    </div>\r\n\r\n    <div class=\"element_food\">\r\n");
#nullable restore
#line 81 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
         if (Model.Dishes.ToList().Count > 0)
        {
            foreach (var obj in Model.Dishes)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <div class=\"element_tagnamefood\">\r\n                    <img");
            BeginWriteAttribute("src", " src=\"", 3743, "\"", 3759, 1);
#nullable restore
#line 86 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
WriteAttributeValue("", 3749, obj.Image, 3749, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("alt", " alt=\"", 3760, "\"", 3766, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <div>");
#nullable restore
#line 87 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                    Write(obj.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n                    <h4>");
#nullable restore
#line 88 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                   Write(obj.Products.Sum(p => p.Product.Price));

#line default
#line hidden
#nullable disable
            WriteLiteral("</h4>\r\n\r\n                    <button type=\"button\" class=\"btn\" data-bs-toggle=\"modal\" data-bs-target=\"#staticBackdrop-");
#nullable restore
#line 90 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                                                                                        Write(obj.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("\">\r\n                        Detail\r\n                    </button>\r\n\r\n                    <!-- Modal -->\r\n            <div class=\"modal fade\"");
            BeginWriteAttribute("id", " id=\"", 4140, "\"", 4167, 2);
            WriteAttributeValue("", 4145, "staticBackdrop-", 4145, 15, true);
#nullable restore
#line 95 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
WriteAttributeValue("", 4160, obj.Id, 4160, 7, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@" data-bs-backdrop=""static"" data-bs-keyboard=""false"" tabindex=""-1""
                 aria-labelledby=""staticBackdropLabel"" aria-hidden=""true"">
                        <div class=""modal-dialog"">
                            <div class=""modal-content"">
                                <div class=""modal-header"">
                                    <h1 class=""modal-title fs-5 text-danger"" id=""staticBackdropLabel "">Chi tiết món ăn</h1>
                                    <button type=""button"" class=""btn-close"" data-bs-dismiss=""modal"" aria-label=""Close""></button>
                                </div>

                                <div class=""modal-body "">
                                    <div class=""modal_detail"">
                                        <img");
            BeginWriteAttribute("src", " src=\"", 4944, "\"", 4960, 1);
#nullable restore
#line 106 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
WriteAttributeValue("", 4950, obj.Image, 4950, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("alt", " alt=\"", 4961, "\"", 4967, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                                    </div>\r\n                                    <div class=\"element_detail\">\r\n                                        <h3>");
#nullable restore
#line 109 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                       Write(obj.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h3>\r\n");
#nullable restore
#line 110 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                         foreach (var prod in obj.Products)
                                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                                            <div>");
#nullable restore
#line 112 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                            Write(prod.Product.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</div>\r\n");
#nullable restore
#line 113 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                                        <div class=\"price\">\r\n                                            <p>Giá: </p>\r\n                                            <div>");
#nullable restore
#line 116 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                            Write(obj.Products.Sum(p => p.Product.Price));

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</div>
                                        </div>
                                    </div>
                                </div>
                                <div class=""modal-footer"">
                                    <button style=""width: 64px;height: 34px; margin: 0;"" type=""button"" class=""btn btn-secondary"" data-bs-dismiss=""modal"">
                                        Đóng
                                    </button>
                                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8ec0a707c0e13260130e364dad60276ed9ef804c15929", async() => {
                WriteLiteral("\r\n                                        <p>Mua</p>\r\n                                    ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
            WriteLiteral("d-");
#nullable restore
#line 124 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                                                                        WriteLiteral(obj.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n");
#nullable restore
#line 133 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
            }
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </div>\r\n\r\n</div>\r\n<div class=\"namefood \">\r\n    <div class=\"tag tag_2\">\r\n        Những thực phẩm thiết yếu\r\n    </div>\r\n");
#nullable restore
#line 142 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
     if (Model.Products.ToList().Count > 0)
    {



#line default
#line hidden
#nullable disable
            WriteLiteral("        <div class=\"element_food_2\">\r\n");
#nullable restore
#line 147 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
             foreach (var obj in Model.Products)
            {


#line default
#line hidden
#nullable disable
            WriteLiteral("                <div class=\"element_food_2_1 \">\r\n                    <img");
            BeginWriteAttribute("src", " src=\"", 6893, "\"", 6909, 1);
#nullable restore
#line 151 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
WriteAttributeValue("", 6899, obj.Image, 6899, 10, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("alt", " alt=\"", 6910, "\"", 6916, 0);
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <p>");
#nullable restore
#line 152 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                  Write(obj.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("</p>\r\n                    <h5>");
#nullable restore
#line 153 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                   Write(obj.Price);

#line default
#line hidden
#nullable disable
            WriteLiteral("<span>K</span> <span>/");
#nullable restore
#line 153 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                                   Write(obj.Unit);

#line default
#line hidden
#nullable disable
            WriteLiteral("</span></h5>\r\n\r\n                    <div class=\"buy_and_cart\">\r\n");
            WriteLiteral("                        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "8ec0a707c0e13260130e364dad60276ed9ef804c21292", async() => {
                WriteLiteral("\r\n                            <i class=\'bx bx-cart-alt cart_icon\'></i>\r\n                        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Controller = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
            WriteLiteral("p-");
#nullable restore
#line 159 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                                                            WriteLiteral(obj.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_5);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n                    </div>\r\n\r\n                </div>\r\n");
#nullable restore
#line 165 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("        </div>\r\n");
#nullable restore
#line 167 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
    }

#line default
#line hidden
#nullable disable
            WriteLiteral("    <nav aria-label=\"Page navigation\">\r\n        <ul class=\"pagination\">\r\n");
#nullable restore
#line 170 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
             for (int i = 1; i <= @Model.TotalPages; i++)
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <li");
            BeginWriteAttribute("class", " class=\"", 7791, "\"", 7851, 2);
            WriteAttributeValue("", 7799, "page-item", 7799, 9, true);
#nullable restore
#line 172 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
WriteAttributeValue(" ", 7808, i == @Model.CurrentPage ? "active" : "", 7809, 42, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">\r\n                    <a class=\"page-link\"");
            BeginWriteAttribute("href", " href=\"", 7895, "\"", 7939, 4);
            WriteAttributeValue("", 7902, "/Home?page=", 7902, 11, true);
#nullable restore
#line 173 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
WriteAttributeValue("", 7913, i, 7913, 2, false);

#line default
#line hidden
#nullable disable
            WriteAttributeValue("", 7915, "&formatPage=", 7915, 12, true);
#nullable restore
#line 173 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
WriteAttributeValue("", 7927, Model.Limit, 7927, 12, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(">");
#nullable restore
#line 173 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
                                                                                 Write(i);

#line default
#line hidden
#nullable disable
            WriteLiteral("</a>\r\n                </li>\r\n");
#nullable restore
#line 175 "G:\ASP_NET_Core\PepperShopApplication\PepperShopApplication\Views\Home\Index.cshtml"
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("        </ul>\r\n    </nav>\r\n\r\n</div>\r\n}\r\n\r\n");
            WriteLiteral("\r\n\r\n\r\n\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PepperShopApplication.ViewModels.HomeViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
