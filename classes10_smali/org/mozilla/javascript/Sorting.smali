.class public final Lorg/mozilla/javascript/Sorting;
.super Ljava/lang/Object;
.source "Sorting.java"


# static fields
.field private static final SMALLSORT:I = 0x10

.field private static final sorting:Lorg/mozilla/javascript/Sorting;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/mozilla/javascript/Sorting;

    invoke-direct {v0}, Lorg/mozilla/javascript/Sorting;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/Sorting;->sorting:Lorg/mozilla/javascript/Sorting;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/mozilla/javascript/Sorting;
    .registers 1

    sget-object v0, Lorg/mozilla/javascript/Sorting;->sorting:Lorg/mozilla/javascript/Sorting;

    return-object v0
.end method

.method private hybridSort([Ljava/lang/Object;IILjava/util/Comparator;I)V
    .registers 14

    if-ge p2, p3, :cond_28

    if-eqz p5, :cond_25

    sub-int v0, p3, p2

    const/16 v1, 0x10

    if-gt v0, v1, :cond_b

    goto :goto_25

    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Sorting;->partition([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    add-int/lit8 p5, p5, -0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, v0

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/javascript/Sorting;->hybridSort([Ljava/lang/Object;IILjava/util/Comparator;I)V

    add-int/lit8 v3, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/Sorting;->hybridSort([Ljava/lang/Object;IILjava/util/Comparator;I)V

    goto :goto_28

    :cond_25
    :goto_25
    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/javascript/Sorting;->insertionSort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_28
    :goto_28
    return-void
.end method

.method private static insertionSort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .registers 9

    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_21

    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    :goto_7
    if-lt v2, p1, :cond_1a

    aget-object v3, p0, v2

    invoke-interface {p3, v3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1a

    add-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v2

    aput-object v4, p0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    aput-object v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method private static log2(I)I
    .registers 5

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private partition([Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 9

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Sorting;->median([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    aget-object v1, p1, v0

    aget-object v2, p1, p2

    aput-object v2, p1, v0

    aput-object v1, p1, p2

    add-int/lit8 v0, p3, 0x1

    move v2, p2

    :cond_f
    :goto_f
    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    invoke-interface {p4, v3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1b

    if-ne v2, p3, :cond_f

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    aget-object v3, p1, v0

    invoke-interface {p4, v3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_27

    if-ne v0, p2, :cond_1b

    :cond_27
    if-lt v2, v0, :cond_2d

    invoke-static {p1, p2, v0}, Lorg/mozilla/javascript/Sorting;->swap([Ljava/lang/Object;II)V

    return v0

    :cond_2d
    invoke-static {p1, v2, v0}, Lorg/mozilla/javascript/Sorting;->swap([Ljava/lang/Object;II)V

    goto :goto_f
.end method

.method private static swap([Ljava/lang/Object;II)V
    .registers 5

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method


# virtual methods
.method public hybridSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 10

    array-length v0, p1

    add-int/lit8 v4, v0, -0x1

    array-length v0, p1

    invoke-static {v0}, Lorg/mozilla/javascript/Sorting;->log2(I)I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/javascript/Sorting;->hybridSort([Ljava/lang/Object;IILjava/util/Comparator;I)V

    return-void
.end method

.method public insertionSort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lorg/mozilla/javascript/Sorting;->insertionSort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method

.method public median([Ljava/lang/Object;IILjava/util/Comparator;)I
    .registers 9

    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    aget-object v1, p1, p2

    aget-object v2, p1, v0

    invoke-interface {p4, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    move v1, p2

    :goto_12
    aget-object v2, p1, v1

    aget-object v3, p1, p3

    invoke-interface {p4, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1d

    move v1, p3

    :cond_1d
    if-ne v1, p2, :cond_2b

    aget-object p2, p1, v0

    aget-object p1, p1, p3

    invoke-interface {p4, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_2a

    move p3, v0

    :cond_2a
    return p3

    :cond_2b
    if-ne v1, v0, :cond_3a

    aget-object v0, p1, p2

    aget-object p1, p1, p3

    invoke-interface {p4, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_38

    goto :goto_39

    :cond_38
    move p2, p3

    :goto_39
    return p2

    :cond_3a
    aget-object p3, p1, p2

    aget-object p1, p1, v0

    invoke-interface {p4, p3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_45

    goto :goto_46

    :cond_45
    move p2, v0

    :goto_46
    return p2
.end method
