.class Ljj$/sun/nio/cs/CharsetMapping$3;
.super Ljava/lang/Object;
.source "CharsetMapping.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljj$/sun/nio/cs/CharsetMapping$Entry;

    check-cast p2, Ljj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-virtual {p0, p1, p2}, Ljj$/sun/nio/cs/CharsetMapping$3;->compare(Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljj$/sun/nio/cs/CharsetMapping$Entry;Ljj$/sun/nio/cs/CharsetMapping$Entry;)I
    .registers 5

    iget v0, p1, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    iget v1, p2, Ljj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
