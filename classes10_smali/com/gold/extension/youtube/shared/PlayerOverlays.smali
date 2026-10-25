.class public final Lcom/gold/extension/youtube/shared/PlayerOverlays;
.super Ljava/lang/Object;
.source "PlayerOverlays.kt"


# static fields
.field public static final INSTANCE:Lcom/gold/extension/youtube/shared/PlayerOverlays;

.field private static final onChildrenChange:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/ChildrenChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final onInflate:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final onLayoutChange:Lcom/gold/extension/youtube/shared/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/LayoutChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static $r8$lambda$0L14PUaSAb5Lefi4wo_wt1zjOgs(Landroid/view/View;IIIIIIII)V
    .registers 12

    .line 63
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 64
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onLayoutChange:Lcom/gold/extension/youtube/shared/Event;

    .line 65
    new-instance v1, Lcom/gold/extension/youtube/shared/LayoutChangeEventArgs;

    .line 66
    check-cast p0, Landroid/view/ViewGroup;

    .line 67
    new-instance v2, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    sub-int/2addr p7, p5

    sub-int/2addr p8, p6

    invoke-direct {v2, p5, p6, p7, p8}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    .line 73
    new-instance p5, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;-><init>(IIII)V

    .line 65
    invoke-direct {v1, p0, v2, p5}, Lcom/gold/extension/youtube/shared/LayoutChangeEventArgs;-><init>(Landroid/view/ViewGroup;Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;Lcom/gold/extension/youtube/swipecontrols/misc/Rectangle;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerOverlays;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/PlayerOverlays;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->INSTANCE:Lcom/gold/extension/youtube/shared/PlayerOverlays;

    .line 16
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onInflate:Lcom/gold/extension/youtube/shared/Event;

    .line 21
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onChildrenChange:Lcom/gold/extension/youtube/shared/Event;

    .line 26
    new-instance v0, Lcom/gold/extension/youtube/shared/Event;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/Event;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onLayoutChange:Lcom/gold/extension/youtube/shared/Event;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final attach(Landroid/view/ViewGroup;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    sget-object v0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onInflate:Lcom/gold/extension/youtube/shared/Event;

    invoke-virtual {v0, p0}, Lcom/gold/extension/youtube/shared/Event;->invoke(Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerOverlays$attach$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/PlayerOverlays$attach$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 62
    new-instance v0, Lcom/gold/extension/youtube/shared/PlayerOverlays$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/shared/PlayerOverlays$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public final getOnChildrenChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/ChildrenChangeEventArgs;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object p0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onChildrenChange:Lcom/gold/extension/youtube/shared/Event;

    return-object p0
.end method

.method public final getOnInflate()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object p0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onInflate:Lcom/gold/extension/youtube/shared/Event;

    return-object p0
.end method

.method public final getOnLayoutChange()Lcom/gold/extension/youtube/shared/Event;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/gold/extension/youtube/shared/Event<",
            "Lcom/gold/extension/youtube/shared/LayoutChangeEventArgs;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object p0, Lcom/gold/extension/youtube/shared/PlayerOverlays;->onLayoutChange:Lcom/gold/extension/youtube/shared/Event;

    return-object p0
.end method
