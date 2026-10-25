.class public final Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;
.super Ljava/lang/Object;
.source "ToolbarLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/support/v7/widget/Toolbar;Landroid/widget/LinearLayout;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;
    .registers 5

    const-string v0, "toolbar"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_17

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

    invoke-direct {v2, v0, v1, v0}, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/support/v7/widget/Toolbar;Landroid/widget/LinearLayout;)V

    return-object v2

    :cond_17
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


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
