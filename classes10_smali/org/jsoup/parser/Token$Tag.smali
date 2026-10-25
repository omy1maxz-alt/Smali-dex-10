.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "Token.java"


# instance fields
.field private final attrName:Ljava/lang/StringBuilder;

.field private attrNameS:Ljava/lang/String;

.field private final attrValue:Ljava/lang/StringBuilder;

.field private attrValueS:Ljava/lang/String;

.field attributes:Lorg/jsoup/nodes/Attributes;

.field private hasAttrName:Z

.field private hasAttrValue:Z

.field private hasEmptyAttrValue:Z

.field protected normalName:Ljava/lang/String;

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$1;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttrName()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method private ensureAttrValue()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    :cond_f
    return-void
.end method


# virtual methods
.method final appendAttributeName(C)V
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrName()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_16

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    return-void
.end method

.method final appendAttributeValue(C)V
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_e

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    return-void
.end method

.method final appendAttributeValue([I)V
    .registers 6

    invoke-direct {p0}, Lorg/jsoup/parser/Token$Tag;->ensureAttrValue()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    aget v2, p1, v1

    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method final appendTagName(C)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_11
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method final finaliseTag()V
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_7
    return-void
.end method

.method final hasAttribute(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method final hasAttributes()Z
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final isSelfClosing()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method final name(Ljava/lang/String;)Lorg/jsoup/parser/Token$Tag;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method final newAttribute()V
    .registers 5

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    if-nez v0, :cond_b

    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    :cond_b
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->size()I

    move-result v0

    const/16 v2, 0x200

    if-ge v0, v2, :cond_58

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_29
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    :goto_2b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_58

    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_48

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_53

    :cond_48
    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    goto :goto_53

    :cond_4b
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    if-eqz v2, :cond_52

    const-string v2, ""

    goto :goto_53

    :cond_52
    move-object v2, v1

    :goto_53
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v3, v0, v2}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :cond_58
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    return-void
.end method

.method final normalName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lorg/jsoup/parser/Token$Tag;
    .registers 4

    invoke-super {p0}, Lorg/jsoup/parser/Token;->reset()Lorg/jsoup/parser/Token;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->attrName:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrNameS:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrName:Z

    iget-object v2, p0, Lorg/jsoup/parser/Token$Tag;->attrValue:Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attrValueS:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->hasAttrValue:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->selfClosing:Z

    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->attributes:Lorg/jsoup/nodes/Attributes;

    return-object p0
.end method

.method bridge synthetic reset()Lorg/jsoup/parser/Token;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->reset()Lorg/jsoup/parser/Token$Tag;

    move-result-object v0

    return-object v0
.end method

.method final setEmptyAttributeValue()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->hasEmptyAttrValue:Z

    return-void
.end method

.method final toStringName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "[unset]"

    :goto_7
    return-object v0
.end method
