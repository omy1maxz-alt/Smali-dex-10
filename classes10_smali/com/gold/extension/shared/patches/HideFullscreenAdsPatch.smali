.class public Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch;
.super Ljava/lang/Object;
.source "HideFullscreenAdsPatch.java"


# static fields
.field private static final FULLSCREEN_AD_SEARCH:Lcom/gold/extension/shared/ByteTrieSearch;


# direct methods
.method public static synthetic $r8$lambda$5INDYtspMxWGBtL-0dy8kk9Ulnw()Ljava/lang/String;
    .registers 1

    .line 62
    const-string v0, "buffer is null"

    return-object v0
.end method

.method public static synthetic $r8$lambda$Mlz8Yq3EUz0fAgKgSE9BD8a8OPg()Ljava/lang/String;
    .registers 1

    .line 67
    const-string v0, "Closing fullscreen ad"

    return-object v0
.end method

.method public static synthetic $r8$lambda$OvDZKe-rxuDhcn5-6WWrzA7KrWA(Ljava/lang/Object;)V
    .registers 1

    .line 105
    invoke-static {p0}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch;->closeDialog(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcPqxRJrqJ1sj0YFN-TAiCKbLiU()Ljava/lang/String;
    .registers 1

    .line 109
    const-string v0, "closeFullscreenAd failure"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/gold/extension/shared/ByteTrieSearch;

    const-string v1, "_interstitial"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/gold/extension/shared/ByteTrieSearch;->convertStringsToBytes([Ljava/lang/String;)[[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gold/extension/shared/ByteTrieSearch;-><init>([[B)V

    sput-object v0, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch;->FULLSCREEN_AD_SEARCH:Lcom/gold/extension/shared/ByteTrieSearch;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeDialog(Ljava/lang/Object;)V
    .registers 1

    check-cast p0, Lqz;

    invoke-virtual {p0}, Lqz;->onBackPressed()V

    .line 0
    return-void
.end method

.method public static closeFullscreenAd(Ljava/lang/Object;[B)V
    .registers 6

    .line 57
    :try_start_0
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->HIDE_FULLSCREEN_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_75

    :cond_d
    if-nez p1, :cond_18

    .line 62
    new-instance p0, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 66
    :cond_18
    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_75

    move-object v0, p0

    check-cast v0, Landroid/app/Dialog;

    sget-object v1, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch;->FULLSCREEN_AD_SEARCH:Lcom/gold/extension/shared/ByteTrieSearch;

    invoke-virtual {v1, p1}, Lcom/gold/extension/shared/TrieSearch;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 67
    new-instance p1, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 69
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 74
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 76
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 79
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x2

    .line 82
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 85
    invoke-virtual {p1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :cond_5c

    .line 89
    invoke-static {p1}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 91
    invoke-static {}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticApiModelOutline1;->m()I

    move-result v1

    invoke-static {p1, v1}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticApiModelOutline2;->m(Landroid/view/WindowInsetsController;I)V

    goto :goto_63

    .line 94
    :cond_5c
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 100
    :cond_63
    :goto_63
    sget-boolean p1, Lcom/gold/extension/shared/patches/AppCheckPatch;->IS_YOUTUBE:Z

    if-eqz p1, :cond_6b

    .line 101
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 105
    :cond_6b
    new-instance p1, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    :cond_75
    :goto_75
    return-void

    :catch_76
    move-exception p0

    .line 109
    new-instance p1, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/gold/extension/shared/patches/HideFullscreenAdsPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static hideFullscreenAds(Landroid/view/View;)V
    .registers 2

    .line 37
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->HIDE_FULLSCREEN_ADS:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->hideViewBy0dpUnderCondition(Lcom/gold/extension/shared/settings/BooleanSetting;Landroid/view/View;)V

    return-void
.end method
