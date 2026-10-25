.class public final synthetic Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda22;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda22;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->$r8$lambda$dy-APCwa2ZQqusA1QhhbfqPj9k0(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method
