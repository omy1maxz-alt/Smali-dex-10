.class public interface abstract Lokhttp4/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final NONE:Lokhttp4/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp4/Authenticator$1;

    invoke-direct {v0}, Lokhttp4/Authenticator$1;-><init>()V

    sput-object v0, Lokhttp4/Authenticator;->NONE:Lokhttp4/Authenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lokhttp4/Route;Lokhttp4/Response;)Lokhttp4/Request;
.end method
