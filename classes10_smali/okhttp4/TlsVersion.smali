.class public final enum Lokhttp4/TlsVersion;
.super Ljava/lang/Enum;
.source "TlsVersion.java"


# static fields
.field private static final synthetic $VALUES:[Lokhttp4/TlsVersion;

.field public static final enum SSL_3_0:Lokhttp4/TlsVersion;

.field public static final enum TLS_1_0:Lokhttp4/TlsVersion;

.field public static final enum TLS_1_1:Lokhttp4/TlsVersion;

.field public static final enum TLS_1_2:Lokhttp4/TlsVersion;

.field public static final enum TLS_1_3:Lokhttp4/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lokhttp4/TlsVersion;

    const-string v1, "TLS_1_3"

    const/4 v2, 0x0

    const-string v3, "TLSv1.3"

    invoke-direct {v0, v1, v2, v3}, Lokhttp4/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp4/TlsVersion;->TLS_1_3:Lokhttp4/TlsVersion;

    new-instance v1, Lokhttp4/TlsVersion;

    const-string v3, "TLS_1_2"

    const/4 v4, 0x1

    const-string v5, "TLSv1.2"

    invoke-direct {v1, v3, v4, v5}, Lokhttp4/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lokhttp4/TlsVersion;->TLS_1_2:Lokhttp4/TlsVersion;

    new-instance v3, Lokhttp4/TlsVersion;

    const-string v5, "TLS_1_1"

    const/4 v6, 0x2

    const-string v7, "TLSv1.1"

    invoke-direct {v3, v5, v6, v7}, Lokhttp4/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lokhttp4/TlsVersion;->TLS_1_1:Lokhttp4/TlsVersion;

    new-instance v5, Lokhttp4/TlsVersion;

    const-string v7, "TLS_1_0"

    const/4 v8, 0x3

    const-string v9, "TLSv1"

    invoke-direct {v5, v7, v8, v9}, Lokhttp4/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lokhttp4/TlsVersion;->TLS_1_0:Lokhttp4/TlsVersion;

    new-instance v7, Lokhttp4/TlsVersion;

    const-string v9, "SSL_3_0"

    const/4 v10, 0x4

    const-string v11, "SSLv3"

    invoke-direct {v7, v9, v10, v11}, Lokhttp4/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lokhttp4/TlsVersion;->SSL_3_0:Lokhttp4/TlsVersion;

    const/4 v9, 0x5

    new-array v9, v9, [Lokhttp4/TlsVersion;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lokhttp4/TlsVersion;->$VALUES:[Lokhttp4/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp4/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lokhttp4/TlsVersion;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6c

    goto :goto_42

    :sswitch_c
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_42

    :cond_15
    const/4 v1, 0x4

    goto :goto_42

    :sswitch_17
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x3

    goto :goto_42

    :sswitch_22
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_42

    :cond_36
    const/4 v1, 0x1

    goto :goto_42

    :sswitch_38
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    packed-switch v1, :pswitch_data_82

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected TLS version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5c  #0x4
    sget-object p0, Lokhttp4/TlsVersion;->TLS_1_0:Lokhttp4/TlsVersion;

    return-object p0

    :pswitch_5f  #0x3
    sget-object p0, Lokhttp4/TlsVersion;->SSL_3_0:Lokhttp4/TlsVersion;

    return-object p0

    :pswitch_62  #0x2
    sget-object p0, Lokhttp4/TlsVersion;->TLS_1_3:Lokhttp4/TlsVersion;

    return-object p0

    :pswitch_65  #0x1
    sget-object p0, Lokhttp4/TlsVersion;->TLS_1_2:Lokhttp4/TlsVersion;

    return-object p0

    :pswitch_68  #0x0
    sget-object p0, Lokhttp4/TlsVersion;->TLS_1_1:Lokhttp4/TlsVersion;

    return-object p0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_38
        -0x1dfc3f26 -> :sswitch_2d
        -0x1dfc3f25 -> :sswitch_22
        0x4b88569 -> :sswitch_17
        0x4c38896 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_68  #00000000
        :pswitch_65  #00000001
        :pswitch_62  #00000002
        :pswitch_5f  #00000003
        :pswitch_5c  #00000004
    .end packed-switch
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    invoke-static {v3}, Lokhttp4/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp4/TlsVersion;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp4/TlsVersion;
    .registers 2

    const-class v0, Lokhttp4/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp4/TlsVersion;

    return-object p0
.end method

.method public static values()[Lokhttp4/TlsVersion;
    .registers 1

    sget-object v0, Lokhttp4/TlsVersion;->$VALUES:[Lokhttp4/TlsVersion;

    invoke-virtual {v0}, [Lokhttp4/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp4/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp4/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
