.class public Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;
.super Ljava/lang/Object;
.source "RestoreOldVideoActionBarPatch.java"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field private static final COLD_CONFIG_DATA_HEADER:Ljava/lang/String; = "X-Youtube-Cold-Config-Data"

.field private static final FIX_VIDEO_ACTION_BAR:Z

.field private static final VISITOR_ID_HEADER:Ljava/lang/String; = "X-Goog-Visitor-Id"

.field private static needFetch:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->RESTORE_OLD_VIDEO_ACTION_BAR:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->DISABLE_LAYOUT_UPDATES:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 22
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    .line 25
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    sput-boolean v0, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->FIX_VIDEO_ACTION_BAR:Z

    .line 34
    sput-boolean v1, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->needFetch:Z

    if-eqz v0, :cond_2b

    .line 39
    invoke-static {}, Lcom/gold/extension/shared/spoof/SpoofVideoStreamsPatch;->setOverrideSpoofStreamFlagsForHeaders()V

    :cond_2b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchRequest(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    sget-boolean p0, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->FIX_VIDEO_ACTION_BAR:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_57

    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->COLD_CONFIG_DATA:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->isSetToDefault()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 48
    sget-boolean v1, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->needFetch:Z

    if-eqz v1, :cond_43

    if-eqz p1, :cond_56

    .line 50
    const-string p0, "X-Goog-Visitor-Id"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string p0, "Authorization"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 56
    invoke-static {v1}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 57
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_3a
    sput-boolean v0, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->needFetch:Z

    .line 61
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->clear()V

    .line 62
    invoke-static {v2}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->fetchRequest(Ljava/util/Map;)V

    return-void

    .line 66
    :cond_43
    invoke-static {}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->getRequest()Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 68
    invoke-virtual {p1}, Lcom/gold/extension/youtube/patches/utils/requests/ConfigRequest;->getConfig()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 70
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/StringSetting;->save(Ljava/lang/Object;)V

    :cond_56
    return-void

    .line 75
    :cond_57
    sput-boolean v0, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->needFetch:Z

    return-void
.end method

.method public static fixRelatedVideoOverlay(Z)Z
    .registers 2

    .line 97
    sget-boolean v0, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->FIX_VIDEO_ACTION_BAR:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->COLD_CONFIG_DATA:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/StringSetting;->isSetToDefault()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    return p0
.end method

.method public static fixVideoActionBar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 83
    sget-boolean v0, Lcom/gold/extension/youtube/patches/RestoreOldVideoActionBarPatch;->FIX_VIDEO_ACTION_BAR:Z

    if-eqz v0, :cond_19

    const-string v0, "X-Youtube-Cold-Config-Data"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 84
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->COLD_CONFIG_DATA:Lcom/gold/extension/shared/settings/StringSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/StringSetting;->get()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-object p0

    :cond_19
    return-object p1
.end method
