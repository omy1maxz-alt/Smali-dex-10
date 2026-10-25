.class public final Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$StillImagesAvailability;
.super Ljava/lang/Object;
.source "AlternativeThumbnailsPatch.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StillImagesAvailability"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static usingStillImagesAnywhere()Z
    .registers 1

    .line 87
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_HOME:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useStillImages:Z

    if-nez v0, :cond_3f

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 88
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useStillImages:Z

    if-nez v0, :cond_3f

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_LIBRARY:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 89
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useStillImages:Z

    if-nez v0, :cond_3f

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_PLAYER:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 90
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useStillImages:Z

    if-nez v0, :cond_3f

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SEARCH:Lcom/gold/extension/shared/settings/EnumSetting;

    .line 91
    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;

    iget-boolean v0, v0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$ThumbnailOption;->useStillImages:Z

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v0, 0x0

    return v0

    :cond_3f
    :goto_3f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getParentSettings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/settings/Setting<",
            "*>;>;"
        }
    .end annotation

    .line 101
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_HOME:Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SUBSCRIPTIONS:Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v1, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_LIBRARY:Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v2, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_PLAYER:Lcom/gold/extension/shared/settings/EnumSetting;

    sget-object v3, Lcom/gold/extension/youtube/settings/Settings;->ALT_THUMBNAIL_SEARCH:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$DeArrowAvailability$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    .line 96
    invoke-static {}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$StillImagesAvailability;->usingStillImagesAnywhere()Z

    move-result p0

    return p0
.end method
