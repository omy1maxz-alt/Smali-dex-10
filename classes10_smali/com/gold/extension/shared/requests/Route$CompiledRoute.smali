.class public Lcom/gold/extension/shared/requests/Route$CompiledRoute;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/requests/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompiledRoute"
.end annotation


# instance fields
.field private final baseRoute:Lcom/gold/extension/shared/requests/Route;

.field private final compiledRoute:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/gold/extension/shared/requests/Route;Ljava/lang/String;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->baseRoute:Lcom/gold/extension/shared/requests/Route;

    .line 41
    iput-object p2, p0, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->compiledRoute:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/requests/Route;Ljava/lang/String;Lcom/gold/extension/shared/requests/Route-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/requests/Route$CompiledRoute;-><init>(Lcom/gold/extension/shared/requests/Route;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCompiledRoute()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->compiledRoute:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Lcom/gold/extension/shared/requests/Route$Method;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->baseRoute:Lcom/gold/extension/shared/requests/Route;

    invoke-static {p0}, Lcom/gold/extension/shared/requests/Route;->-$$Nest$fgetmethod(Lcom/gold/extension/shared/requests/Route;)Lcom/gold/extension/shared/requests/Route$Method;

    move-result-object p0

    return-object p0
.end method
