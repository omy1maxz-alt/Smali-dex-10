.class public final Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;
.super Ljava/lang/Object;
.source "UrlFinder.kt"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final firstUrlFromInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return-object v1

    :cond_10
    invoke-static {}, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder;->access$getWEB_URL_WITH_PROTOCOL$cp()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    return-object v1
.end method
