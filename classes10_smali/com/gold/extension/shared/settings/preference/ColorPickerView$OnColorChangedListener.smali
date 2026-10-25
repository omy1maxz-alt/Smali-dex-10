.class public interface abstract Lcom/gold/extension/shared/settings/preference/ColorPickerView$OnColorChangedListener;
.super Ljava/lang/Object;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnColorChangedListener"
.end annotation


# virtual methods
.method public abstract onColorChanged(I)V
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method
