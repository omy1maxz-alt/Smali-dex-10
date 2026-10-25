.class public Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;
.super Ljava/lang/Object;
.source "SponsorBlockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;
    }
.end annotation


# static fields
.field private static final LOCKED_COLOR:I

.field private static final MANUAL_EDIT_TIME_TEXT_HINT:Ljava/lang/String; = "hh:mm:ss.sss"

.field private static final editByHandSaveDialogListener:Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;

.field private static final manualEditTimePattern:Ljava/util/regex/Pattern;

.field private static newSponsorSegmentDialogShownMillis:J

.field private static newSponsorSegmentEndMillis:J

.field private static newSponsorSegmentPreviewed:Z

.field private static newSponsorSegmentStartMillis:J

.field private static newUserCreatedSegmentCategory:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

.field private static final segmentCategorySelectedDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private static final segmentTypeListener:Landroid/content/DialogInterface$OnClickListener;

.field private static final statsNumberFormatter:Ljava/text/NumberFormat;


# direct methods
.method public static synthetic $r8$lambda$2uX-4szz_Q5Tia_npc8jZTc5r5o()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$4C4CxR9gLNRc83xyo1lPhyps8Qk()Ljava/lang/String;
    .registers 1

    .line 198
    const-string v0, "Invalid parameters"

    return-object v0
.end method

.method public static synthetic $r8$lambda$79Mj5F1Zs3y0RA12-dMjr8EmejA()Ljava/lang/String;
    .registers 1

    .line 569
    const-string v0, "showChannelWhitelistDialog failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$8gvOM6TOhuWGYaE9LuOcxkMab9Q()Ljava/lang/String;
    .registers 1

    .line 411
    const-string v0, "onPreviewClicked failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Axd5xLVXTNU1cvM5qlbGQ8HCbCg()V
    .registers 2

    .line 229
    sget-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentDialogShownMillis:J

    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    return-void
.end method

