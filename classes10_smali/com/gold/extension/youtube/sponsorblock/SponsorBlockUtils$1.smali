.class Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$1;
.super Ljava/lang/Object;
.source "SponsorBlockUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$F6QIip-TXOGroUDmWSFy2SUZ9xQ()Ljava/lang/String;
    .registers 1

    .line 94
    const-string v0, "segmentTypeListener failure"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 80
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutUnsubmitted()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object p0

    aget-object p0, p0, p2

    .line 82
    iget-object p2, p0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->behaviour:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;->IGNORE:Lcom/gold/extension/shared/sponsorblock/objects/CategoryBehaviour;

    if-ne p2, v0, :cond_17

    .line 83
    const-string p0, "youtube_sb_new_segment_disabled_category"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1b

    .line 86
    :cond_17
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->-$$Nest$sfputnewUserCreatedSegmentCategory(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    const/4 p0, 0x1

    .line 90
    :goto_1b
    check-cast p1, Landroid/app/AlertDialog;

    const/4 p2, -0x1

    .line 91
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 94
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
