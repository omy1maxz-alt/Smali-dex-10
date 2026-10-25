.class public final synthetic Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;->f$0:Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->$r8$lambda$vmyGWubOITG-A5hTd-PcuYSMxKM(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;)V

    return-void
.end method
