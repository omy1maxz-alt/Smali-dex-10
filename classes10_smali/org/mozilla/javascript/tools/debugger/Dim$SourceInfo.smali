.class public Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;
.super Ljava/lang/Object;
.source "Dim.java"


# static fields
.field private static final EMPTY_BOOLEAN_ARRAY:[Z


# instance fields
.field private breakableLines:[Z

.field private breakpoints:[Z

.field private functionSources:[Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

.field private source:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    sput-object v0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->EMPTY_BOOLEAN_ARRAY:[Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->source:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url:Ljava/lang/String;

    array-length p1, p2

    new-array p3, p1, [[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-eq v1, p1, :cond_19

    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/mozilla/javascript/debug/DebuggableScript;->getLineNumbers()[I

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_19
    new-array v1, p1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_1f
    const/4 v6, 0x1

    if-eq v3, p1, :cond_4e

    aget-object v7, p3, v3

    if-eqz v7, :cond_49

    array-length v8, v7

    if-nez v8, :cond_2a

    goto :goto_49

    :cond_2a
    aget v8, v7, v0

    move v9, v8

    :goto_2d
    array-length v10, v7

    if-eq v6, v10, :cond_3c

    aget v10, v7, v6

    if-ge v10, v8, :cond_36

    move v8, v10

    goto :goto_39

    :cond_36
    if-le v10, v9, :cond_39

    move v9, v10

    :cond_39
    :goto_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_3c
    aput v8, v1, v3

    if-le v4, v5, :cond_43

    move v4, v8

    :goto_41
    move v5, v9

    goto :goto_4b

    :cond_43
    if-ge v8, v4, :cond_46

    move v4, v8

    :cond_46
    if-le v9, v5, :cond_4b

    goto :goto_41

    :cond_49
    :goto_49
    aput v2, v1, v3

    :cond_4b
    :goto_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_4e
    if-le v4, v5, :cond_57

    sget-object p3, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->EMPTY_BOOLEAN_ARRAY:[Z

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLines:[Z

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    goto :goto_7c

    :cond_57
    if-ltz v4, :cond_9c

    add-int/2addr v5, v6

    new-array v2, v5, [Z

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLines:[Z

    new-array v2, v5, [Z

    iput-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    const/4 v2, 0x0

    :goto_63
    if-eq v2, p1, :cond_7c

    aget-object v3, p3, v2

    if-eqz v3, :cond_79

    array-length v4, v3

    if-eqz v4, :cond_79

    const/4 v4, 0x0

    :goto_6d
    array-length v5, v3

    if-eq v4, v5, :cond_79

    aget v5, v3, v4

    iget-object v7, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLines:[Z

    aput-boolean v6, v7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6d

    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_7c
    :goto_7c
    new-array p3, p1, [Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->functionSources:[Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    :goto_80
    if-eq v0, p1, :cond_9b

    aget-object p3, p2, v0

    invoke-interface {p3}, Lorg/mozilla/javascript/debug/DebuggableScript;->getFunctionName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_8c

    const-string p3, ""

    :cond_8c
    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->functionSources:[Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    new-instance v3, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    aget v4, v1, v0

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, p3, v5}, Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;-><init>(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;ILjava/lang/String;Lorg/mozilla/javascript/tools/debugger/Dim$1;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_80

    :cond_9b
    return-void

    :cond_9c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a7

    :goto_a6
    throw p1

    :goto_a7
    goto :goto_a6
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;Lorg/mozilla/javascript/tools/debugger/Dim$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;-><init>(Ljava/lang/String;[Lorg/mozilla/javascript/debug/DebuggableScript;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->copyBreakpointsFrom(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V

    return-void
.end method

.method static synthetic access$2500(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)[Z
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    return-object p0
.end method

.method private copyBreakpointsFrom(Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;)V
    .registers 6

    iget-object v0, p1, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    array-length v0, v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    array-length v2, v1

    if-le v0, v2, :cond_9

    array-length v0, v1

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eq v1, v0, :cond_1a

    iget-object v2, p1, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_17

    iget-object v2, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method


# virtual methods
.method public breakableLine(I)Z
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLines:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_b

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public breakpoint(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLine(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_11

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public breakpoint(IZ)Z
    .registers 6

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakableLine(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    aget-boolean v2, v1, p1

    if-eq v2, p2, :cond_13

    aput-boolean p2, v1, p1

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit v0

    return p1

    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw p1

    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public functionSource(I)Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->functionSources:[Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public functionSourcesTop()I
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->functionSources:[Lorg/mozilla/javascript/tools/debugger/Dim$FunctionSource;

    array-length v0, v0

    return v0
.end method

.method public removeAllBreakpoints()V
    .registers 6

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    :try_start_5
    iget-object v3, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->breakpoints:[Z

    array-length v4, v3

    if-eq v2, v4, :cond_f

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    goto :goto_15

    :goto_14
    throw v1

    :goto_15
    goto :goto_14
.end method

.method public source()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/debugger/Dim$SourceInfo;->url:Ljava/lang/String;

    return-object v0
.end method
