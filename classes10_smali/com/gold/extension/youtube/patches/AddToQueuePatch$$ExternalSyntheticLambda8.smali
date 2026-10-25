.class public final synthetic Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda8;->f$0:[B

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/AddToQueuePatch$$ExternalSyntheticLambda8;->f$0:[B

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/AddToQueuePatch;->$r8$lambda$TcYYFkYSYsS6t07biNVEbYE-G7c([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
