.class public final synthetic Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper$$ExternalSyntheticLambda0;->f$0:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->$r8$lambda$7jaIGPBoCEbghtU-8dkKhOBpPjI(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
