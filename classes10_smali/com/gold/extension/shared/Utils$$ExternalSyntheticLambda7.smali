.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Utils;->$r8$lambda$-aNlwvdKxBBXV5PI6_10JUqvhp4(Ljava/lang/Runnable;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
