.class public final Lcom/gold/extension/youtube/patches/playback/quality/PrioritizeVideoQualityPatch;
.super Ljava/lang/Object;
.source "PrioritizeVideoQualityPatch.java"


# static fields
.field private static final PRIORITIZE_VIDEO_QUALITY:Z


# direct methods
.method public static synthetic $r8$lambda$tVEz-dmcGlby5x076AztUbD0Geo()Ljava/lang/String;
    .registers 1

    .line 81
    const-string v0, "Failed to sort adaptive formats"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 19
    sget-object v0, Lcom/gold/extension/youtube/settings/Settings;->PRIORITIZE_VIDEO_QUALITY:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/youtube/patches/playback/quality/PrioritizeVideoQualityPatch;->PRIORITIZE_VIDEO_QUALITY:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prioritizeVideoQuality(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/protobuf/MessageLite;",
            ">;"
        }
    .end annotation

    .line 39
    sget-boolean v0, Lcom/gold/extension/youtube/patches/playback/quality/PrioritizeVideoQualityPatch;->PRIORITIZE_VIDEO_QUALITY:Z

    if-eqz v0, :cond_a7

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "zzzzzzzzzzz"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    .line 43
    :try_start_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_50

    const-string v4, "vp9"

    const-string v5, "video"

    if-eqz v3, :cond_60

    :try_start_23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 44
    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->parseFrom([B)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 46
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->getMimeType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 47
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 48
    invoke-virtual {v3}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->getHeight()I

    move-result v3

    .line 49
    const-string v7, "avc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 50
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5c

    :catch_50
    move-exception p0

    goto :goto_9f

    .line 51
    :cond_52
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_5c
    :goto_5c
    if-eq v1, v0, :cond_19

    if-eq v2, v0, :cond_19

    :cond_60
    if-lez v2, :cond_9e

    if-ge v2, v1, :cond_9e

    .line 64
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_71
    :goto_71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 67
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->parseFrom([B)Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 69
    invoke-virtual {v2}, Lcom/gold/extension/youtube/innertube/FormatOuterClass$Format;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_99

    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 72
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 73
    :cond_99
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_9c} :catch_50

    goto :goto_71

    :cond_9d
    return-object p0

    :cond_9e
    return-object p1

    .line 81
    :goto_9f
    new-instance v0, Lcom/gold/extension/youtube/patches/playback/quality/PrioritizeVideoQualityPatch$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/playback/quality/PrioritizeVideoQualityPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_a7
    return-object p1
.end method
