.class public final synthetic Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

.field public final synthetic f$1:Lio/reactivex/rxjava3/core/SingleEmitter;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lio/reactivex/rxjava3/core/SingleEmitter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda9;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    iput-object p2, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda9;->f$1:Lio/reactivex/rxjava3/core/SingleEmitter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda9;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    iget-object v1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda9;->f$1:Lio/reactivex/rxjava3/core/SingleEmitter;

    check-cast p1, Lfy;

    invoke-static {v0, v1, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->$r8$lambda$DyvSkJpnqO-0FDSi3rsxMscQidk(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lio/reactivex/rxjava3/core/SingleEmitter;Lfy;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
