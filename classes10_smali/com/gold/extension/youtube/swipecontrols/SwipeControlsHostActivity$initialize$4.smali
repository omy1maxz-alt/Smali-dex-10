.class final synthetic Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity$initialize$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SwipeControlsHostActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    .line 0
    const-string v5, "onPlayerTypeChanged(Lcom/gold/extension/youtube/shared/PlayerType;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    const-string v4, "onPlayerTypeChanged"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 162
    check-cast p1, Lcom/gold/extension/youtube/shared/PlayerType;

    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity$initialize$4;->invoke(Lcom/gold/extension/youtube/shared/PlayerType;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/gold/extension/youtube/shared/PlayerType;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;->access$onPlayerTypeChanged(Lcom/gold/extension/youtube/swipecontrols/SwipeControlsHostActivity;Lcom/gold/extension/youtube/shared/PlayerType;)V

    return-void
.end method
