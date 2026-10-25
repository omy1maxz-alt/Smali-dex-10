.class public Lorg/jsoup/nodes/Document$OutputSettings;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field coreCharset:Lorg/jsoup/nodes/Entities$CoreCharset;

.field private final encoderThreadLocal:Ljava/lang/ThreadLocal;

.field private escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

.field private indentAmount:I

.field private maxPaddingWidth:I

.field private outline:Z

.field private prettyPrint:Z

.field private syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jsoup/nodes/Entities$EscapeMode;->base:Lorg/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    sget-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->encoderThreadLocal:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->outline:Z

    iput v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->maxPaddingWidth:I

    sget-object v0, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    iput-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-void
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public charset(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document$OutputSettings;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_1c

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/lang/String;)Lorg/jsoup/nodes/Document$OutputSettings;

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$EscapeMode;->valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$EscapeMode;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method encoder()Ljava/nio/charset/CharsetEncoder;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->encoderThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_b

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document$OutputSettings;->prepareEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public escapeMode(Lorg/jsoup/nodes/Entities$EscapeMode;)Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object p0
.end method

.method public escapeMode()Lorg/jsoup/nodes/Entities$EscapeMode;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->escapeMode:Lorg/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public indentAmount()I
    .registers 2

    iget v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    return v0
.end method

.method public maxPaddingWidth()I
    .registers 2

    iget v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->maxPaddingWidth:I

    return v0
.end method

.method public outline()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->outline:Z

    return v0
.end method

.method prepareEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 3

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->encoderThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Entities$CoreCharset;->byName(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$CoreCharset;

    move-result-object v1

    iput-object v1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->coreCharset:Lorg/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

.method public prettyPrint(Z)Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    iput-boolean p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    return-object p0
.end method

.method public prettyPrint()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    return v0
.end method

.method public syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object v0
.end method

.method public syntax(Lorg/jsoup/nodes/Document$OutputSettings$Syntax;)Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/nodes/Document$OutputSettings;->syntax:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object p0
.end method
