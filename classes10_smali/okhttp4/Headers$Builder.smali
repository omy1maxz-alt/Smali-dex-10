.class public final Lokhttp4/Headers$Builder;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field final namesAndValues:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;
    .registers 3

    invoke-static {p1}, Lokhttp4/Headers;->checkName(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lokhttp4/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    move-result-object p1

    return-object p1
.end method

.method addLenient(Ljava/lang/String;)Lokhttp4/Headers$Builder;
    .registers 6

    const-string v0, ":"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_2a

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    move-result-object p1

    return-object p1

    :cond_2a
    invoke-virtual {p0, v2, p1}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    move-result-object p1

    return-object p1
.end method

.method addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;
    .registers 4

    iget-object v0, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lokhttp4/Headers;
    .registers 2

    new-instance v0, Lokhttp4/Headers;

    invoke-direct {v0, p0}, Lokhttp4/Headers;-><init>(Lokhttp4/Headers$Builder;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    :goto_8
    if-ltz v0, :cond_26

    iget-object v1, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object p1, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_23
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    :cond_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeAll(Ljava/lang/String;)Lokhttp4/Headers$Builder;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    iget-object v1, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lokhttp4/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x2

    :cond_23
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_26
    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;
    .registers 3

    invoke-static {p1}, Lokhttp4/Headers;->checkName(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lokhttp4/Headers;->checkValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp4/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp4/Headers$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp4/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lokhttp4/Headers$Builder;

    return-object p0
.end method
