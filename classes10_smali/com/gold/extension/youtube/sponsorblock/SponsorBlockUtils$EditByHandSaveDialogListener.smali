.class Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;
.super Ljava/lang/Object;
.source "SponsorBlockUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditByHandSaveDialogListener"
.end annotation


# instance fields
.field private editTextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private settingStart:Z


# direct methods
.method public static synthetic $r8$lambda$jw3ipszI4ibBZ-gngEZ5h-g4Im8()Ljava/lang/String;
    .registers 1

    .line 765
    const-string v0, "EditByHandSaveDialogListener failure"

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fputeditTextRef(Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->editTextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputsettingStart(Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->settingStart:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->editTextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x3

    if-ne p2, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 736
    :goto_6
    invoke-virtual {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->saveTime(Z)V

    return-void
.end method

.method public saveTime(Z)V
    .registers 8

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->editTextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-nez v0, :cond_b

    goto :goto_48

    :cond_b
    const-wide/16 v1, 0x0

    if-eqz p1, :cond_14

    .line 746
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoTime()J

    move-result-wide v3

    goto :goto_2e

    .line 748
    :cond_14
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->-$$Nest$smparseSegmentTime(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gez v5, :cond_2e

    .line 750
    const-string p0, "youtube_sb_new_segment_edit_by_hand_parse_error"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    return-void

    .line 755
    :cond_2e
    :goto_2e
    iget-boolean v5, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->settingStart:Z

    if-eqz v5, :cond_3a

    .line 756
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->-$$Nest$sfputnewSponsorSegmentStartMillis(J)V

    goto :goto_3d

    .line 758
    :cond_3a
    invoke-static {v3, v4}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->-$$Nest$sfputnewSponsorSegmentEndMillis(J)V

    :goto_3d
    if-eqz p1, :cond_48

    .line 762
    iget-boolean p0, p0, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener;->settingStart:Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils;->-$$Nest$smshowEditByHandInputDialog(ZLandroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    return-void

    :catch_49
    move-exception p0

    .line 765
    new-instance p1, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/sponsorblock/SponsorBlockUtils$EditByHandSaveDialogListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method
