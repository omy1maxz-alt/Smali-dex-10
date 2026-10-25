.class public final Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;
.super Ljava/lang/Object;
.source "FilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/components/FilterGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterGroupResult"
.end annotation


# instance fields
.field private matchedIndex:I

.field private matchedLength:I

.field private setting:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, v2, v0, v1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;II)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;II)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->setValues(Lcom/gold/extension/shared/settings/BooleanSetting;II)V

    return-void
.end method


# virtual methods
.method public getMatchedIndex()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->matchedIndex:I

    return p0
.end method

.method public getMatchedLength()I
    .registers 1

    .line 52
    iget p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->matchedLength:I

    return p0
.end method

.method public getSetting()Lcom/gold/extension/shared/settings/BooleanSetting;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-object p0
.end method

.method public isFiltered()Z
    .registers 1

    .line 38
    iget p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->matchedIndex:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public setValues(Lcom/gold/extension/shared/settings/BooleanSetting;II)V
    .registers 4

    .line 24
    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 25
    iput p2, p0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->matchedIndex:I

    .line 26
    iput p3, p0, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;->matchedLength:I

    return-void
.end method
