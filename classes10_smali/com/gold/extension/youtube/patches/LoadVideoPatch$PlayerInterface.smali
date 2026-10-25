.class public interface abstract Lcom/gold/extension/youtube/patches/LoadVideoPatch$PlayerInterface;
.super Ljava/lang/Object;
.source "LoadVideoPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/LoadVideoPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerInterface"
.end annotation


# virtual methods
.method public abstract patch_dismissPlayer()V
.end method

.method public abstract patch_getIntentParcelable(Landroid/content/Intent;)Landroid/os/Parcelable;
.end method
