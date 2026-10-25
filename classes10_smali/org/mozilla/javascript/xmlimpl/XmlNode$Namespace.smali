.class Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
.super Ljava/lang/Object;
.source "XmlNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final GLOBAL:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

.field private static final serialVersionUID:J = 0x38896a74952aade2L


# instance fields
.field private prefix:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    invoke-static {v0, v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->GLOBAL:Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->setPrefix(Ljava/lang/String;)V

    return-void
.end method

.method static create(Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .registers 2

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;-><init>()V

    iput-object p0, v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_13

    :cond_f
    const-string p0, ""

    iput-object p0, v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    :cond_13
    return-object v0
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;
    .registers 3

    if-eqz p0, :cond_16

    if-eqz p1, :cond_e

    new-instance v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;

    invoke-direct {v0}, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;-><init>()V

    iput-object p0, v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    iput-object p1, v0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Namespace may not lack a URI"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty string represents default namespace prefix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setPrefix(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method getUri()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    return-object v0
.end method

.method is(Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;)Z
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v1, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    iget-object p1, p1, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method isDefault()Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isEmpty()Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method isGlobal()Z
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isUnspecifiedPrefix()Z
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    const-string v1, "XmlNode.Namespace ["

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/xmlimpl/XmlNode$Namespace;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
