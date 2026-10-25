.class public final synthetic Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/Utils$$ExternalSyntheticLambda6;->f$0:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->$r8$lambda$FqvO70pZAHZsetbaX2ej7s3WSvI(Lcom/gold/extension/shared/settings/BooleanSetting;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
