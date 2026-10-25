.class public final synthetic Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda49;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda49;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->$r8$lambda$ENRIbnYnJuIuh9BCoL4i8YJCYaQ(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
