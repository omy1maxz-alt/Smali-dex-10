.class public final synthetic Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda24;->f$0:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/VideoInformation$$ExternalSyntheticLambda24;->f$0:Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/VideoInformation;->$r8$lambda$VbQznQnrXR3WpQaWwOPCr09dTgs(Lcom/gold/extension/youtube/patches/VideoInformation$VideoQualityInterface;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
