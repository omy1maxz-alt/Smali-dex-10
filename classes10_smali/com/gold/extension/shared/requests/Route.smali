.class public Lcom/gold/extension/shared/requests/Route;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/requests/Route$Method;,
        Lcom/gold/extension/shared/requests/Route$CompiledRoute;
    }
.end annotation


# instance fields
.field private final method:Lcom/gold/extension/shared/requests/Route$Method;

.field private final paramCount:I

.field private final route:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmethod(Lcom/gold/extension/shared/requests/Route;)Lcom/gold/extension/shared/requests/Route$Method;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/requests/Route;->method:Lcom/gold/extension/shared/requests/Route$Method;

    return-object p0
.end method

.method public constructor <init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/gold/extension/shared/requests/Route;->method:Lcom/gold/extension/shared/requests/Route$Method;

    .line 10
    iput-object p2, p0, Lcom/gold/extension/shared/requests/Route;->route:Ljava/lang/String;

    const/16 p1, 0x7b

    .line 11
    invoke-direct {p0, p2, p1}, Lcom/gold/extension/shared/requests/Route;->countMatches(Ljava/lang/CharSequence;C)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/requests/Route;->paramCount:I

    const/16 v0, 0x7d

    .line 13
    invoke-direct {p0, p2, v0}, Lcom/gold/extension/shared/requests/Route;->countMatches(Ljava/lang/CharSequence;C)I

    move-result p0

    if-ne p1, p0, :cond_18

    return-void

    .line 14
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not enough parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private countMatches(Ljava/lang/CharSequence;C)I
    .registers 6

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v0, p0, :cond_13

    .line 56
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p2, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    return v1
.end method


# virtual methods
.method public varargs compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;
    .registers 7

    .line 22
    array-length v0, p1

    iget v1, p0, Lcom/gold/extension/shared/requests/Route;->paramCount:I

    .line 23
    iget-object v2, p0, Lcom/gold/extension/shared/requests/Route;->route:Ljava/lang/String;

    if-ne v0, v1, :cond_32

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 27
    :goto_d
    iget v2, p0, Lcom/gold/extension/shared/requests/Route;->paramCount:I

    if-ge v1, v2, :cond_27

    .line 28
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 29
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 30
    aget-object v4, p1, v1

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 32
    :cond_27
    new-instance p1, Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/gold/extension/shared/requests/Route$CompiledRoute;-><init>(Lcom/gold/extension/shared/requests/Route;Ljava/lang/String;Lcom/gold/extension/shared/requests/Route-IA;)V

    return-object p1

    .line 23
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/gold/extension/shared/requests/Route;->paramCount:I

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error compiling route ["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], incorrect amount of parameters provided. Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", provided: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMethod()Lcom/gold/extension/shared/requests/Route$Method;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/gold/extension/shared/requests/Route;->method:Lcom/gold/extension/shared/requests/Route$Method;

    return-object p0
.end method
