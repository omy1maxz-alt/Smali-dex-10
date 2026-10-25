.class public final synthetic Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda40;->f$0:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

    iput-object p2, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda40;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda40;->f$0:Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;

    iget-object p0, p0, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController$$ExternalSyntheticLambda40;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->$r8$lambda$6wA1NzclQOdCG4sKRMr-LS_g_88(Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$ChannelWhitelistAdapter;Ljava/lang/String;)V

    return-void
.end method
