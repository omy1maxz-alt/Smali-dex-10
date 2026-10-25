.class public final Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;
.super Ljava/lang/Object;
.source "ActivityDownloaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final toolbarLayout:Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->toolbarLayout:Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;
    .registers 4

    const-string v0, "frame"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_26

    const-string v0, "toolbar_layout"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-static {v2}, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

    move-result-object v0

    new-instance v2, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0, v1, v0}, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;)V

    return-object v2

    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;
    .registers 5

    const-string v0, "za_activity_downloader"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_10

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    invoke-static {p0}, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/databinding/ActivityDownloaderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
