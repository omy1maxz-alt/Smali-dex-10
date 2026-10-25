.class public final Ljj$/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private elts:[Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private len:I

.field private final prefix:Ljava/lang/String;

.field private size:I

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Ljj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The prefix must not be null"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The suffix must not be null"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/StringJoiner;->suffix:Ljava/lang/String;

    return-void
.end method

.method private compactElts()V
    .registers 8

    iget v0, p0, Ljj$/util/StringJoiner;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_38

    iget v0, p0, Ljj$/util/StringJoiner;->len:I

    new-array v0, v0, [C

    const/4 v2, 0x1

    iget-object v3, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3, v0, v4}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v3

    :cond_13
    iget-object v5, p0, Ljj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5, v0, v3}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    add-int/2addr v2, v1

    iget v5, p0, Ljj$/util/StringJoiner;->size:I

    if-lt v2, v5, :cond_13

    iput v1, p0, Ljj$/util/StringJoiner;->size:I

    iget-object v1, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v1, v4

    :cond_38
    return-void
.end method

.method private static getChars(Ljava/lang/String;[CI)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Ljj$/util/StringJoiner;
    .registers 6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    if-nez v1, :cond_f

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    goto :goto_2f

    :cond_f
    iget v1, p0, Ljj$/util/StringJoiner;->size:I

    iget-object v2, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_24

    iget-object v1, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    iget v2, p0, Ljj$/util/StringJoiner;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    :cond_24
    iget v1, p0, Ljj$/util/StringJoiner;->len:I

    iget-object v2, p0, Ljj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljj$/util/StringJoiner;->len:I

    :goto_2f
    iget v1, p0, Ljj$/util/StringJoiner;->len:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljj$/util/StringJoiner;->len:I

    iget-object v1, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    iget v2, p0, Ljj$/util/StringJoiner;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljj$/util/StringJoiner;->size:I

    aput-object v0, v1, v2

    return-object p0
.end method

.method public length()I
    .registers 3

    iget v0, p0, Ljj$/util/StringJoiner;->size:I

    if-nez v0, :cond_f

    iget-object v0, p0, Ljj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1f

    :cond_f
    iget v0, p0, Ljj$/util/StringJoiner;->len:I

    iget-object v1, p0, Ljj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljj$/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1f
    return v0
.end method

.method public merge(Ljj$/util/StringJoiner;)Ljj$/util/StringJoiner;
    .registers 4

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    if-nez v0, :cond_8

    return-object p0

    :cond_8
    invoke-direct {p1}, Ljj$/util/StringJoiner;->compactElts()V

    iget-object v0, p1, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljj$/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyValue(Ljava/lang/CharSequence;)Ljj$/util/StringJoiner;
    .registers 3

    const-string v0, "The empty value must not be null"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget-object v0, p0, Ljj$/util/StringJoiner;->elts:[Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object v1, p0, Ljj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Ljj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object v1

    :cond_b
    iget v1, p0, Ljj$/util/StringJoiner;->size:I

    iget-object v2, p0, Ljj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Ljj$/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_28

    invoke-direct {p0}, Ljj$/util/StringJoiner;->compactElts()V

    if-nez v1, :cond_25

    const-string v3, ""

    goto :goto_27

    :cond_25
    aget-object v3, v0, v3

    :goto_27
    return-object v3

    :cond_28
    iget-object v4, p0, Ljj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    iget v5, p0, Ljj$/util/StringJoiner;->len:I

    add-int/2addr v5, v2

    new-array v5, v5, [C

    iget-object v6, p0, Ljj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-static {v6, v5, v3}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v6

    if-lez v1, :cond_50

    aget-object v3, v0, v3

    invoke-static {v3, v5, v6}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v3

    add-int/2addr v6, v3

    const/4 v3, 0x1

    :goto_3f
    if-ge v3, v1, :cond_50

    invoke-static {v4, v5, v6}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v7

    add-int/2addr v6, v7

    aget-object v7, v0, v3

    invoke-static {v7, v5, v6}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_50
    iget-object v3, p0, Ljj$/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Ljj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v3

    add-int/2addr v6, v3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method
