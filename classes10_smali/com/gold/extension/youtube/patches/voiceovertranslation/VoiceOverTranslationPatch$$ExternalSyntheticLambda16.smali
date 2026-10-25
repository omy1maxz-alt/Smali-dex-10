.class public final synthetic Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/gold/extension/youtube/shared/VideoState;

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceOverTranslationPatch;->$r8$lambda$Sz-In2w-Brg_wpljH36gQyxMmsc(Lcom/gold/extension/youtube/shared/VideoState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
