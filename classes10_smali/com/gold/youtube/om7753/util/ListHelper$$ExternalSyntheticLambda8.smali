.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda8;->f$0:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda8;->f$0:Z

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    check-cast p2, Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;

    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$pswRBfXqLlQUQPFFY0mq5RyT04A(ZLcom/gold/youtube/om7753/extractor/stream/AudioTrackType;Lcom/gold/youtube/om7753/extractor/stream/AudioTrackType;)I

    move-result p1

    return p1
.end method
