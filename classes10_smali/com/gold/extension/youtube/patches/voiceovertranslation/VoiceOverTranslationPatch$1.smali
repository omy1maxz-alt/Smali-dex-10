.class Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$1;
.super Ljava/lang/Object;
.source "VoiceOverTranslationPatch.java"

# interfaces
.implements Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public settingsExported(Landroid/app/Activity;)V
    .registers 2
    .param p1  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 68
    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->-$$Nest$smshowExportWarningIfNeeded(Landroid/app/Activity;)V

    return-void
.end method

.method public settingsImported(Landroid/app/Activity;)V
    .registers 2
    .param p1  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 0
    return-void
.end method
