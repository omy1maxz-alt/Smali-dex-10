.class public final Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;
.super Ljava/lang/Object;
.source "DialogTitleBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemAdditionalDetails:Landroid/widget/TextView;

.field public final itemTitleView:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;->rootView:Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;->itemAdditionalDetails:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;->itemTitleView:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;
    .registers 5

    const-string v0, "itemAdditionalDetails"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2b

    move-object v0, p0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v2, "itemTitleView"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_25

    new-instance p0, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;

    invoke-direct {p0, v0, v1, v0, v3}, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object p0

    :cond_25
    const-string v0, "itemTitleView"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    :cond_2b
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;
    .registers 5

    const-string v0, "dialog_title"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_10

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    invoke-static {p0}, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;->bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/databinding/DialogTitleBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
