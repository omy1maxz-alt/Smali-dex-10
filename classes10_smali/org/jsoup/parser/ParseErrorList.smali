.class public Lorg/jsoup/parser/ParseErrorList;
.super Ljava/util/ArrayList;
.source "ParseErrorList.java"


# instance fields
.field private final initialCapacity:I

.field private final maxSize:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput p1, p0, Lorg/jsoup/parser/ParseErrorList;->initialCapacity:I

    iput p2, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    return-void
.end method

.method public static noTracking()Lorg/jsoup/parser/ParseErrorList;
    .registers 2

    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method canAddError()Z
    .registers 3

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getMaxSize()I
    .registers 2

    iget v0, p0, Lorg/jsoup/parser/ParseErrorList;->maxSize:I

    return v0
.end method
