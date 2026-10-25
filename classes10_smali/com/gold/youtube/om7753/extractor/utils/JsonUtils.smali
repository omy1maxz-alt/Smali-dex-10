.class public final Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArray(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;
    .registers 3

    const-class v0, Lcom/grack/nanojson/JsonArray;

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonArray;

    return-object v0
.end method

.method public static getBoolean(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private static getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getValue(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_f
    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong data type at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getJsonData(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 5

    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document;->getElementsByAttribute(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/grack/nanojson/JsonObject;

    return-object v2
.end method

.method public static getNumber(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Number;
    .registers 3

    const-class v0, Ljava/lang/Number;

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public static getObject(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 3

    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;

    return-object v0
.end method

.method private static getObject(Lcom/grack/nanojson/JsonObject;Ljava/util/List;)Lcom/grack/nanojson/JsonObject;
    .registers 5

    move-object v0, p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    goto :goto_5

    :cond_19
    :goto_19
    return-object v0
.end method

.method public static getString(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getStringListFromJsonArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getValue(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getObject(Lcom/grack/nanojson/JsonObject;Ljava/util/List;)Lcom/grack/nanojson/JsonObject;

    move-result-object v1

    const-string v2, "Unable to get "

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/grack/nanojson/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    return-object v3

    :cond_2e
    new-instance v4, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_45
    new-instance v3, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getValues(Lcom/grack/nanojson/JsonArray;Ljava/lang/String;)Ljava/util/List;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/gold/youtube/om7753/extractor/utils/JsonUtils;->getValue(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return-object v0
.end method

.method public static toJsonArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->array()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonArray;
    :try_end_a
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not parse JSON"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lcom/grack/nanojson/JsonParser$JsonParserContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/grack/nanojson/JsonObject;
    :try_end_a
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;

    const-string v2, "Could not parse JSON"

    invoke-direct {v1, v2, v0}, Lcom/gold/youtube/om7753/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
