.class public final synthetic Lcom/gold/extension/youtube/patches/playback/quality/HidePremiumVideoQualityPatch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lajfm;

    return-object p1

    invoke-static {p1}, Lcom/gold/extension/youtube/patches/playback/quality/HidePremiumVideoQualityPatch;->$r8$lambda$qsXWMZcjyteFkVAGwoL99pcUtAQ(I)[Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    move-result-object p0

    return-object p0
.end method
