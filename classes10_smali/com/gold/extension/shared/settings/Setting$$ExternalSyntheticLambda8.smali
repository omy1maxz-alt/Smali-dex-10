.class public final synthetic Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/settings/Setting;

.field public final synthetic f$1:Lcom/gold/extension/shared/settings/Setting;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/shared/settings/Setting;

    iput-object p2, p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda8;->f$1:Lcom/gold/extension/shared/settings/Setting;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda8;->f$0:Lcom/gold/extension/shared/settings/Setting;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/Setting$$ExternalSyntheticLambda8;->f$1:Lcom/gold/extension/shared/settings/Setting;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/settings/Setting;->$r8$lambda$7ixFajRIcdRu6qDF4pEs9iLRL6o(Lcom/gold/extension/shared/settings/Setting;Lcom/gold/extension/shared/settings/Setting;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
