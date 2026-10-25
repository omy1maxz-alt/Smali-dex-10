.class public final synthetic Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$VerifiedQualities$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$VerifiedQualities$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$VerifiedQualities$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AlternativeThumbnailsPatch$VerifiedQualities;->$r8$lambda$S2g960kgDLulrpIE5V9Qj9cw69M(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
