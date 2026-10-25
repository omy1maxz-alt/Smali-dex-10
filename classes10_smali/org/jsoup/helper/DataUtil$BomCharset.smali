.class Lorg/jsoup/helper/DataUtil$BomCharset;
.super Ljava/lang/Object;
.source "DataUtil.java"


# instance fields
.field private final charset:Ljava/lang/String;

.field private final offset:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->charset:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->offset:Z

    return-void
.end method

.method static synthetic access$000(Lorg/jsoup/helper/DataUtil$BomCharset;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->charset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/jsoup/helper/DataUtil$BomCharset;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/jsoup/helper/DataUtil$BomCharset;->offset:Z

    return p0
.end method
