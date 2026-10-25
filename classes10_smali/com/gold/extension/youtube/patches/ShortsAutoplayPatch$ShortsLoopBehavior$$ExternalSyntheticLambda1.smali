.class public final synthetic Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Enum;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Enum;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/ShortsAutoplayPatch$ShortsLoopBehavior;->$r8$lambda$nHrsDGSR2_50UE1A2eqUrSaRioc(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
