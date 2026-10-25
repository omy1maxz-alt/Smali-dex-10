.class public final enum Lokhttp4/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# static fields
.field private static final synthetic $VALUES:[Lokhttp4/Protocol;

.field public static final enum H2_PRIOR_KNOWLEDGE:Lokhttp4/Protocol;

.field public static final enum HTTP_1_0:Lokhttp4/Protocol;

.field public static final enum HTTP_1_1:Lokhttp4/Protocol;

.field public static final enum HTTP_2:Lokhttp4/Protocol;

.field public static final enum QUIC:Lokhttp4/Protocol;

.field public static final enum SPDY_3:Lokhttp4/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lokhttp4/Protocol;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lokhttp4/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp4/Protocol;->HTTP_1_0:Lokhttp4/Protocol;

    new-instance v1, Lokhttp4/Protocol;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Lokhttp4/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lokhttp4/Protocol;->HTTP_1_1:Lokhttp4/Protocol;

    new-instance v3, Lokhttp4/Protocol;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string/jumbo v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Lokhttp4/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lokhttp4/Protocol;->SPDY_3:Lokhttp4/Protocol;

    new-instance v5, Lokhttp4/Protocol;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2"

    invoke-direct {v5, v7, v8, v9}, Lokhttp4/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lokhttp4/Protocol;->HTTP_2:Lokhttp4/Protocol;

    new-instance v7, Lokhttp4/Protocol;

    const-string v9, "H2_PRIOR_KNOWLEDGE"

    const/4 v10, 0x4

    const-string v11, "h2_prior_knowledge"

    invoke-direct {v7, v9, v10, v11}, Lokhttp4/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lokhttp4/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp4/Protocol;

    new-instance v9, Lokhttp4/Protocol;

    const-string v11, "QUIC"

    const/4 v12, 0x5

    const-string v13, "quic"

    invoke-direct {v9, v11, v12, v13}, Lokhttp4/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lokhttp4/Protocol;->QUIC:Lokhttp4/Protocol;

    const/4 v11, 0x6

    new-array v11, v11, [Lokhttp4/Protocol;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lokhttp4/Protocol;->$VALUES:[Lokhttp4/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lokhttp4/Protocol;
    .registers 4

    sget-object v0, Lokhttp4/Protocol;->HTTP_1_0:Lokhttp4/Protocol;

    iget-object v1, v0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lokhttp4/Protocol;->HTTP_1_1:Lokhttp4/Protocol;

    iget-object v1, v0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    sget-object v0, Lokhttp4/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp4/Protocol;

    iget-object v1, v0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    :cond_21
    sget-object v0, Lokhttp4/Protocol;->HTTP_2:Lokhttp4/Protocol;

    iget-object v1, v0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    :cond_2c
    sget-object v0, Lokhttp4/Protocol;->SPDY_3:Lokhttp4/Protocol;

    iget-object v1, v0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    return-object v0

    :cond_37
    sget-object v0, Lokhttp4/Protocol;->QUIC:Lokhttp4/Protocol;

    iget-object v1, v0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    return-object v0

    :cond_42
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp4/Protocol;
    .registers 2

    const-class v0, Lokhttp4/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp4/Protocol;

    return-object p0
.end method

.method public static values()[Lokhttp4/Protocol;
    .registers 1

    sget-object v0, Lokhttp4/Protocol;->$VALUES:[Lokhttp4/Protocol;

    invoke-virtual {v0}, [Lokhttp4/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp4/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
