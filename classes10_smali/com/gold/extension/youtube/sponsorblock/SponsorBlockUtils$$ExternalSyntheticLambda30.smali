.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda30;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda30;->f$1:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda30;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda30;->f$1:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-static {v0, p0, p1, p2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->$r8$lambda$oQcDArh-JOZQ11Afm5X7dE7uBH4(Landroid/content/Context;[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/DialogInterface;I)V

    return-void
.end method
