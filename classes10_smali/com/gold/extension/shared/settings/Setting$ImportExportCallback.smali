.class public interface abstract Lcom/gold/extension/shared/settings/Setting$ImportExportCallback;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/Setting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImportExportCallback"
.end annotation


# virtual methods
.method public abstract settingsExported(Landroid/app/Activity;)V
    .param p1  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract settingsImported(Landroid/app/Activity;)V
    .param p1  # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