.method public static synthetic $r8$lambda$CGiEL2d6mZbstqC-NvKHrQrjAN8(Ljava/lang/String;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;JJJ)V
    .registers 10

    .line 205
    :try_start_0
    invoke-static/range {p0 .. p8}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->submitSegments(Ljava/lang/String;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;JJJ)V

    .line 206
    invoke-static {p0}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->executeDownloadSegments(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    move-object p0, v0

    .line 208
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda29;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda29;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cp0ylLtLP6y8QMnRaFGzDwNqD9w()Ljava/lang/String;
    .registers 1

    .line 450
    const-string v0, "onEditByHandClicked failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$F76rg1ckgGbco2crV15Tl_jIJ0c()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$GkBF4so7IrE5K4hvXgVabNv7gVs(Ljava/lang/String;)V
    .registers 11

    .line 418
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->getOverLaysViewGroupContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda14;

    invoke-direct {v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda14;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 417
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 426
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 427
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$HzKx_ajVtE0W67hhzA8ZNimiWJA(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 389
    aget-object p1, p1, p3

    invoke-static {p0, p1}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->voteToChangeCategoryOnBackgroundThread(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JiKpMrmxgxlS1a6_TjZqJU576mM()V
    .registers 2

    .line 232
    sget-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentDialogShownMillis:J

    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    return-void
.end method

.method public static synthetic $r8$lambda$KRQvey6utZTLeMamn9-g515PomM(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x1

    .line 444
    invoke-static {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->showEditByHandInputDialog(ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kplv2O5dzyH2b74H79fVgGEJjSk()Ljava/lang/String;
    .registers 1

    .line 208
    const-string v0, "submitNewSegment failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$OTFVEZyxxLyALCzeXZT-3Xokrk4(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 99
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->submitNewSegment()V

    return-void
.end method

.method public static synthetic $r8$lambda$PXsuUCaJ9zFJxJwpyFU1Pf6Owkg()Ljava/lang/String;
    .registers 1

    .line 392
    const-string v0, "onNewCategorySelect failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$RHNxHLITHdl9bTJyv9cpUQ8i0l0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Time format exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SZfLh3PXcYCMKaBFgHtvUpOUzZE(Ljava/lang/String;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 3

    .line 715
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->removeChannel(Ljava/lang/String;)V

    .line 716
    const-string p0, "youtube_sb_channel_whitelist_channel_removed"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 717
    invoke-static {p1, p2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->buildWhitelistContent(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TFU1cyHkC0TwE01kWj3mvALH7f0()Ljava/lang/String;
    .registers 1

    .line 374
    const-string v0, "onVotingClicked failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Ut7IuX_VEhbSYq7PwLMLItEM95A(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 5

    .line 617
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->isChannelWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 618
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->removeChannel(Ljava/lang/String;)V

    .line 619
    const-string p0, "youtube_sb_channel_whitelist_channel_removed"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    goto :goto_1f

    .line 621
    :cond_13
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->addChannel(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string p0, "youtube_sb_channel_whitelist_channel_added"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    .line 624
    :goto_1f
    invoke-static {p2, p3}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->buildWhitelistContent(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WwZlq22fgDMj9eBaM9CIhKxGLa4()Ljava/lang/String;
    .registers 1

    .line 212
    const-string v0, "submitNewSegment failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$XpObqdE8obx39lDf_Jf-jSTU6Hw()Ljava/lang/String;
    .registers 1

    .line 165
    const-string v0, "onSegmentVoteClicked failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZO9n20FhocL6E2kuPb6F0OCh3kM()V
    .registers 2

    .line 265
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newUserCreatedSegmentCategory:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 266
    sget-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    .line 267
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->submitNewSegment()V

    return-void
.end method

.method public static synthetic $r8$lambda$fFNAjSS6hDsK616WK87Dn59gNz4([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 153
    aget-object p0, p0, p4

    .line 154
    sget-object p3, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$2;->$SwitchMap$app$morphe$extension$shared$sponsorblock$objects$SponsorSegment$SegmentVote:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_18

    const/4 p4, 0x2

    if-eq p3, p4, :cond_18

    const/4 p0, 0x3

    if-eq p3, p0, :cond_14

    return-void

    .line 160
    :cond_14
    invoke-static {p1, p2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->onNewCategorySelect(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/Context;)V

    return-void

    .line 157
    :cond_18
    invoke-static {p1, p0}, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester;->voteForSegmentOnBackgroundThread(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gaoOV0PBsRRK-tVutuDU8QFrbv0()V
    .registers 6

    .line 298
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->hideNewSegmentLayout()V

    .line 299
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutUnsubmitted()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    .line 300
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 301
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_1a

    .line 302
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getTitleWithColorDot()Landroid/text/SpannableString;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    .line 304
    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newUserCreatedSegmentCategory:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 305
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->getOverLaysViewGroupContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "youtube_sb_new_segment_choose_category"

    .line 306
    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget-object v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->segmentTypeListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, -0x1

    .line 307
    invoke-virtual {v2, v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 308
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    sget-object v2, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->segmentCategorySelectedDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 309
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$irpmHgcvupaHV8oek3JzWq09KwM()Ljava/lang/String;
    .registers 1

    .line 194
    const-string v0, "Invalid parameters"

    return-object v0
.end method

.method public static synthetic $r8$lambda$ivhqjRVHyyZOZ6l2C2ETVK3wqcU()V
    .registers 2

    .line 126
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->editByHandSaveDialogListener:Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->saveTime(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kk7aYrF2U9zxqvdIBFscjSDAp78()V
    .registers 2

    .line 123
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->editByHandSaveDialogListener:Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->saveTime(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oPk4gD9W_Dsny6MGAR98Td6Cuf8(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    .line 441
    invoke-static {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->showEditByHandInputDialog(ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oQcDArh-JOZQ11Afm5X7dE7uBH4(Landroid/content/Context;[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 372
    aget-object p1, p1, p3

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->onSegmentVoteClicked(Landroid/content/Context;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qM0XsZ9lkEsbJ4eLFXGH-xHUN0s()Ljava/lang/String;
    .registers 1

    .line 318
    const-string v0, "onPublishClicked failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$vmsMSseiKcIK1rSfd0B9hCVkRPc()Ljava/lang/String;
    .registers 1

    .line 238
    const-string v0, "onMarkLocationClicked failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$wNz-5L5JB8t-DZzSLTUSHrbmXdM()V
    .registers 0

    .line 0
    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputnewSponsorSegmentEndMillis(J)V
    .registers 2

    .line 0
    sput-wide p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputnewSponsorSegmentStartMillis(J)V
    .registers 2

    .line 0
    sput-wide p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfputnewUserCreatedSegmentCategory(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V
    .registers 1

    .line 0
    sput-object p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newUserCreatedSegmentCategory:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    return-void
.end method

.method public static bridge synthetic -$$Nest$smparseSegmentTime(Ljava/lang/String;)J
    .registers 3

    .line 0
    invoke-static {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->parseSegmentTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smshowEditByHandInputDialog(ZLandroid/content/Context;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->showEditByHandInputDialog(ZLandroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 65
    const-string v0, "#FFC83D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->LOCKED_COLOR:I

    .line 67
    const-string v0, "((\\d{1,2}):)?(\\d{1,2}):(\\d{2})(\\.(\\d{1,3}))?"

    .line 68
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->manualEditTimePattern:Ljava/util/regex/Pattern;

    .line 69
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->statsNumberFormatter:Ljava/text/NumberFormat;

    const-wide/16 v0, -0x1

    .line 72
    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    .line 73
    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    .line 76
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$1;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->segmentTypeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda18;-><init>()V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->segmentCategorySelectedDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 102
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;-><init>(Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils-IA;)V

    sput-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->editByHandSaveDialogListener:Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildChannelRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 15

    .line 693
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 694
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 695
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 696
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 698
    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v2, v1, v1, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 699
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 702
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41600000  # 14.0f

    .line 703
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 704
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 705
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {p2, v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 p2, 0x1

    .line 708
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 709
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 711
    const-string p2, "youtube_sb_channel_whitelist_remove"

    .line 713
    invoke-static {p2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;

    invoke-direct {v8, p1, p0, p3}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    .line 711
    invoke-static/range {v5 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object p0

    .line 721
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p2, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    invoke-direct {p1, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 723
    invoke-virtual {p1, v3, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 724
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static buildWhitelistContent(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    .line 574
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 576
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/high16 v7, 0x41600000  # 14.0f

    const v8, 0x3f333333  # 0.7f

    const/high16 v9, 0x41500000  # 13.0f

    const/4 v10, 0x1

    const/4 v11, -0x2

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-nez v2, :cond_f2

    .line 578
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getChannelName()Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    move-object v3, v1

    goto :goto_29

    :cond_28
    move-object v3, v2

    .line 581
    :goto_29
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 582
    const-string v5, "youtube_sb_channel_whitelist_current_channel"

    invoke-static {v5}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 584
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 585
    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 586
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 588
    sget v14, Lcom/gold/extension/shared/ui/Dim;->dp4:I

    invoke-virtual {v5, v13, v13, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 589
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 592
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 593
    invoke-virtual {v14, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    .line 594
    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 595
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 597
    sget v15, Lcom/gold/extension/shared/ui/Dim;->dp12:I

    invoke-virtual {v4, v13, v13, v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 598
    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 601
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 603
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 604
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {v3, v13, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 607
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 608
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 610
    invoke-static {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->isChannelWhitelisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 614
    const-string v4, "youtube_sb_channel_whitelist_remove"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_a1
    move v5, v3

    goto :goto_aa

    .line 615
    :cond_a3
    const-string v4, "youtube_sb_channel_whitelist_add"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a1

    :goto_aa
    new-instance v3, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1, v2, v0, v6}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    xor-int/lit8 v1, v5, 0x1

    const/4 v5, 0x0

    move-object v2, v4

    move v4, v1

    const/4 v1, 0x0

    .line 611
    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/ui/CustomDialog;->createButton(Landroid/content/Context;Landroid/app/Dialog;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/widget/Button;

    move-result-object v1

    .line 628
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp36:I

    invoke-direct {v2, v11, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 630
    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v2, v3, v13, v13, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 631
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 633
    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 635
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 636
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_dd

    const v2, 0x26ffffff

    goto :goto_df

    :cond_dd
    const/high16 v2, 0x26000000

    :goto_df
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 637
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp1:I

    invoke-direct {v2, v12, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    invoke-virtual {v2, v13, v13, v13, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 640
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 644
    :cond_f2
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 645
    const-string v2, "youtube_sb_channel_whitelist_channels_header"

    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 647
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 649
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 651
    sget v3, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v2, v13, v13, v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 652
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 655
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockChannelWhitelist;->getWhitelistedChannels()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 657
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_156

    .line 658
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 659
    const-string v0, "youtube_sb_channel_whitelist_empty"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 661
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x3f000000  # 0.5f

    .line 662
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 663
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 664
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 666
    invoke-virtual {v0, v13, v3, v13, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 667
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 668
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 670
    :cond_156
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 671
    invoke-virtual {v2, v13}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    const/4 v3, 0x2

    .line 672
    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 673
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x28

    .line 675
    invoke-static {v4}, Lcom/gold/extension/shared/ui/Dim;->pctHeight(I)I

    move-result v4

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v5

    const/high16 v7, 0x42300000  # 44.0f

    invoke-static {v7}, Lcom/gold/extension/shared/ui/Dim;->dp(F)I

    move-result v7

    mul-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v3, v12, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 673
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 678
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 680
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 681
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 682
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 683
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1ae

    move-object v4, v5

    .line 684
    :cond_1ae
    invoke-static {v0, v5, v4, v6}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->buildChannelRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_18f

    .line 687
    :cond_1b6
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 688
    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static clearUnsubmittedSegmentTimes()V
    .registers 2

    const-wide/16 v0, 0x0

    .line 177
    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentDialogShownMillis:J

    const-wide/16 v0, -0x1

    .line 178
    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    const/4 v0, 0x0

    .line 179
    sput-boolean v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentPreviewed:Z

    return-void
.end method

.method private static formatSegmentTime(J)Ljava/lang/String;
    .registers 22

    .line 492
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoLength()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    .line 495
    div-long v4, p0, v2

    const-wide/32 v6, 0xea60

    .line 496
    div-long v6, p0, v6

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    const-wide/16 v10, 0x3e8

    .line 497
    div-long v12, p0, v10

    rem-long/2addr v12, v8

    .line 498
    rem-long v8, p0, v10

    const/4 v10, 0x3

    .line 501
    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v11, v15

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v16, 0x1

    aput-object v14, v11, v16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/16 v17, 0x2

    aput-object v14, v11, v17

    const-wide/32 v18, 0x927c0

    cmp-long v14, v0, v18

    if-gez v14, :cond_3c

    .line 504
    const-string v0, "%01d:%02d.%03d"

    goto :goto_84

    :cond_3c
    cmp-long v2, v0, v2

    if-gez v2, :cond_43

    .line 506
    const-string v0, "%02d:%02d.%03d"

    goto :goto_84

    :cond_43
    const-wide/32 v2, 0x2255100

    cmp-long v0, v0, v2

    const/4 v1, 0x4

    if-gez v0, :cond_68

    .line 509
    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v10

    const-string v0, "%01d:%02d:%02d.%03d"

    goto :goto_84

    .line 512
    :cond_68
    new-array v11, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v17

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v10

    const-string v0, "%02d:%02d:%02d.%03d"

    .line 515
    :goto_84
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v0, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfSkipsString(I)Ljava/lang/String;
    .registers 4

    .line 455
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->statsNumberFormatter:Ljava/text/NumberFormat;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeSavedString(J)Ljava/lang/String;
    .registers 12

    .line 519
    invoke-static {p0, p1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p0

    .line 520
    invoke-virtual {p0}, Ljava/time/Duration;->toHours()J

    move-result-wide v0

    .line 521
    invoke-virtual {p0}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v2

    const-wide/16 v4, 0x3c

    rem-long/2addr v2, v4

    .line 524
    sget-object p1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->statsNumberFormatter:Ljava/text/NumberFormat;

    invoke-virtual {p1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-lez v9, :cond_2a

    .line 526
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    .line 527
    const-string p1, "youtube_sb_stats_saved_hour_format"

    filled-new-array {p0, v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 530
    :cond_2a
    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    rem-long/2addr v0, v4

    .line 531
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    cmp-long p1, v2, v7

    if-lez p1, :cond_42

    .line 533
    const-string p1, "youtube_sb_stats_saved_minute_format"

    filled-new-array {v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 536
    :cond_42
    const-string p1, "youtube_sb_stats_saved_second_format"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onEditByHandClicked()V
    .registers 11

    .line 433
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 434
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->getOverLaysViewGroupContext()Landroid/content/Context;

    move-result-object v0

    .line 435
    const-string v1, "youtube_sb_new_segment_edit_by_hand_title"

    .line 437
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube_sb_new_segment_edit_by_hand_content"

    .line 438
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube_sb_new_segment_mark_end"

    .line 440
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    const-string v3, "youtube_sb_new_segment_mark_start"

    .line 443
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda8;

    invoke-direct {v8, v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 435
    invoke-static/range {v0 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/util/Pair;

    move-result-object v0

    .line 448
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    .line 450
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onMarkLocationClicked()V
    .registers 13

    .line 218
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 219
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentDialogShownMillis:J

    .line 220
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->getOverLaysViewGroupContext()Landroid/content/Context;

    move-result-object v2

    .line 222
    const-string v0, "youtube_sb_new_segment_title"

    .line 224
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "youtube_sb_new_segment_mark_time_as_question"

    sget-wide v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentDialogShownMillis:J

    .line 226
    invoke-static {v4, v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "youtube_sb_new_segment_mark_end"

    .line 228
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda25;

    invoke-direct {v7}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda25;-><init>()V

    const-string v0, "youtube_sb_new_segment_mark_start"

    .line 231
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda26;

    invoke-direct {v10}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda26;-><init>()V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 222
    invoke-static/range {v2 .. v12}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Landroid/util/Pair;

    move-result-object v0

    .line 236
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    .line 238
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda27;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static onNewCategorySelect(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/Context;)V
    .registers 6

    .line 380
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 381
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->categoriesWithoutHighlights()[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    move-result-object v0

    .line 382
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 383
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 384
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getTitleWithColorDot()Landroid/text/SpannableString;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 387
    :cond_19
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p1, "youtube_sb_new_segment_choose_category"

    .line 388
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda16;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;[Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;)V

    .line 389
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p0

    .line 392
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onPreviewClicked()V
    .registers 9

    .line 398
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 399
    sget-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3c

    sget-wide v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_12

    goto :goto_3c

    :cond_12
    cmp-long v0, v0, v4

    if-ltz v0, :cond_20

    .line 402
    const-string v0, "youtube_sb_new_segment_start_is_before_end"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 404
    :cond_20
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->removeUnsubmittedSegments()V

    .line 405
    new-instance v1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    sget-object v2, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-wide v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    sget-wide v6, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;-><init>(Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Ljava/lang/String;JJZ)V

    invoke-static {v1}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->addUnsubmittedSegment(Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    .line 408
    sget-wide v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    const-wide/16 v2, 0x7d0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/VideoInformation;->seekTo(J)Z

    return-void

    .line 400
    :cond_3c
    :goto_3c
    const-string v0, "youtube_sb_new_segment_mark_locations_first"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    return-void

    :catch_46
    move-exception v0

    .line 411
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda28;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onPublishClicked()V
    .registers 10

    .line 244
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 245
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/ui/SponsorBlockViewController;->getOverLaysViewGroupContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    sget-wide v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_13

    move v5, v7

    goto :goto_14

    :cond_13
    move v5, v6

    .line 248
    :goto_14
    sget-wide v8, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    cmp-long v3, v8, v3

    if-ltz v3, :cond_1b

    move v6, v7

    :cond_1b
    if-nez v5, :cond_29

    if-nez v6, :cond_29

    .line 251
    const-string v0, "youtube_sb_new_segment_mark_locations_first"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    :cond_29
    if-eqz v5, :cond_63

    if-nez v6, :cond_63

    .line 257
    const-string v1, "youtube_sb_new_segment_highlight_title"

    .line 259
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube_sb_new_segment_highlight_content"

    sget-wide v3, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    .line 261
    invoke-static {v3, v4}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 260
    invoke-static {v2, v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube_sb_new_segment_highlight_submit"

    .line 263
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda0;-><init>()V

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda1;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 257
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v0

    .line 271
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_63
    cmp-long v3, v1, v8

    if-ltz v3, :cond_71

    .line 277
    const-string v0, "youtube_sb_new_segment_start_is_before_end"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 281
    :cond_71
    sget-boolean v3, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentPreviewed:Z

    if-nez v3, :cond_7f

    .line 282
    const-string v0, "youtube_sb_new_segment_preview_segment_first"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    :cond_7f
    sub-long/2addr v8, v1

    const-wide/16 v1, 0x3e8

    .line 287
    div-long/2addr v8, v1

    .line 288
    const-string v1, "youtube_sb_new_segment_confirm_title"

    .line 290
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube_sb_new_segment_confirm_content"

    sget-wide v3, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    .line 292
    invoke-static {v3, v4}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v3

    sget-wide v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    .line 293
    invoke-static {v4, v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-static {v8, v9}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->getTimeSavedString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 291
    invoke-static {v2, v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube_sb_new_segment_confirm_submit"

    .line 296
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda2;-><init>()V

    new-instance v6, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda3;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 288
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v0

    .line 316
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c2} :catch_c3

    return-void

    :catch_c3
    move-exception v0

    .line 318
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static onSegmentVoteClicked(Landroid/content/Context;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V
    .registers 12

    .line 133
    :try_start_0
    iget-object v0, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v1, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v0, v1, :cond_9

    .line 134
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->voteTypesWithoutCategoryChange:[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    goto :goto_d

    .line 135
    :cond_9
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->values()[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;

    move-result-object v0

    .line 136
    :goto_d
    array-length v1, v0

    .line 137
    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->SB_USER_IS_VIP:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 138
    new-array v3, v1, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-ge v5, v1, :cond_4b

    .line 141
    aget-object v6, v0, v5

    .line 142
    iget-object v7, v6, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->title:Lcom/gold/extension/shared/StringRef;

    invoke-virtual {v7}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_46

    .line 143
    iget-boolean v8, p1, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->isLocked:Z

    if-eqz v8, :cond_46

    iget-boolean v6, v6, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;->highlightIfVipAndVideoIsLocked:Z

    if-eqz v6, :cond_46

    .line 144
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->LOCKED_COLOR:I

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 146
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/16 v9, 0x21

    .line 145
    invoke-virtual {v6, v8, v4, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v7, v6

    .line 149
    :cond_46
    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 152
    :cond_4b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, p1, p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda11;-><init>([Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment$SegmentVote;Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;Landroid/content/Context;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p0

    .line 165
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda12;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onVotingClicked(Landroid/content/Context;)V
    .registers 14

    .line 324
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 325
    invoke-static {}, Lcom/gold/extension/shared/sponsorblock/SegmentPlaybackController;->getSegments()[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_af

    .line 326
    const-string v1, "youtube_sb_vote_no_segments"

    if-eqz v0, :cond_a7

    :try_start_b
    array-length v2, v0

    if-nez v2, :cond_10

    goto/16 :goto_a7

    .line 334
    :cond_10
    array-length v2, v0

    .line 335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    array-length v2, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1e
    if-ge v6, v2, :cond_77

    aget-object v7, v0, v6

    .line 338
    iget-object v8, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v9, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->UNSUBMITTED:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v8, v9, :cond_29

    goto :goto_74

    .line 342
    :cond_29
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 344
    iget-object v9, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    invoke-virtual {v9}, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->getTitleWithColorDot()Landroid/text/SpannableString;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v9, 0xa

    .line 345
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 347
    iget-wide v9, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->start:J

    invoke-static {v9, v10}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v9

    .line 348
    iget-object v10, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->category:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    sget-object v11, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v10, v11, :cond_4c

    .line 349
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5f

    .line 351
    :cond_4c
    const-string v10, "youtube_sb_vote_segment_time_to_from"

    iget-wide v11, v7, Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;->end:J

    .line 352
    invoke-static {v11, v12}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    .line 351
    invoke-static {v10, v9}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 353
    invoke-virtual {v8, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 356
    :goto_5f
    new-instance v9, Landroid/text/style/StyleSpan;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 357
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    .line 356
    invoke-virtual {v8, v9, v5, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 359
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_74
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 363
    :cond_77
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 364
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 368
    :cond_85
    new-array v0, v5, [Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 369
    new-array v1, v5, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;

    .line 371
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda30;

    invoke-direct {v3, p0, v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda30;-><init>(Landroid/content/Context;[Lcom/gold/extension/shared/sponsorblock/objects/SponsorSegment;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 330
    :cond_a7
    :goto_a7
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastShort(Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_ae} :catch_af

    return-void

    :catch_af
    move-exception p0

    .line 374
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda31;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static parseSegmentTime(Ljava/lang/String;)J
    .registers 10

    .line 459
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->manualEditTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_f

    return-wide v2

    :cond_f
    const/4 v1, 0x2

    .line 463
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    .line 464
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 465
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    .line 466
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v1, :cond_2d

    .line 469
    :try_start_26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2e

    :catch_2b
    move-exception v0

    goto :goto_63

    :cond_2d
    move v1, v6

    .line 471
    :goto_2e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 473
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v0, :cond_50

    .line 477
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%-3s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x20

    const/16 v7, 0x30

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_50} :catch_2b

    :cond_50
    int-to-long v0, v1

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    int-to-long v2, v4

    const-wide/32 v7, 0xea60

    mul-long/2addr v2, v7

    add-long/2addr v0, v2

    int-to-long v2, v5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, v6

    add-long/2addr v0, v2

    return-wide v0

    .line 485
    :goto_63
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    return-wide v2
.end method

.method public static setNewSponsorSegmentPreviewed()V
    .registers 1

    const/4 v0, 0x1

    .line 173
    sput-boolean v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentPreviewed:Z

    return-void
.end method

.method public static showChannelWhitelistDialog(Landroid/content/Context;)V
    .registers 9

    .line 541
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    const/4 v0, 0x0

    .line 544
    invoke-static {p0, v0}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createMainLayout(Landroid/content/Context;Ljava/lang/Integer;)Lcom/gold/extension/shared/ui/SheetBottomDialog$DraggableLinearLayout;

    move-result-object v0

    .line 545
    sget v1, Lcom/gold/extension/shared/ui/Dim;->dp16:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 547
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 548
    const-string v4, "youtube_sb_channel_whitelist_title"

    invoke-static {v4}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41900000  # 18.0f

    .line 549
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 550
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 551
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppForegroundColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    .line 552
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 553
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 555
    sget v6, Lcom/gold/extension/shared/ui/Dim;->dp8:I

    invoke-virtual {v5, v2, v6, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 556
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 559
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 560
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 561
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 563
    invoke-static {p0, v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->buildWhitelistContent(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    const/16 v1, 0x12c

    .line 566
    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/ui/SheetBottomDialog;->createSlideDialog(Landroid/content/Context;Landroid/view/View;I)Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;

    move-result-object p0

    .line 567
    invoke-virtual {p0}, Lcom/gold/extension/shared/ui/SheetBottomDialog$SlideDialog;->show()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception p0

    .line 569
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static showEditByHandInputDialog(ZLandroid/content/Context;)V
    .registers 12

    .line 104
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 105
    const-string v0, "hh:mm:ss.sss"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1c

    .line 107
    sget-wide v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_29

    .line 108
    invoke-static {v4, v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 110
    :cond_1c
    sget-wide v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_29

    .line 111
    invoke-static {v4, v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->formatSegmentTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_29
    :goto_29
    sget-object v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->editByHandSaveDialogListener:Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->-$$Nest$fputsettingStart(Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;Z)V

    .line 115
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->-$$Nest$fputeditTextRef(Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;Ljava/lang/ref/WeakReference;)V

    if-eqz p0, :cond_3b

    .line 119
    const-string p0, "youtube_sb_new_segment_time_start"

    goto :goto_3d

    :cond_3b
    const-string p0, "youtube_sb_new_segment_time_end"

    :goto_3d
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda5;-><init>()V

    const-string p0, "youtube_sb_new_segment_now"

    .line 125
    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda6;-><init>()V

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    .line 117
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 129
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showErrorDialog(Ljava/lang/String;)V
    .registers 2

    .line 416
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnMainThreadNowOrLater(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static submitNewSegment()V
    .registers 13

    .line 184
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->verifyOnMainThread()V

    .line 185
    sget-object v2, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newUserCreatedSegmentCategory:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    .line 186
    sget-object v0, Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;

    if-ne v2, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 187
    :goto_c
    sget-wide v4, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentStartMillis:J

    if-eqz v0, :cond_12

    move-wide v6, v4

    goto :goto_14

    .line 188
    :cond_12
    sget-wide v6, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->newSponsorSegmentEndMillis:J

    .line 189
    :goto_14
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoLength()J

    move-result-wide v8

    if-eqz v0, :cond_21

    .line 191
    sget-object v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->HIGHLIGHT:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    goto :goto_23

    :cond_21
    sget-object v3, Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;->SKIP:Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;

    :goto_23
    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-ltz v12, :cond_55

    cmp-long v12, v6, v10

    if-ltz v12, :cond_55

    cmp-long v10, v8, v10

    if-lez v10, :cond_55

    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_55

    if-nez v2, :cond_3a

    goto :goto_55

    :cond_3a
    if-nez v0, :cond_49

    cmp-long v0, v4, v6

    if-ltz v0, :cond_49

    .line 198
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 202
    :cond_49
    invoke-static {}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->clearUnsubmittedSegmentTimes()V

    .line 203
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda21;

    invoke-direct/range {v0 .. v9}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda21;-><init>(Ljava/lang/String;Lcom/gold/extension/shared/sponsorblock/objects/SegmentCategory;Lcom/gold/extension/shared/sponsorblock/requests/SBRequester$SegmentSubmitAction;JJJ)V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 194
    :cond_55
    :goto_55
    new-instance v0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    return-void

    :catch_5e
    move-exception v0

    .line 212
    new-instance v1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
