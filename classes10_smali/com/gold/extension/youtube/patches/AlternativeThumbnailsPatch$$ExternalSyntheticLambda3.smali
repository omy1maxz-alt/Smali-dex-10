.class public final synthetic Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$$ExternalSyntheticLambda3;->f$0:I

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch;->$r8$lambda$GS1WaWrum-SR5RbsB_9gTccLbGs(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
