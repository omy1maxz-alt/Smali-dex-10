.class public final synthetic Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field public final synthetic f$1:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

.field public final synthetic f$2:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iput-object p2, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;->f$1:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    iput-object p3, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;->f$2:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iget-object v1, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;->f$1:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$$ExternalSyntheticLambda9;->f$2:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->$r8$lambda$y6Iv4WsNOnHQWAzOX-zS-x3igFA(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    return-void
.end method
