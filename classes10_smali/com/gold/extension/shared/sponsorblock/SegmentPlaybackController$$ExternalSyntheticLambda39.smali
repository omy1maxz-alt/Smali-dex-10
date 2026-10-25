.class public final synthetic Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda39;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    iget-wide v0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda39;->f$0:J

    check-cast p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-static {v0, v1, p1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->$r8$lambda$YIpfJjwL5-r__3AxyAxIFM0345s(JLcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Z

    move-result p0

    return p0
.end method
