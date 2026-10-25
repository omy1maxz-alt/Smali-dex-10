.class public final Lcom/gold/extension/shared/StringRef$StringKeyLookup;
.super Lcom/android/tools/r8/RecordTag;
.source "StringRef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/StringRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringKeyLookup"
.end annotation


# instance fields
.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sxqZSY1FyVUb0EyX6fm6J9S70HY(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown string key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->stringMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    instance-of v0, p1, Lcom/gold/extension/shared/StringRef$StringKeyLookup;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/gold/extension/shared/StringRef$StringKeyLookup;

    iget-object p0, p0, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->stringMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->stringMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public varargs getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 20
    iget-object p0, p0, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->stringMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_13

    .line 22
    new-instance p0, Lcom/gold/extension/shared/StringRef$StringKeyLookup$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/StringRef$StringKeyLookup$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p1

    .line 26
    :cond_13
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->stringMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef$StringKeyLookup$$ExternalSyntheticRecord1;->m(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public stringMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->stringMap:Ljava/util/Map;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 14
    invoke-virtual {p0}, Lcom/gold/extension/shared/StringRef$StringKeyLookup;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/gold/extension/shared/StringRef$StringKeyLookup;

    const-string v1, "stringMap"

    invoke-static {p0, v0, v1}, Lcom/gold/extension/shared/StringRef$StringKeyLookup$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
