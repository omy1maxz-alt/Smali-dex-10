.class Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController$1;
.super Ljava/lang/Object;
.source "SponsorBlockViewController.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->initialize(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 82
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->-$$Nest$sfgetinlineSponsorOverlayRef()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_f

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_f
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 0
    return-void
.end method
