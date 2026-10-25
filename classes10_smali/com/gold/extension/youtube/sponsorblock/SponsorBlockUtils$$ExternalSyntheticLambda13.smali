.class public final synthetic Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;->f$2:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;->f$2:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->$r8$lambda$SZfLh3PXcYCMKaBFgHtvUpOUzZE(Ljava/lang/String;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    return-void
.end method
