.class public Lcom/gold/extension/youtube/patches/FixPreferenceIconPatch;
.super Ljava/lang/Object;
.source "FixPreferenceIconPatch.java"


# static fields
.field private static final REMOVE_BROKEN_PREFERENCE_ICON:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_SETTINGS_MENUS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 16
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-static {v1}, Lcom/gold/extension/youtube/settings/YouTubeActivityHook;->useBoldIcons(Z)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    sput-boolean v1, Lcom/gold/extension/youtube/patches/FixPreferenceIconPatch;->REMOVE_BROKEN_PREFERENCE_ICON:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static removePreferenceIcon()Z
    .registers 1

    .line 22
    sget-boolean v0, Lcom/gold/extension/youtube/patches/FixPreferenceIconPatch;->REMOVE_BROKEN_PREFERENCE_ICON:Z

    return v0
.end method
