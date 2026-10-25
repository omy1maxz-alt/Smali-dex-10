.class public Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formListedTags:[Ljava/lang/String;

.field private static final formSubmitTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final preserveWhitespaceTags:[Ljava/lang/String;

.field private static final tags:Ljava/util/Map;


# instance fields
.field private empty:Z

.field private formList:Z

.field private formSubmit:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private normalName:Ljava/lang/String;

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 71

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    const-string v1, "html"

    const-string v2, "head"

    const-string v3, "body"

    const-string v4, "frameset"

    const-string v5, "script"

    const-string v6, "noscript"

    const-string/jumbo v7, "style"

    const-string v8, "meta"

    const-string v9, "link"

    const-string/jumbo v10, "title"

    const-string v11, "frame"

    const-string v12, "noframes"

    const-string v13, "section"

    const-string v14, "nav"

    const-string v15, "aside"

    const-string v16, "hgroup"

    const-string v17, "header"

    const-string v18, "footer"

    const-string v19, "p"

    const-string v20, "h1"

    const-string v21, "h2"

    const-string v22, "h3"

    const-string v23, "h4"

    const-string v24, "h5"

    const-string v25, "h6"

    const-string/jumbo v26, "ul"

    const-string v27, "ol"

    const-string v28, "pre"

    const-string v29, "div"

    const-string v30, "blockquote"

    const-string v31, "hr"

    const-string v32, "address"

    const-string v33, "figure"

    const-string v34, "figcaption"

    const-string v35, "form"

    const-string v36, "fieldset"

    const-string v37, "ins"

    const-string v38, "del"

    const-string v39, "dl"

    const-string v40, "dt"

    const-string v41, "dd"

    const-string v42, "li"

    const-string/jumbo v43, "table"

    const-string v44, "caption"

    const-string/jumbo v45, "thead"

    const-string/jumbo v46, "tfoot"

    const-string/jumbo v47, "tbody"

    const-string v48, "colgroup"

    const-string v49, "col"

    const-string/jumbo v50, "tr"

    const-string/jumbo v51, "th"

    const-string/jumbo v52, "td"

    const-string/jumbo v53, "video"

    const-string v54, "audio"

    const-string v55, "canvas"

    const-string v56, "details"

    const-string v57, "menu"

    const-string v58, "plaintext"

    const-string/jumbo v59, "template"

    const-string v60, "article"

    const-string v61, "main"

    const-string/jumbo v62, "svg"

    const-string v63, "math"

    const-string v64, "center"

    const-string/jumbo v65, "template"

    const-string v66, "dir"

    const-string v67, "applet"

    const-string v68, "marquee"

    const-string v69, "listing"

    filled-new-array/range {v1 .. v69}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    const-string v1, "object"

    const-string v2, "base"

    const-string v3, "font"

    const-string/jumbo v4, "tt"

    const-string v5, "i"

    const-string v6, "b"

    const-string/jumbo v7, "u"

    const-string v8, "big"

    const-string/jumbo v9, "small"

    const-string v10, "em"

    const-string/jumbo v11, "strong"

    const-string v12, "dfn"

    const-string v13, "code"

    const-string v14, "samp"

    const-string v15, "kbd"

    const-string/jumbo v16, "var"

    const-string v17, "cite"

    const-string v18, "abbr"

    const-string/jumbo v19, "time"

    const-string v20, "acronym"

    const-string v21, "mark"

    const-string v22, "ruby"

    const-string v23, "rt"

    const-string v24, "rp"

    const-string v25, "rtc"

    const-string v26, "a"

    const-string v27, "img"

    const-string v28, "br"

    const-string/jumbo v29, "wbr"

    const-string v30, "map"

    const-string v31, "q"

    const-string/jumbo v32, "sub"

    const-string/jumbo v33, "sup"

    const-string v34, "bdo"

    const-string v35, "iframe"

    const-string v36, "embed"

    const-string/jumbo v37, "span"

    const-string v38, "input"

    const-string v39, "select"

    const-string/jumbo v40, "textarea"

    const-string v41, "label"

    const-string v42, "button"

    const-string v43, "optgroup"

    const-string v44, "option"

    const-string v45, "legend"

    const-string v46, "datalist"

    const-string v47, "keygen"

    const-string v48, "output"

    const-string v49, "progress"

    const-string v50, "meter"

    const-string v51, "area"

    const-string v52, "param"

    const-string/jumbo v53, "source"

    const-string/jumbo v54, "track"

    const-string/jumbo v55, "summary"

    const-string v56, "command"

    const-string v57, "device"

    const-string v58, "area"

    const-string v59, "basefont"

    const-string v60, "bgsound"

    const-string v61, "menuitem"

    const-string v62, "param"

    const-string/jumbo v63, "source"

    const-string/jumbo v64, "track"

    const-string v65, "data"

    const-string v66, "bdi"

    const-string v67, "s"

    const-string/jumbo v68, "strike"

    const-string v69, "nobr"

    const-string v70, "rb"

    filled-new-array/range {v1 .. v70}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    const-string v2, "meta"

    const-string v3, "link"

    const-string v4, "base"

    const-string v5, "frame"

    const-string v6, "img"

    const-string v7, "br"

    const-string/jumbo v8, "wbr"

    const-string v9, "embed"

    const-string v10, "hr"

    const-string v11, "input"

    const-string v12, "keygen"

    const-string v13, "col"

    const-string v14, "command"

    const-string v15, "device"

    const-string v16, "area"

    const-string v17, "basefont"

    const-string v18, "bgsound"

    const-string v19, "menuitem"

    const-string v20, "param"

    const-string/jumbo v21, "source"

    const-string/jumbo v22, "track"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    const-string/jumbo v2, "title"

    const-string v3, "a"

    const-string v4, "p"

    const-string v5, "h1"

    const-string v6, "h2"

    const-string v7, "h3"

    const-string v8, "h4"

    const-string v9, "h5"

    const-string v10, "h6"

    const-string v11, "pre"

    const-string v12, "address"

    const-string v13, "li"

    const-string/jumbo v14, "th"

    const-string/jumbo v15, "td"

    const-string v16, "script"

    const-string/jumbo v17, "style"

    const-string v18, "ins"

    const-string v19, "del"

    const-string v20, "s"

    filled-new-array/range {v2 .. v20}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    const-string v1, "pre"

    const-string v2, "plaintext"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "textarea"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    const-string v5, "button"

    const-string v6, "fieldset"

    const-string v7, "input"

    const-string v8, "keygen"

    const-string v9, "object"

    const-string v10, "output"

    const-string v11, "select"

    const-string/jumbo v12, "textarea"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    const-string v1, "object"

    const-string v2, "select"

    const-string v3, "input"

    const-string v5, "keygen"

    filled-new-array {v3, v5, v1, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1e3
    if-ge v3, v1, :cond_1f2

    aget-object v4, v0, v3

    new-instance v5, Lorg/jsoup/parser/Tag;

    invoke-direct {v5, v4}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e3

    :cond_1f2
    sget-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1f6
    if-ge v3, v1, :cond_209

    aget-object v4, v0, v3

    new-instance v5, Lorg/jsoup/parser/Tag;

    invoke-direct {v5, v4}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->isBlock:Z

    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    invoke-static {v5}, Lorg/jsoup/parser/Tag;->register(Lorg/jsoup/parser/Tag;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f6

    :cond_209
    sget-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_20d
    const/4 v4, 0x1

    if-ge v3, v1, :cond_222

    aget-object v5, v0, v3

    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-boolean v4, v5, Lorg/jsoup/parser/Tag;->empty:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_20d

    :cond_222
    sget-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_226
    if-ge v3, v1, :cond_23a

    aget-object v5, v0, v3

    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-boolean v2, v5, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_226

    :cond_23a
    sget-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_23e
    if-ge v3, v1, :cond_252

    aget-object v5, v0, v3

    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-boolean v4, v5, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_23e

    :cond_252
    sget-object v0, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_256
    if-ge v3, v1, :cond_26a

    aget-object v5, v0, v3

    sget-object v6, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/parser/Tag;

    invoke-static {v5}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-boolean v4, v5, Lorg/jsoup/parser/Tag;->formList:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_256

    :cond_26a
    sget-object v0, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    array-length v1, v0

    :goto_26d
    if-ge v2, v1, :cond_281

    aget-object v3, v0, v2

    sget-object v5, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/parser/Tag;

    invoke-static {v3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-boolean v4, v3, Lorg/jsoup/parser/Tag;->formSubmit:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_26d

    :cond_281
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    iput-object p1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method public static isKnownTag(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static register(Lorg/jsoup/parser/Tag;)V
    .registers 3

    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .registers 2

    sget-object v0, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p0, v0}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .registers 4

    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/parser/Tag;

    if-nez v1, :cond_3d

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    if-nez v0, :cond_29

    new-instance v1, Lorg/jsoup/parser/Tag;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lorg/jsoup/parser/Tag;->isBlock:Z

    goto :goto_3d

    :cond_29
    invoke-virtual {p1}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v1

    iput-object p0, v1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    goto :goto_3d

    :cond_3c
    move-object v1, v0

    :cond_3d
    :goto_3d
    return-object v1
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/jsoup/parser/Tag;
    .registers 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/jsoup/parser/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/jsoup/parser/Tag;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->empty:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->isBlock:Z

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eq v1, v3, :cond_33

    return v2

    :cond_33
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eq v1, v3, :cond_3a

    return v2

    :cond_3a
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    iget-boolean v3, p1, Lorg/jsoup/parser/Tag;->formList:Z

    if-eq v1, v3, :cond_41

    return v2

    :cond_41
    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    iget-boolean p1, p1, Lorg/jsoup/parser/Tag;->formSubmit:Z

    if-ne v1, p1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    return v0
.end method

.method public formatAsBlock()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->empty:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formList:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isBlock()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return v0
.end method

.method public isFormListed()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return v0
.end method

.method public isInline()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKnownTag()Z
    .registers 3

    sget-object v0, Lorg/jsoup/parser/Tag;->tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelfClosing()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public normalName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method public preserveWhitespace()Z
    .registers 2

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method setSelfClosing()Lorg/jsoup/parser/Tag;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
