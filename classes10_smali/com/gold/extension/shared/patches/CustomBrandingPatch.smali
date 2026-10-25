.class public Lcom/gold/extension/shared/patches/CustomBrandingPatch;
.super Ljava/lang/Object;
.source "CustomBrandingPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;,
        Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;
    }
.end annotation


# static fields
.field private static notificationSmallIcon:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$7YLQZvD1QYNJ2O3jCxfoOg2MP5k()Ljava/lang/String;
    .registers 1

    .line 128
    const-string v0, "App is root mounted. Not overriding small notification icon"

    return-object v0
.end method

.method public static synthetic $r8$lambda$CMmkg4UYDTCC1t-rR1qbebklQCk()Ljava/lang/String;
    .registers 1

    .line 262
    const-string v0, "App is root mounted. Cannot dynamically change app icon"

    return-object v0
.end method

.method public static synthetic $r8$lambda$SYe2t-4yIzQi0p75N59iC2mV284(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not load notification small icon: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bSQJyhdQHI0_nu_vIAMfF9iC8Mc()Ljava/lang/String;
    .registers 1

    .line 185
    const-string v0, "getColor failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$kJtE_QQbSoRWznBd1D8VI7ji1Ws()Ljava/lang/String;
    .registers 1

    .line 169
    const-string v0, "getSmallIcon failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$tzCINJik-6R_e_Ap_nT8Tddh_Ak(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wgi55HWhZHUbDMbZS9GdNPWqH-Q()Ljava/lang/String;
    .registers 1

    .line 329
    const-string v0, "setBranding failure"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(I)I
    .registers 3

    .line 179
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->getNotificationSmallIcon()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_8

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return p0

    :catch_8
    move-exception v0

    .line 185
    new-instance v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return p0
.end method

.method public static getDefaultAppNameIndex()I
    .registers 1

    .line 244
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->userProvidedCustomName()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 245
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->numberOfPresetAppNames()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static getDefaultIconStyle()Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;
    .registers 1

    .line 250
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->userProvidedCustomIcon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 251
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->CUSTOM:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    return-object v0

    .line 252
    :cond_9
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    return-object v0
.end method

.method public static getLottieViewOrNull(Landroid/view/View;)Landroid/view/View;
    .registers 3

    .line 152
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->ORIGINAL:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    if-ne v0, v1, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNotificationSmallIcon()I
    .registers 3

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->notificationSmallIcon:Ljava/lang/Integer;

    if-nez v2, :cond_49

    .line 127
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->isPackageNameOriginal()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 128
    new-instance v2, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 129
    sput-object v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->notificationSmallIcon:Ljava/lang/Integer;

    return v0

    .line 133
    :cond_1a
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_NOTIFICATION_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 134
    invoke-virtual {v0}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->resolveNotificationBrandingTheme()Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->notificationIconResourceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 137
    sput-object v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->notificationSmallIcon:Ljava/lang/Integer;

    goto :goto_49

    .line 139
    :cond_2f
    sget-object v1, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v1, v0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->notificationSmallIcon:Ljava/lang/Integer;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_49

    .line 141
    new-instance v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 145
    :cond_49
    :goto_49
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->notificationSmallIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSmallIcon(I)I
    .registers 3

    .line 164
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->getNotificationSmallIcon()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_8

    if-eqz v0, :cond_7

    return v0

    :cond_7
    return p0

    :catch_8
    move-exception v0

    .line 169
    new-instance v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return p0
.end method

.method private static numberOfPresetAppNames()I
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method private static originalLauncherIconName()Ljava/lang/String;
    .registers 1

    .line 218
    const-string v0, ""

    return-object v0
.end method

.method private static originalNotificationIconName()Ljava/lang/String;
    .registers 1

    .line 230
    const-string v0, ""

    return-object v0
.end method

.method public static setBranding()V
    .registers 17

    .line 261
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->isPackageNameOriginal()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 262
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 266
    :cond_f
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 270
    sget-object v2, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 271
    sget-object v3, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_NAME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v3}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 274
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->values()[Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    move v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3b
    const/4 v12, 0x1

    if-ge v9, v6, :cond_65

    aget-object v13, v5, v9

    .line 278
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->numberOfPresetAppNames()I

    move-result v14

    :goto_44
    if-gt v12, v14, :cond_60

    .line 282
    invoke-static {v13, v0, v12}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->-$$Nest$mpackageAndNameIndexToClassAlias(Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    .line 283
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v0, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_54

    move-object v11, v8

    :cond_54
    if-ne v12, v3, :cond_5a

    if-ne v13, v2, :cond_5a

    move-object v10, v8

    goto :goto_5d

    .line 292
    :cond_5a
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5d
    add-int/lit8 v12, v12, 0x1

    goto :goto_44

    :cond_60
    const/16 v16, 0x0

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    :cond_65
    const/16 v16, 0x0

    if-nez v10, :cond_7c

    .line 301
    const-string v0, "Custom branding reset"

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_NAME:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/Setting;->resetToDefault()Ljava/lang/Object;

    .line 306
    invoke-interface {v4, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v10, v11

    .line 309
    :cond_7c
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->originalLauncherIconName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->setOriginalLauncherIconName(Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->originalNotificationIconName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/settings/preference/IconListPreference;->setOriginalNotificationIconName(Ljava/lang/String;)V

    .line 315
    sput-object v16, Lcom/gold/extension/shared/patches/CustomBrandingPatch;->notificationSmallIcon:Ljava/lang/Integer;

    .line 317
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v7

    :goto_91
    if-ge v2, v0, :cond_a0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/content/ComponentName;

    const/4 v5, 0x2

    .line 318
    invoke-virtual {v1, v3, v5, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_91

    .line 324
    :cond_a0
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0, v10}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda1;-><init>(Landroid/content/ComponentName;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 326
    invoke-virtual {v1, v10, v12, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ab} :catch_ac

    return-void

    :catch_ac
    move-exception v0

    .line 329
    new-instance v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static userProvidedCustomIcon()Z
    .registers 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method private static userProvidedCustomName()Z
    .registers 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
