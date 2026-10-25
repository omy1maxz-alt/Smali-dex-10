.class public Lcom/gold/extension/shared/patches/components/StringFilterGroup;
.super Lcom/gold/extension/shared/patches/components/FilterGroup;
.source "StringFilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/patches/components/FilterGroup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/patches/components/FilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic check(Ljava/lang/Object;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/patches/components/StringFilterGroup;->check(Ljava/lang/String;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    return-object p0
.end method

.method public check(Ljava/lang/String;)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;
    .registers 8

    .line 15
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 16
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->filters:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_d
    if-ge v3, v2, :cond_25

    aget-object v4, v0, v3

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_22

    .line 18
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_22

    .line 21
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_26

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_25
    const/4 v5, -0x1

    .line 27
    :goto_26
    new-instance p1, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-direct {p1, p0, v5, v1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;II)V

    return-object p1
.end method
