.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

.field public final synthetic f$1:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;->f$0:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    iput-object p2, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;->f$1:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iput-object p3, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;->f$0:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    iget-object v1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;->f$1:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->$r8$lambda$fFNAjSS6hDsK616WK87Dn59gNz4([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
