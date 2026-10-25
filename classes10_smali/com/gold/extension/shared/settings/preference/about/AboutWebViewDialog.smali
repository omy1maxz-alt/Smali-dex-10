.class Lcom/gold/extension/shared/settings/preference/about/AboutWebViewDialog;
.super Landroid/app/Dialog;
.source "AboutWebViewDialog.java"


# instance fields
.field private final htmlContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/gold/extension/shared/settings/preference/about/AboutWebViewDialog;->htmlContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 40
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp10:I

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v3, 0x41e00000  # 28.0f

    .line 46
    invoke-static {v3}, Lcom/gold/extension/shared/ui/Dim;->roundedCorners(F)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 47
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {}, Lcom/gold/extension/shared/Utils;->getDialogBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    new-instance v4, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v4, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const/4 v2, 0x2

    .line 53
    invoke-virtual {v4, v2}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 54
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    new-instance p1, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lcom/gold/extension/shared/settings/preference/about/AboutLinksWebClient;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v6, p0, Lcom/gold/extension/shared/settings/preference/about/AboutWebViewDialog;->htmlContent:Ljava/lang/String;

    const-string v8, "utf-8"

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v7, "text/html"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_79

    const/16 p1, 0x11

    const/16 v0, 0x5a

    .line 66
    invoke-static {p0, p1, v1, v0, v1}, Lcom/gold/extension/shared/Utils;->setDialogWindowParameters(Landroid/view/Window;IIIZ)V

    :cond_79
    return-void
.end method
