.class public final enum Lcom/gold/extension/shared/requests/Route$Method;
.super Ljava/lang/Enum;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/requests/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/requests/Route$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/requests/Route$Method;

.field public static final enum GET:Lcom/gold/extension/shared/requests/Route$Method;

.field public static final enum POST:Lcom/gold/extension/shared/requests/Route$Method;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/requests/Route$Method;
    .registers 2

    .line 62
    sget-object v0, Lcom/gold/extension/shared/requests/Route$Method;->GET:Lcom/gold/extension/shared/requests/Route$Method;

    sget-object v1, Lcom/gold/extension/shared/requests/Route$Method;->POST:Lcom/gold/extension/shared/requests/Route$Method;

    filled-new-array {v0, v1}, [Lcom/gold/extension/shared/requests/Route$Method;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Lcom/gold/extension/shared/requests/Route$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/requests/Route$Method;->GET:Lcom/gold/extension/shared/requests/Route$Method;

    .line 64
    new-instance v0, Lcom/gold/extension/shared/requests/Route$Method;

    const-string v1, "POST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/requests/Route$Method;->POST:Lcom/gold/extension/shared/requests/Route$Method;

    .line 62
    invoke-static {}, Lcom/gold/extension/shared/requests/Route$Method;->$values()[Lcom/gold/extension/shared/requests/Route$Method;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/requests/Route$Method;->$VALUES:[Lcom/gold/extension/shared/requests/Route$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$Method;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 62
    const-class v0, Lcom/gold/extension/shared/requests/Route$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/requests/Route$Method;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/requests/Route$Method;
    .registers 1

    .line 62
    sget-object v0, Lcom/gold/extension/shared/requests/Route$Method;->$VALUES:[Lcom/gold/extension/shared/requests/Route$Method;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/requests/Route$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/requests/Route$Method;

    return-object v0
.end method
