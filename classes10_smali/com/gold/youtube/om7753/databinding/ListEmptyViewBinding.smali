.class public final Lcom/gold/youtube/om7753/databinding/ListEmptyViewBinding;
.super Ljava/lang/Object;
.source "ListEmptyViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/databinding/ListEmptyViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/ListEmptyViewBinding;
    .registers 2

    const-string v0, "rootView"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/gold/youtube/om7753/databinding/ListEmptyViewBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/databinding/ListEmptyViewBinding;-><init>(Landroid/widget/LinearLayout;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/databinding/ListEmptyViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/databinding/ListEmptyViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
