.class public Ljj$/jdk/internal/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method static bridge synthetic -$$Nest$smoutOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Ljj$/jdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFromIndexSize(IIILjava/util/function/BiFunction;)I
    .registers 5

    or-int v0, p2, p0

    or-int/2addr v0, p1

    if-ltz v0, :cond_a

    sub-int v0, p2, p0

    if-gt p1, v0, :cond_a

    return p0

    :cond_a
    invoke-static {p3, p0, p1, p2}, Ljj$/jdk/internal/util/Preconditions;->outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static checkFromToIndex(IIILjava/util/function/BiFunction;)I
    .registers 5

    if-ltz p0, :cond_7

    if-gt p0, p1, :cond_7

    if-gt p1, p2, :cond_7

    return p0

    :cond_7
    invoke-static {p3, p0, p1, p2}, Ljj$/jdk/internal/util/Preconditions;->outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static checkIndex(IILjava/util/function/BiFunction;)I
    .registers 4

    if-ltz p0, :cond_5

    if-ge p0, p1, :cond_5

    return p0

    :cond_5
    invoke-static {p2, p0, p1}, Ljj$/jdk/internal/util/Preconditions;->outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static varargs outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;
    .registers 7

    invoke-static {p2}, Ljj$/desugar/sun/nio/fs/DesugarLinuxFileSystem$$ExternalSyntheticBackport1;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez p0, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    invoke-interface {p0, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    :goto_e
    if-nez v1, :cond_1a

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, v0}, Ljj$/jdk/internal/util/Preconditions;->outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    return-object v2
.end method

.method private static outOfBoundsCheckFromIndexSize(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .registers 9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "checkFromIndexSize"

    invoke-static {p0, v0, v3}, Ljj$/jdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static outOfBoundsCheckFromToIndex(Ljava/util/function/BiFunction;III)Ljava/lang/RuntimeException;
    .registers 9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "checkFromToIndex"

    invoke-static {p0, v0, v3}, Ljj$/jdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private static outOfBoundsCheckIndex(Ljava/util/function/BiFunction;II)Ljava/lang/RuntimeException;
    .registers 7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "checkIndex"

    invoke-static {p0, v0, v2}, Ljj$/jdk/internal/util/Preconditions;->outOfBounds(Ljava/util/function/BiFunction;Ljava/lang/String;[Ljava/lang/Integer;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static outOfBoundsExceptionFormatter(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .registers 2

    new-instance v0, Ljj$/jdk/internal/util/Preconditions$1;

    invoke-direct {v0, p0}, Ljj$/jdk/internal/util/Preconditions$1;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static outOfBoundsMessage(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_e

    if-nez p1, :cond_e

    const-string v1, "Range check failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v1, "Range check failed: %s"

    const/4 v2, 0x1

    if-nez p0, :cond_1c

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    if-nez p1, :cond_27

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "checkFromIndexSize"

    const-string v5, "checkFromToIndex"

    const-string v6, "checkIndex"

    const/4 v7, -0x1

    const/4 v8, 0x2

    sparse-switch v3, :sswitch_data_e2

    :cond_37
    goto :goto_50

    :sswitch_38
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v3, 0x2

    goto :goto_51

    :sswitch_40
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v3, 0x1

    goto :goto_51

    :sswitch_48
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v3, 0x0

    goto :goto_51

    :goto_50
    const/4 v3, -0x1

    :goto_51
    packed-switch v3, :pswitch_data_f0

    goto :goto_59

    :pswitch_55  #0x1, 0x2
    const/4 v1, 0x3

    goto :goto_59

    :pswitch_57  #0x0
    const/4 v1, 0x2

    nop

    :goto_59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v1, :cond_62

    const-string v3, ""

    goto :goto_63

    :cond_62
    move-object v3, p0

    :goto_63
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_fa

    :cond_6a
    goto :goto_82

    :sswitch_6b
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v7, 0x2

    goto :goto_82

    :sswitch_73
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v7, 0x1

    goto :goto_82

    :sswitch_7b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v7, 0x0

    :goto_82
    const/4 v3, 0x3

    packed-switch v7, :pswitch_data_108

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v2

    const-string v0, "Range check failed: %s %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_93  #0x2
    nop

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    aput-object v6, v3, v8

    const-string v0, "Range [%d, %<d + %d) out of bounds for length %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_af  #0x1
    nop

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v5, v3, v2

    aput-object v6, v3, v8

    const-string v0, "Range [%d, %d) out of bounds for length %d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_cb  #0x0
    nop

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v0

    aput-object v4, v5, v2

    const-string v0, "Index %d out of bounds for length %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_e2
    .sparse-switch
        -0x201dc756 -> :sswitch_48
        0x6def39e5 -> :sswitch_40
        0x6e348341 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_57  #00000000
        :pswitch_55  #00000001
        :pswitch_55  #00000002
    .end packed-switch

    :sswitch_data_fa
    .sparse-switch
        -0x201dc756 -> :sswitch_7b
        0x6def39e5 -> :sswitch_73
        0x6e348341 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_cb  #00000000
        :pswitch_af  #00000001
        :pswitch_93  #00000002
    .end packed-switch
.end method
