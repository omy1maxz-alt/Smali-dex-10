.class public Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;
.super Ljava/lang/Object;
.source "BufferAsciiStrings.java"


# instance fields
.field private final bytes:[B

.field private strings:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;->bytes:[B

    return-void
.end method

.method private static findAsciiStrings([B)Ljava/lang/String;
    .registers 12

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    array-length v1, p0

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_d
    if-ge v4, v1, :cond_5d

    .line 47
    aget-byte v7, p0, v4

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-lt v7, v8, :cond_1c

    const/16 v8, 0x7e

    if-gt v7, v8, :cond_1c

    move v7, v9

    goto :goto_1d

    :cond_1c
    move v7, v3

    :goto_1d
    if-ne v4, v2, :cond_21

    move v8, v9

    goto :goto_22

    :cond_21
    move v8, v3

    :goto_22
    if-eqz v7, :cond_26

    if-eqz v8, :cond_5a

    :cond_26
    if-eqz v8, :cond_2c

    if-eqz v7, :cond_2c

    move v7, v9

    goto :goto_2d

    :cond_2c
    move v7, v3

    :goto_2d
    add-int/2addr v7, v4

    sub-int v8, v7, v5

    const/4 v10, 0x4

    if-lt v8, v10, :cond_58

    :goto_33
    const/16 v8, 0xa

    if-ge v5, v7, :cond_4a

    .line 56
    aget-byte v10, p0, v5

    int-to-char v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    const/16 v10, 0xce4

    if-lt v6, v10, :cond_47

    .line 61
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v3

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_4a
    const/16 v5, 0xbb8

    if-lt v6, v5, :cond_52

    .line 68
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v3

    .line 72
    :cond_52
    const-string v5, "❙"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v9

    :cond_58
    add-int/lit8 v5, v4, 0x1

    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 80
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getStrings()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;->strings:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 21
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;->bytes:[B

    invoke-static {v0}, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;->findAsciiStrings([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;->strings:Ljava/lang/String;

    :cond_c
    return-object v0
.end method
