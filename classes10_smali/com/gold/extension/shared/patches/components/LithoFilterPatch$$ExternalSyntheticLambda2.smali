.class public final synthetic Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda2;->f$0:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$$ExternalSyntheticLambda2;->f$0:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch;->$r8$lambda$kx7b7_wa1prTFUwWXwjEUj1H98Q(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
