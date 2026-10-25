.class public final Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;
.super Ljava/lang/Object;
.source "SpanFilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterGroupResult"
.end annotation


# instance fields
.field private matchedIndex:I

.field private setting:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;I)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;I)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;->setValues(Lcom/gold/extension/shared/settings/BooleanSetting;I)V

    return-void
.end method


# virtual methods
.method public getSetting()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public isFiltered()Z
    .registers 1

    .line 37
    iget p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;->matchedIndex:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public setValues(Lcom/gold/extension/shared/settings/BooleanSetting;I)V
    .registers 3

    .line 28
    iput-object p1, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 29
    iput p2, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;->matchedIndex:I

    return-void
.end method
