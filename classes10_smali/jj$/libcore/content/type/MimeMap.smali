.class public final Ljj$/libcore/content/type/MimeMap;
.super Ljava/lang/Object;
.source "MimeMap.java"


# static fields
.field private static volatile instanceSupplier:Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;


# instance fields
.field private final extToMime:Ljava/util/Map;

.field private volatile hashCode:I

.field private final mimeToExt:Ljava/util/Map;


# direct methods
.method static bridge synthetic -$$Nest$smtoLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Ljj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;

    new-instance v1, Ljj$/libcore/content/type/MimeMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljj$/libcore/content/type/MimeMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Ljj$/libcore/content/type/MimeMap;->instanceSupplier:Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljj$/libcore/content/type/MimeMap;->hashCode:I

    invoke-static {p1}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-static {p2}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljj$/libcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljj$/libcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    goto :goto_20

    :cond_3f
    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljj$/libcore/content/type/MimeMap;->checkValidExtension(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljj$/libcore/content/type/MimeMap;->checkValidMimeType(Ljava/lang/String;)V

    goto :goto_49

    :cond_68
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljj$/libcore/content/type/MimeMap-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljj$/libcore/content/type/MimeMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static builder()Ljj$/libcore/content/type/MimeMap$Builder;
    .registers 1

    new-instance v0, Ljj$/libcore/content/type/MimeMap$Builder;

    invoke-direct {v0}, Ljj$/libcore/content/type/MimeMap$Builder;-><init>()V

    return-object v0
.end method

.method static checkValidExtension(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Ljj$/libcore/content/type/MimeMap;->isValidMimeTypeOrExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkValidMimeType(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Ljj$/libcore/content/type/MimeMap;->isValidMimeTypeOrExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid MIME type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefault()Ljj$/libcore/content/type/MimeMap;
    .registers 1

    sget-object v0, Ljj$/libcore/content/type/MimeMap;->instanceSupplier:Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;

    invoke-virtual {v0}, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/libcore/content/type/MimeMap;

    invoke-static {v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/libcore/content/type/MimeMap;

    return-object v0
.end method

.method private static isValidMimeTypeOrExtension(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2c

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2c

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2c

    invoke-static {p0}, Ljj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method static synthetic lambda$static$0()Ljj$/libcore/content/type/MimeMap;
    .registers 3

    invoke-static {}, Ljj$/libcore/content/type/MimeMap;->builder()Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "application/pdf"

    const-string v2, "pdf"

    invoke-virtual {v0, v1, v2}, Ljj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "image/jpeg"

    const-string v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "image/x-ms-bmp"

    const-string v2, "bmp"

    invoke-virtual {v0, v1, v2}, Ljj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "htm"

    const-string v2, "html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v2, v1}, Ljj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "text"

    const-string v2, "txt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v0, v2, v1}, Ljj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/util/List;)Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    const-string v1, "text/x-java"

    const-string v2, "java"

    invoke-virtual {v0, v1, v2}, Ljj$/libcore/content/type/MimeMap$Builder;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)Ljj$/libcore/content/type/MimeMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/libcore/content/type/MimeMap$Builder;->build()Ljj$/libcore/content/type/MimeMap;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultSupplier(Ljava/util/function/Supplier;)V
    .registers 3

    new-instance v0, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;

    invoke-static {p0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    invoke-direct {v0, v1}, Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Ljj$/libcore/content/type/MimeMap;->instanceSupplier:Ljj$/libcore/content/type/MimeMap$MemoizingSupplier;

    return-void
.end method

.method private static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildUpon()Ljj$/libcore/content/type/MimeMap$Builder;
    .registers 4

    new-instance v0, Ljj$/libcore/content/type/MimeMap$Builder;

    iget-object v1, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    iget-object v2, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Ljj$/libcore/content/type/MimeMap$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljj$/libcore/content/type/MimeMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Ljj$/libcore/content/type/MimeMap;

    invoke-virtual {p0}, Ljj$/libcore/content/type/MimeMap;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Ljj$/libcore/content/type/MimeMap;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_14

    return v1

    :cond_14
    iget-object v2, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    iget-object v3, v0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    iget-object v3, v0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public extensions()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-static {p1}, Ljj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-static {p1}, Ljj$/libcore/content/type/MimeMap;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final hasExtension(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/libcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final hasMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljj$/libcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Ljj$/libcore/content/type/MimeMap;->hashCode:I

    if-nez v0, :cond_15

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iput v0, p0, Ljj$/libcore/content/type/MimeMap;->hashCode:I

    :cond_15
    iget v0, p0, Ljj$/libcore/content/type/MimeMap;->hashCode:I

    return v0
.end method

.method public mimeTypes()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/libcore/content/type/MimeMap;->mimeToExt:Ljava/util/Map;

    iget-object v1, p0, Ljj$/libcore/content/type/MimeMap;->extToMime:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MimeMap["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
