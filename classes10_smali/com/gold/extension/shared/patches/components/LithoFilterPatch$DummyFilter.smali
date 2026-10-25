.class final Lcom/gold/extension/shared/patches/components/LithoFilterPatch$DummyFilter;
.super Lcom/gold/extension/shared/patches/components/Filter;
.source "LithoFilterPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/components/LithoFilterPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DummyFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/Filter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/patches/components/LithoFilterPatch-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$DummyFilter;-><init>()V

    return-void
.end method
