.class Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# instance fields
.field protected c0:C

.field protected child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected key:Ljava/lang/String;

.field protected sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

.field protected value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iput-object p3, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const v0, 0xffff

    iput-char v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    :goto_1e
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;Ljj$/time/format/DateTimeFormatterBuilder-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method

.method private add0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    invoke-virtual {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixLength(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_43

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_40

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    :goto_1f
    if-eqz v5, :cond_35

    iget-char v6, v5, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-direct {v5, v1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_32
    iget-object v5, v5, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    goto :goto_1f

    :cond_35
    invoke-virtual {p0, v1, p2, v4}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v4, v2, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    return v3

    :cond_40
    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return v3

    :cond_43
    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p0, v1, v5, v6}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iput-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6e

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v4}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newNode(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v2

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v2, v5, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iput-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    goto :goto_70

    :cond_6e
    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    :goto_70
    return v3
.end method

.method public static newTree(Ljava/util/Set;Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5

    invoke-static {p1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->newTree(Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2, v2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :cond_18
    return-object v0
.end method

.method public static newTree(Ljj$/time/format/DateTimeParseContext;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 4

    invoke-virtual {p0}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, v1, v2, v2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0

    :cond_f
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, v1, v2, v2, v2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;Ljj$/time/format/DateTimeFormatterBuilder-IA;)V

    return-object v0
.end method

.method private prefixLength(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-nez v1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->add0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public copyTree()Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_16

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_16
    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v1, :cond_22

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->copyTree()Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    move-result-object v1

    iput-object v1, v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_22
    return-object v0
.end method

.method protected isEqual(CC)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public match(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v0, :cond_32

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    move p2, v0

    if-eq v0, p3, :cond_32

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_18
    iget-char v1, v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2b

    return-object v1

    :cond_2b
    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2

    :cond_2e
    iget-object v0, v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-nez v0, :cond_18

    :cond_32
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->prefixOf(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x0

    return-object v2

    :cond_10
    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v2, :cond_39

    if-eq v0, v1, :cond_39

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->child:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    :cond_1f
    iget-char v3, v2, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v2, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    return-object v3

    :cond_35
    iget-object v2, v2, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-nez v2, :cond_1f

    :cond_39
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->value:Ljava/lang/String;

    return-object v2
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;

    invoke-direct {v0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .registers 9

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_e
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1a

    return v2

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_38

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->key:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;->isEqual(CC)Z

    move-result p2

    if-nez p2, :cond_34

    return v2

    :cond_34
    move p2, v1

    move v0, v3

    move v1, v4

    goto :goto_1b

    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
