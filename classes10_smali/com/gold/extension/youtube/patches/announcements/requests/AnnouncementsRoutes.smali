.class public Lcom/gold/extension/youtube/patches/announcements/requests/AnnouncementsRoutes;
.super Ljava/lang/Object;
.source "AnnouncementsRoutes.java"


# static fields
.field private static final ANNOUNCEMENTS_PROVIDER:Ljava/lang/String; = "https://api.morphi.app/v1"

.field public static final GET_LATEST_ANNOUNCEMENTS:Lcom/gold/extension/shared/requests/Route;

.field public static final GET_LATEST_ANNOUNCEMENT_IDS:Lcom/gold/extension/shared/requests/Route;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 14
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    sget-object v1, Lcom/gold/extension/shared/requests/Route$Method;->GET:Lcom/gold/extension/shared/requests/Route$Method;

    const-string v2, "/announcements/latest/id?tag=\ud83c\udf9e️%20YouTube"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/announcements/requests/AnnouncementsRoutes;->GET_LATEST_ANNOUNCEMENT_IDS:Lcom/gold/extension/shared/requests/Route;

    .line 15
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    const-string v2, "/announcements/latest?tag=\ud83c\udf9e️%20YouTube"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/announcements/requests/AnnouncementsRoutes;->GET_LATEST_ANNOUNCEMENTS:Lcom/gold/extension/shared/requests/Route;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getAnnouncementsConnectionFromRoute(Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    const-string v0, "https://api.morphi.app/v1"

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method
