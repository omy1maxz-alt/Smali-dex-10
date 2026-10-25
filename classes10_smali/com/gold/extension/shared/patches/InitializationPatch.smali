.class public Lcom/gold/extension/shared/patches/InitializationPatch;
.super Ljava/lang/Object;
.source "InitializationPatch.java"


# direct methods
.method public static synthetic $r8$lambda$Td-vdVTsGJmWvPbj6BmR2B6A8WE()Ljava/lang/String;
    .registers 1

    .line 44
    const-string v0, "Activity is null, skipping restart dialog"

    return-object v0
.end method

.method public static synthetic $r8$lambda$aw1HYeQlNa2RctLlXbkKG1GKfYw()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$rUzurt6Tlcfs8Gd5_Q_01P6Pu3Y()Ljava/lang/String;
    .registers 1

    .line 49
    const-string v0, "Activity is finishing, skipping restart dialog"

    return-object v0
.end method

.method public static synthetic $r8$lambda$tmLjo1tS3dFKQZoK_L07e5Df8vI()V
    .registers 10

    .line 42
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_f

    .line 44
    new-instance v0, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 48
    :cond_f
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 49
    new-instance v0, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 55
    :cond_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-gt v1, v2, :cond_2b

    .line 56
    new-instance v1, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda3;-><init>()V

    :goto_29
    move-object v6, v1

    goto :goto_2d

    :cond_2b
    const/4 v1, 0x0

    goto :goto_29

    .line 59
    :goto_2d
    const-string v1, "youtube_settings_restart_title"

    .line 61
    invoke-static {v1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "youtube_restart_first_run"

    .line 62
    invoke-static {v2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "youtube_settings_restart"

    .line 64
    invoke-static {v3}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 59
    invoke-static/range {v0 .. v9}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object v0

    .line 72
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$zW-OqGAKYc3XtT0wgL4r5qb-xt0(Landroid/app/Activity;)V
    .registers 1

    .line 65
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->restartApp(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onGlobalConfigUpdated()V
    .registers 3

    .line 35
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->SETTINGS_INITIALIZED:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 39
    :cond_d
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/InitializationPatch$$ExternalSyntheticLambda0;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
