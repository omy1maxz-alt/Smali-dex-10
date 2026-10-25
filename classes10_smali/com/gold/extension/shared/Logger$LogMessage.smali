.class public interface abstract Lcom/gold/extension/shared/Logger$LogMessage;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogMessage"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract buildMessageString()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
