.class Lorg/mozilla/javascript/tools/idswitch/CodePrinter;
.super Ljava/lang/Object;
.source "CodePrinter.java"


# static fields
.field private static final LITERAL_CHAR_MAX_SIZE:I = 0x6


# instance fields
.field private buffer:[C

.field private indentStep:I

.field private indentTabSize:I

.field private lineTerminator:Ljava/lang/String;

.field private offset:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->lineTerminator:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    return-void
.end method

.method private add_area(I)I
    .registers 3

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->ensure_area(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return v0
.end method

.method private static digit_to_hex_letter(I)C
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_7

    add-int/lit8 p0, p0, 0x30

    goto :goto_9

    :cond_7
    add-int/lit8 p0, p0, 0x37

    :goto_9
    int-to-char p0, p0

    return p0
.end method

.method private ensure_area(I)I
    .registers 5

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    array-length v2, v1

    if-le p1, v2, :cond_17

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_e

    goto :goto_f

    :cond_e
    move p1, v2

    :goto_f
    new-array p1, p1, [C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    :cond_17
    return v0
.end method

.method private put_string_literal_char(IIZ)I
    .registers 6

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-eq p2, v0, :cond_26

    const/16 v0, 0xd

    if-eq p2, v0, :cond_23

    const/16 v0, 0x22

    if-eq p2, v0, :cond_29

    const/16 v0, 0x27

    if-eq p2, v0, :cond_20

    packed-switch p2, :pswitch_data_8a

    const/4 p3, 0x0

    goto :goto_29

    :pswitch_16  #0xa
    const/16 p2, 0x6e

    goto :goto_1e

    :pswitch_19  #0x9
    const/16 p2, 0x74

    goto :goto_1e

    :pswitch_1c  #0x8
    const/16 p2, 0x62

    :goto_1e
    const/4 p3, 0x1

    goto :goto_29

    :cond_20
    xor-int/lit8 p3, p3, 0x1

    goto :goto_29

    :cond_23
    const/16 p2, 0x72

    goto :goto_1e

    :cond_26
    const/16 p2, 0x66

    goto :goto_1e

    :cond_29
    :goto_29
    const/16 v0, 0x5c

    if-eqz p3, :cond_39

    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v0, p3, p1

    add-int/lit8 v0, p1, 0x1

    int-to-char p2, p2

    aput-char p2, p3, v0

    add-int/lit8 p1, p1, 0x2

    goto :goto_88

    :cond_39
    const/16 p3, 0x20

    if-gt p3, p2, :cond_48

    const/16 p3, 0x7e

    if-gt p2, p3, :cond_48

    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    int-to-char p2, p2

    aput-char p2, p3, p1

    add-int/2addr p1, v1

    goto :goto_88

    :cond_48
    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v0, p3, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x75

    aput-char v1, p3, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result v1

    aput-char v1, p3, v0

    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v0, p1, 0x3

    shr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result v1

    aput-char v1, p3, v0

    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v0, p1, 0x4

    shr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result v1

    aput-char v1, p3, v0

    iget-object p3, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v0, p1, 0x5

    and-int/lit8 p2, p2, 0xf

    invoke-static {p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->digit_to_hex_letter(I)C

    move-result p2

    aput-char p2, p3, v0

    add-int/lit8 p1, p1, 0x6

    :goto_88
    return p1

    nop

    :pswitch_data_8a
    .packed-switch 0x8
        :pswitch_1c  #00000008
        :pswitch_19  #00000009
        :pswitch_16  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public erase(II)V
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    iget v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public getIndentStep()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    return v0
.end method

.method public getIndentTabSize()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    return v0
.end method

.method public getLastChar()I
    .registers 3

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_c

    :cond_6
    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v0, v1, v0

    :goto_c
    return v0
.end method

.method public getLineTerminator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->lineTerminator:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .registers 2

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return v0
.end method

.method public indent(I)V
    .registers 6

    iget v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    mul-int v0, v0, p1

    iget p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    if-gtz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_f

    :cond_a
    div-int v1, v0, p1

    rem-int/2addr v0, p1

    add-int/2addr v0, v1

    move p1, v1

    :goto_f
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v0, v1

    :goto_15
    if-eq v1, p1, :cond_20

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/16 v3, 0x9

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_20
    :goto_20
    if-eq v1, v0, :cond_2b

    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/16 v2, 0x20

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2b
    return-void
.end method

.method public line(ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indent(I)V

    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->nl()V

    return-void
.end method

.method public nl()V
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->getLineTerminator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    return-void
.end method

.method public p(C)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char p1, v1, v0

    return-void
.end method

.method public p(I)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    return-void
.end method

.method public final p([C)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->p([CII)V

    return-void
.end method

.method public p([CII)V
    .registers 6

    sub-int/2addr p3, p2

    invoke-direct {p0, p3}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->add_area(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public qchar(I)V
    .registers 5

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->ensure_area(I)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/16 v2, 0x27

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->put_string_literal_char(IIZ)I

    move-result p1

    iget-object v0, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public qstring(Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x6

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->ensure_area(I)I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    const/16 v3, 0x22

    aput-char v3, v2, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v4, 0x0

    :goto_15
    if-eq v4, v0, :cond_22

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v1, v5, v2}, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->put_string_literal_char(IIZ)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_22
    iget-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    aput-char v3, p1, v1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    return-void
.end method

.method public setIndentStep(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentStep:I

    return-void
.end method

.method public setIndentTabSize(I)V
    .registers 2

    iput p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->indentTabSize:I

    return-void
.end method

.method public setLineTerminator(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->lineTerminator:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->buffer:[C

    iget v2, p0, Lorg/mozilla/javascript/tools/idswitch/CodePrinter;->offset:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
