.class public final synthetic Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(JDD)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;->f$0:J

    iput-wide p3, p0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;->f$1:D

    iput-wide p5, p0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;->f$2:D

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 7

    .line 0
    iget-wide v0, p0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;->f$0:J

    iget-wide v2, p0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;->f$1:D

    iget-wide v4, p0, Lcom/gold/extension/shared/patches/EnableDebuggingPatch$$ExternalSyntheticLambda6;->f$2:D

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/patches/EnableDebuggingPatch;->$r8$lambda$jr2d1oq5v_WwFrYenq8J7jiTNZA(JDD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
