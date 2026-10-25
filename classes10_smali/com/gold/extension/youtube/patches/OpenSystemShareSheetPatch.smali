.class public final Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch;
.super Ljava/lang/Object;
.source "OpenSystemShareSheetPatch.java"


# static fields
.field public static flyoutMenuRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private static waitUntilClosingDone:Z


# direct methods
.method public static synthetic $r8$lambda$UMLykhi-eMcAFvCCkzJL2Gd8NtM()V
    .registers 1

    const/4 v0, 0x0

    .line 105
    sput-boolean v0, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch;->waitUntilClosingDone:Z

    return-void
.end method

.method public static synthetic $r8$lambda$Vd42AQLFytgkEjHjb2VqILtDElQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not open System Share panel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch;->flyoutMenuRecyclerView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLithoAppShareSheet()V
    .registers 14

    .line 68
    sget-boolean v0, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch;->waitUntilClosingDone:Z

    if-eqz v0, :cond_6

    goto/16 :goto_6c

    :cond_6
    const/4 v0, 0x1

    .line 71
    sput-boolean v0, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch;->waitUntilClosingDone:Z

    .line 73
    sget-object v1, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch;->flyoutMenuRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_6c

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6c

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v2, v3

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3e800000  # 0.25f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_36

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_33

    goto :goto_36

    :cond_33
    move v8, v2

    move v9, v3

    goto :goto_3a

    :cond_36
    :goto_36
    const/high16 v2, 0x43480000  # 200.0f

    move v8, v2

    move v9, v8

    .line 85
    :goto_3a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    move v11, v2

    :goto_40
    const/4 v5, 0x2

    if-ge v11, v5, :cond_62

    if-nez v11, :cond_47

    move v5, v0

    goto :goto_48

    :cond_47
    move v5, v2

    :goto_48
    if-eqz v5, :cond_4c

    move-wide v6, v3

    goto :goto_4f

    :cond_4c
    const-wide/16 v6, 0xa

    add-long/2addr v6, v3

    :goto_4f
    xor-int/lit8 v5, v5, 0x1

    const/4 v10, 0x0

    move-wide v12, v6

    move v7, v5

    move-wide v5, v12

    .line 89
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 97
    invoke-virtual {v1, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    .line 104
    :cond_62
    new-instance v0, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public static onFlyoutMenuCreate(Landroid/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch;->flyoutMenuRecyclerView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static openSystemShareSheet()V
    .registers 3

    .line 44
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->OPEN_SYSTEM_SHARE_SHEET:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_73

    .line 48
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->REPLACE_LINKS_WITH_SHORTENER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "https://youtu.be/"

    goto :goto_23

    :cond_21
    const-string v1, "https://www.youtube.com/watch?v="

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->getFlyoutVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-static {}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->getFlyoutVideoId()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_35
    invoke-static {}, Lcom/gold/extension/youtube/patches/VideoInformation;->getVideoId()Ljava/lang/String;

    move-result-object v1

    :goto_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10040000

    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    :try_start_62
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_6a

    return-void

    :catch_6a
    move-exception v1

    .line 62
    new-instance v2, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/gold/extension/youtube/patches/OpenSystemShareSheetPatch$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    return-void
.end method
