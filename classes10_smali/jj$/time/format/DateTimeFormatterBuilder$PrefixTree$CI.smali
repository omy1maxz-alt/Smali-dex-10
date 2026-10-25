.class Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.super Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
.source "DateTimeFormatterBuilder.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;Ljj$/time/format/DateTimeFormatterBuilder-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;Ljj$/time/format/DateTimeFormatterBuilder-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method


# virtual methods
.method protected isEqual(CC)Z
    .registers 4

    invoke-static {p1, p2}, Ljj$/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic newNode(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->newNode(Ljava/lang/String;Ljava/lang/String;Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object p1

    return-object p1
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .registers 9

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, p3, p2

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_2a

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->isEqual(CC)Z

    move-result p2

    if-nez p2, :cond_26

    return v2

    :cond_26
    move p2, v1

    move v0, v3

    move v1, v4

    goto :goto_d

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method
