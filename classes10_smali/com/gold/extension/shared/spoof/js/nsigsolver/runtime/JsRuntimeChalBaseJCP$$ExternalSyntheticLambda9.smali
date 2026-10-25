.class public final synthetic Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

.field public final synthetic f$1:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    iput-object p2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP$$ExternalSyntheticLambda9;->f$1:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP$$ExternalSyntheticLambda9;->f$0:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP$$ExternalSyntheticLambda9;->f$1:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP;->$r8$lambda$IjrmSnSjt3tDPCakff_BXIAT-Jk(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
