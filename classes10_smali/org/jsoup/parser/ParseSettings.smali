.class public Lorg/jsoup/parser/ParseSettings;
.super Ljava/lang/Object;
.source "ParseSettings.java"


# static fields
.field public static final htmlDefault:Lorg/jsoup/parser/ParseSettings;

.field public static final preserveCase:Lorg/jsoup/parser/ParseSettings;


# instance fields
.field private final preserveAttributeCase:Z

.field private final preserveTagCase:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(ZZ)V

    sput-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    iput-boolean p2, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    return-void
.end method

.method static normalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public normalizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method normalizeAttributes(Lorg/jsoup/nodes/Attributes;)Lorg/jsoup/nodes/Attributes;
    .registers 3

    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/jsoup/nodes/Attributes;->normalize()V

    :cond_9
    return-object p1
.end method

.method public normalizeTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public preserveAttributeCase()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase:Z

    return v0
.end method

.method public preserveTagCase()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/ParseSettings;->preserveTagCase:Z

    return v0
.end method
