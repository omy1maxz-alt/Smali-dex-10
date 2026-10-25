.class public final Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder;
.super Ljava/lang/Object;
.source "UrlFinder.kt"


# static fields
.field public static final Companion:Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;

.field private static final WEB_URL_WITH_PROTOCOL:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder;->Companion:Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;

    sget-object v0, Lcom/gold/youtube/om7753/util/urlfinder/PatternsCompat;->WEB_URL_WITH_PROTOCOL:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder;->WEB_URL_WITH_PROTOCOL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static final synthetic access$getWEB_URL_WITH_PROTOCOL$cp()Ljava/util/regex/Pattern;
    .registers 1

    sget-object v0, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder;->WEB_URL_WITH_PROTOCOL:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static final firstUrlFromInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder;->Companion:Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;

    invoke-virtual {v0, p0}, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;->firstUrlFromInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
