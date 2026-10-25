.class public final Ljj$/libcore/content/type/MimeMap$Builder;
.super Ljava/lang/Object;
.source "MimeMap.java"


# instance fields
.field private final extToMime:Ljava/util/Map;

.field private final mimeToExt:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    return-void
.end method

.method private static maybePut(Ljava/util/Map;Ljj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p1, Ljj$/libcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Ljj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_d
    iget-object v0, p1, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder;
    .registers 4

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addMimeMapping(Ljava/lang/String;Ljava/util/List;)Ljj$/libcore/content/type/MimeMap$Builder;
    .registers 10

    invoke-static {p1}, Ljj$/libcore/content/type/MimeMap$Builder$Element;->ofMimeSpec(Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder$Element;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object p0

    :cond_b
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljj$/libcore/content/type/MimeMap$Builder$Element;->ofExtensionSpec(Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder$Element;

    move-result-object v1

    iget-object v2, p0, Ljj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    iget-object v3, v1, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Ljj$/libcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Ljj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Ljj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    iget-object v3, v0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Ljj$/libcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Ljj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljj$/libcore/content/type/MimeMap$Builder$Element;->ofExtensionSpec(Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder$Element;

    move-result-object v4

    iget-object v5, p0, Ljj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    iget-object v6, v0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Ljj$/libcore/content/type/MimeMap$Builder;->maybePut(Ljava/util/Map;Ljj$/libcore/content/type/MimeMap$Builder$Element;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_31

    :cond_49
    return-object p0
.end method

.method public build()Ljj$/libcore/content/type/MimeMap;
    .registers 5

    new-instance v0, Ljj$/libcore/content/type/MimeMap;

    iget-object v1, p0, Ljj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    iget-object v2, p0, Ljj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljj$/libcore/content/type/MimeMap;-><init>(Ljava/util/Map;Ljava/util/Map;Ljj$/libcore/content/type/MimeMap-IA;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder;->mimeToExt:Ljava/util/Map;

    iget-object v1, p0, Ljj$/libcore/content/type/MimeMap$Builder;->extToMime:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MimeMap.Builder["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
