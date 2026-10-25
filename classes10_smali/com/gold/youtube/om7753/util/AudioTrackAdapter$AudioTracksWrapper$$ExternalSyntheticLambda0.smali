.class public final synthetic Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->$r8$lambda$5G-paSzLpmmIGf8sk-oaDDXeOTY(Landroid/content/Context;Ljava/util/List;)Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
