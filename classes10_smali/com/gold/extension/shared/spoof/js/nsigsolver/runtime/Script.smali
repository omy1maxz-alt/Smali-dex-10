.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;
.super Ljava/lang/Object;
.source "Script.java"


# instance fields
.field private cachedHash:Ljava/lang/String;

.field private final code:Ljava/lang/String;

.field private final source:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

.field private final type:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

.field private final variant:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->type:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    .line 19
    iput-object p2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->variant:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    .line 20
    iput-object p3, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->source:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    .line 21
    iput-object p4, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->version:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->code:Ljava/lang/String;

    return-object p0
.end method

.method public getHash()Ljava/lang/String;
    .registers 7

    .line 46
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->cachedHash:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 48
    :try_start_4
    const-string v0, "SHA3-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->code:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_35

    aget-byte v4, v0, v3

    .line 52
    const-string v5, "%02x"

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 54
    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->cachedHash:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_3b} :catch_3c

    goto :goto_40

    .line 56
    :catch_3c
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->cachedHash:Ljava/lang/String;

    .line 59
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->cachedHash:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->source:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    return-object p0
.end method

.method public getType()Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->type:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    return-object p0
.end method

.method public getVariant()Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->variant:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->version:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 65
    invoke-virtual {p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_10

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 67
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Script "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->type:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;

    invoke-virtual {v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptType;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->source:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;

    invoke-virtual {v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptSource;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") variant="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->variant:Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;

    invoke-virtual {v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ScriptVariant;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/Script;->code:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " hash="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "...>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
