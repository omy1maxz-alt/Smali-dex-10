.class Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;
.super Ljava/io/InputStream;
.source "ShellConsole.java"


# static fields
.field private static final EMPTY:[B


# instance fields
.field private atEOF:Z

.field private buffer:[B

.field private final console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

.field private final cs:Ljava/nio/charset/Charset;

.field private cursor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/tools/shell/ShellConsole;Ljava/nio/charset/Charset;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    sget-object v0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->EMPTY:[B

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->buffer:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->atEOF:Z

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cs:Ljava/nio/charset/Charset;

    return-void
.end method

.method private ensureInput()Z
    .registers 5

    iget-boolean v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->atEOF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    const/4 v2, 0x1

    if-ltz v0, :cond_10

    iget-object v3, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->buffer:[B

    array-length v3, v3

    if-le v0, v3, :cond_1c

    :cond_10
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->readNextLine()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1a

    iput-boolean v2, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->atEOF:Z

    return v1

    :cond_1a
    iput v1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    :cond_1c
    return v2
.end method

.method private readNextLine()I
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->console:Lorg/mozilla/javascript/tools/shell/ShellConsole;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/tools/shell/ShellConsole;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->buffer:[B

    array-length v0, v0

    return v0

    :cond_13
    sget-object v0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->EMPTY:[B

    iput-object v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->buffer:[B

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized read()I
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->ensureInput()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-nez v0, :cond_a

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    iget v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->buffer:[B

    array-length v2, v1

    if-ne v0, v2, :cond_19

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_21

    const/16 v0, 0xa

    monitor-exit p0

    return v0

    :cond_19
    add-int/lit8 v2, v0, 0x1

    :try_start_1b
    iput v2, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    aget-byte v0, v1, v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_21

    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .registers 9

    monitor-enter p0

    if-eqz p1, :cond_4a

    if-ltz p2, :cond_44

    if-ltz p3, :cond_44

    :try_start_7
    array-length v0, p1
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_50

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_44

    const/4 v0, 0x0

    if-nez p3, :cond_10

    monitor-exit p0

    return v0

    :cond_10
    :try_start_10
    invoke-direct {p0}, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->ensureInput()Z

    move-result v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_50

    if-nez v1, :cond_19

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_19
    :try_start_19
    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_23
    if-ge v0, v1, :cond_33

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->buffer:[B

    iget v4, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    if-ge v1, p3, :cond_3d

    add-int/lit8 p3, v1, 0x1

    add-int/2addr p2, v1

    const/16 v0, 0xa

    aput-byte v0, p1, p2

    move v1, p3

    :cond_3d
    iget p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/tools/shell/ShellConsole$ConsoleInputStream;->cursor:I
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_50

    monitor-exit p0

    return v1

    :cond_44
    :try_start_44
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_4a
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_50

    :catchall_50
    move-exception p1

    monitor-exit p0

    goto :goto_54

    :goto_53
    throw p1

    :goto_54
    goto :goto_53
.end method
