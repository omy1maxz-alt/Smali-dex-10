.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

.field public final synthetic f$1:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda16;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iput-object p2, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda16;->f$1:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda16;->f$0:Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda16;->f$1:[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-static {v0, p0, p1, p2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->$r8$lambda$HzKx_ajVtE0W67hhzA8ZNimiWJA(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Landroid/content/DialogInterface;I)V

    return-void
.end method
