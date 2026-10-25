.class final Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;
.super Lcom/android/tools/r8/RecordTag;
.source "LithoFilterPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/components/LithoFilterPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LithoFilterParameters"
.end annotation


# instance fields
.field private final accessibility:Ljava/lang/String;

.field private final asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

.field private final buffer:[B

.field private final contextInterface:Lcom/gold/extension/shared/patches/components/ContextInterface;

.field private final identifier:Ljava/lang/String;

.field private final path:Ljava/lang/String;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;

    if-eqz v0, :cond_44

    check-cast p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;

    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->contextInterface:Lcom/gold/extension/shared/patches/components/ContextInterface;

    iget-object v1, p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->contextInterface:Lcom/gold/extension/shared/patches/components/ContextInterface;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    iget-object v1, p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    iget-object v1, p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    iget-object v1, p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->buffer:[B

    iget-object v1, p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->buffer:[B

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    iget-object p1, p1, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x1

    return p0

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetaccessibility(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetasciiStrings(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbuffer(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->buffer:[B

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetcontextInterface(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Lcom/gold/extension/shared/patches/components/ContextInterface;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->contextInterface:Lcom/gold/extension/shared/patches/components/ContextInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetidentifier(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpath(Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contextInterface",
            "identifier",
            "path",
            "accessibility",
            "buffer",
            "asciiStrings"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->contextInterface:Lcom/gold/extension/shared/patches/components/ContextInterface;

    iput-object p2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    iput-object p4, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    iput-object p5, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->buffer:[B

    iput-object p6, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;Lcom/gold/extension/shared/patches/components/LithoFilterPatch-IA;)V
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;-><init>(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/gold/extension/shared/patches/components/BufferAsciiStrings;)V

    return-void
.end method


# virtual methods
.method public accessibility()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    return-object p0
.end method

.method public asciiStrings()Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    return-object p0
.end method

.method public buffer()[B
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->buffer:[B

    return-object p0
.end method

.method public contextInterface()Lcom/gold/extension/shared/patches/components/ContextInterface;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->contextInterface:Lcom/gold/extension/shared/patches/components/ContextInterface;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 7

    .line 32
    iget-object v0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->contextInterface:Lcom/gold/extension/shared/patches/components/ContextInterface;

    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    iget-object v4, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->buffer:[B

    iget-object v5, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    invoke-static/range {v0 .. v5}, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public identifier()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public path()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->buffer:[B

    array-length v2, v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 47
    const-string v1, " Accessibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->accessibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_39
    const-string v1, " Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v1, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->DEBUG_PROTOBUFFER:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 53
    const-string v1, " BufferStrings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object p0, p0, Lcom/gold/extension/shared/patches/components/LithoFilterPatch$LithoFilterParameters;->asciiStrings:Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;

    invoke-virtual {p0}, Lcom/gold/extension/shared/patches/components/BufferAsciiStrings;->getStrings()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
