.class public interface abstract Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch$FullscreenInterface;
.super Ljava/lang/Object;
.source "OpenVideosFullscreenHookPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/OpenVideosFullscreenHookPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FullscreenInterface"
.end annotation


# virtual methods
.method public abstract patch_enterFullscreen()V
.end method

.method public abstract patch_exitFullscreen()V
.end method
