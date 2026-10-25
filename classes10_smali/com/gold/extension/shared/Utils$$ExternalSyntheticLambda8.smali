.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda8;->f$0:J

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda8;->f$0:J

    invoke-static {v0, v1}, Lcom/gold/extension/shared/Utils;->$r8$lambda$ffkvNaKFx3t2iErHcOA_LDHG3rw(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
