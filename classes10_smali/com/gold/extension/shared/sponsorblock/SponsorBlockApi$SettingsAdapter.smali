.class public interface abstract Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi$SettingsAdapter;
.super Ljava/lang/Object;
.source "SponsorBlockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/sponsorblock/SponsorBlockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingsAdapter"
.end annotation


# virtual methods
.method public abstract apiUrl()Lcom/gold/extension/shared/settings/StringSetting;
.end method

.method public abstract autoHideSkipButton()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method

.method public abstract autoHideSkipButtonDurationMs()J
.end method

.method public abstract lastVipCheck()Lcom/gold/extension/shared/settings/LongSetting;
.end method

.method public abstract localTimeSavedMilliseconds()Lcom/gold/extension/shared/settings/LongSetting;
.end method

.method public abstract localTimeSavedNumberSegments()Lcom/gold/extension/shared/settings/IntegerSetting;
.end method

.method public abstract privateUserId()Lcom/gold/extension/shared/settings/StringSetting;
.end method

.method public abstract sbEnabled()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method

.method public abstract segmentMinDurationSeconds()Lcom/gold/extension/shared/settings/FloatSetting;
.end method

.method public abstract toastOnConnectionError()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method

.method public abstract toastOnSkip()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method

.method public abstract toastOnSkipDurationMs()J
.end method

.method public abstract toastOnWhitelistedChannel()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method

.method public abstract trackSkipCount()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method

.method public abstract userIsVip()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method

.method public abstract videoLengthWithoutSegments()Lcom/gold/extension/shared/settings/BooleanSetting;
.end method
