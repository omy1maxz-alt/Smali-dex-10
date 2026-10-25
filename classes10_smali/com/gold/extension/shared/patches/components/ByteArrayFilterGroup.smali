.class public Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;
.super Lcom/gold/extension/shared/patches/components/FilterGroup;
.source "ByteArrayFilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gold/extension/shared/patches/components/FilterGroup<",
        "[B>;"
    }
.end annotation


# instance fields
.field private volatile skipTables:[[I


# direct methods
.method public static synthetic $r8$lambda$i5wQZLNy2EQXVeI65lxOvlEyuhQ(Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->lambda$buildSkipTables$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/String;)V
    .registers 3

    .line 65
    invoke-static {p2}, Lcom/gold/extension/shared/ByteTrieSearch;->convertStringsToBytes([Ljava/lang/String;)[[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/patches/components/FilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/gold/extension/shared/settings/BooleanSetting;[[B)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/patches/components/FilterGroup;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;[Ljava/lang/Object;)V

    return-void
.end method

.method private static buildSkipTable([B)[I
    .registers 6

    const/16 v0, 0x100

    .line 43
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    .line 46
    array-length v4, p0

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 49
    :cond_e
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ge v2, v0, :cond_1e

    .line 51
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v0, v2

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1e
    return-object v1
.end method

.method private declared-synchronized buildSkipTables()V
    .registers 8

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->skipTables:[[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 70
    :cond_7
    :try_start_7
    new-instance v0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 71
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->filters:[Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [[B

    array-length v1, v1

    new-array v1, v1, [[I

    .line 73
    check-cast v0, [[B

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1c
    if-ge v3, v2, :cond_2e

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 74
    invoke-static {v5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->buildSkipTable([B)[I

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1c

    :catchall_2c
    move-exception v0

    goto :goto_32

    .line 76
    :cond_2e
    iput-object v1, p0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->skipTables:[[I
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2c

    .line 77
    monitor-exit p0

    return-void

    :goto_32
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2c

    throw v0
.end method

.method private static indexOf([B[B[I)I
    .registers 9

    .line 19
    array-length v0, p0

    .line 20
    array-length v1, p1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    return v2

    :cond_7
    :goto_7
    if-gt v2, v0, :cond_27

    add-int/lit8 v3, v1, -0x1

    :goto_b
    if-ltz v3, :cond_18

    add-int v4, v2, v3

    .line 27
    aget-byte v4, p0, v4

    aget-byte v5, p1, v3

    if-ne v4, v5, :cond_18

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_18
    if-gez v3, :cond_1b

    return v2

    :cond_1b
    add-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    .line 33
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 34
    aget v3, p2, v3

    add-int/2addr v2, v3

    goto :goto_7

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method private synthetic lambda$buildSkipTables$0()Ljava/lang/String;
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Building skip tables for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 12
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    move-result-object p0

    return-object p0
.end method

.method public check([B)Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;
    .registers 8

    .line 83
    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/FilterGroup;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2e

    .line 84
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->skipTables:[[I

    if-nez v0, :cond_11

    .line 86
    invoke-direct {p0}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->buildSkipTables()V

    .line 87
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->skipTables:[[I

    .line 89
    :cond_11
    iget-object v3, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->filters:[Ljava/lang/Object;

    check-cast v3, [[B

    array-length v3, v3

    move v4, v1

    :goto_17
    if-ge v4, v3, :cond_2e

    .line 90
    iget-object v2, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->filters:[Ljava/lang/Object;

    check-cast v2, [[B

    aget-object v2, v2, v4

    .line 91
    aget-object v5, v0, v4

    invoke-static {p1, v2, v5}, Lcom/gold/extension/shared/patches/components/ByteArrayFilterGroup;->indexOf([B[B[I)I

    move-result v5

    if-ltz v5, :cond_2a

    .line 93
    array-length v1, v2

    move v2, v5

    goto :goto_2e

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_17

    .line 98
    :cond_2e
    :goto_2e
    new-instance p1, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;

    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/FilterGroup;->setting:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-direct {p1, p0, v2, v1}, Lcom/gold/extension/shared/patches/components/FilterGroup$FilterGroupResult;-><init>(Lcom/gold/extension/shared/settings/BooleanSetting;II)V

    return-object p1
.end method
