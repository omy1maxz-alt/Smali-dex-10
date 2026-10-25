.class public Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;
.super Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;
.source "StringSpanFilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/patches/spans/SpanFilterGroup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/patches/spans/StringSpanFilterGroup;->check(Ljava/lang/String;)Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;

    move-result-object p0

    return-object p0
.end method

.method public check(Ljava/lang/String;)Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;
    .registers 7

    .line 21
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 22
    iget-object v0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->filters:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_20

    aget-object v3, v0, v2

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1d

    goto :goto_21

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    const/4 v3, -0x1

    .line 32
    :goto_21
    new-instance p1, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;

    iget-object p0, p0, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-direct {p1, p0, v3}, Lcom/gold/extension/shared/patches/spans/SpanFilterGroup$FilterGroupResult;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;I)V

    return-object p1
.end method
