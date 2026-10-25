.class Ljj$/libcore/content/type/MimeMap$Builder$Element;
.super Ljava/lang/Object;
.source "MimeMap.java"


# instance fields
.field final keepExisting:Z

.field final mimeOrExt:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljj$/libcore/content/type/MimeMap;->-$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    goto :goto_22

    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->keepExisting:Z

    invoke-static {p1}, Ljj$/libcore/content/type/MimeMap;->-$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    :goto_22
    if-eqz p2, :cond_2a

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v0}, Ljj$/libcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2a
    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap$Builder$Element;->mimeOrExt:Ljava/lang/String;

    invoke-static {v0}, Ljj$/libcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method public static ofExtensionSpec(Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder$Element;
    .registers 3

    new-instance v0, Ljj$/libcore/content/type/MimeMap$Builder$Element;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/libcore/content/type/MimeMap$Builder$Element;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static ofMimeSpec(Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder$Element;
    .registers 3

    new-instance v0, Ljj$/libcore/content/type/MimeMap$Builder$Element;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljj$/libcore/content/type/MimeMap$Builder$Element;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
