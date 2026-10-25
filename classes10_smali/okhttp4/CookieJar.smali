.class public interface abstract Lokhttp4/CookieJar;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final NO_COOKIES:Lokhttp4/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp4/CookieJar$1;

    invoke-direct {v0}, Lokhttp4/CookieJar$1;-><init>()V

    sput-object v0, Lokhttp4/CookieJar;->NO_COOKIES:Lokhttp4/CookieJar;

    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Lokhttp4/HttpUrl;)Ljava/util/List;
.end method

.method public abstract saveFromResponse(Lokhttp4/HttpUrl;Ljava/util/List;)V
.end method
