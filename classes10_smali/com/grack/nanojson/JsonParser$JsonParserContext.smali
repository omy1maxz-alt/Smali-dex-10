.class public final Lcom/grack/nanojson/JsonParser$JsonParserContext;
.super Ljava/lang/Object;


# instance fields
.field private final clazz:Ljava/lang/Class;

.field private lazyNumbers:Z


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public from(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/InputStream;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/io/Reader;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/grack/nanojson/JsonParser;

    new-instance v1, Lcom/grack/nanojson/JsonTokener;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/grack/nanojson/JsonTokener;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    invoke-direct {v0, v1, p1}, Lcom/grack/nanojson/JsonParser;-><init>(Lcom/grack/nanojson/JsonTokener;Z)V

    iget-object p1, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lcom/grack/nanojson/JsonParser;->parse(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public from(Ljava/net/URL;)Ljava/lang/Object;
    .registers 8

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_11

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonParser$JsonParserContext;->from(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_c
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_11

    :catch_11
    move-exception v0

    move-object p1, v0

    move-object v1, p1

    new-instance v0, Lcom/grack/nanojson/JsonParserException;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "IOException opening URL"

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/grack/nanojson/JsonParserException;-><init>(Ljava/lang/Exception;Ljava/lang/String;III)V

    throw v0
.end method

.method public withLazyNumbers()Lcom/grack/nanojson/JsonParser$JsonParserContext;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/grack/nanojson/JsonParser$JsonParserContext;->lazyNumbers:Z

    return-object p0
.end method
