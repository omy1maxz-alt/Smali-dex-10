.class public final synthetic Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/core/SingleTransformer;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/SingleSource;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->pleaseWait(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method
