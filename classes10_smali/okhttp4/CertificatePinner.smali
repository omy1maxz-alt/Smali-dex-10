.class public final Lokhttp4/CertificatePinner;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# static fields
.field public static final DEFAULT:Lokhttp4/CertificatePinner;


# instance fields
.field private final certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

.field private final pins:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lokhttp4/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp4/CertificatePinner$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp4/CertificatePinner$Builder;->build()Lokhttp4/CertificatePinner;

    move-result-object v0

    sput-object v0, Lokhttp4/CertificatePinner;->DEFAULT:Lokhttp4/CertificatePinner;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Lokhttp4/internal/tls/CertificateChainCleaner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp4/CertificatePinner;->pins:Ljava/util/Set;

    iput-object p2, p0, Lokhttp4/CertificatePinner;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    return-void
.end method

.method public static pin(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sha256/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lokhttp4/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokin/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokin/ByteString;->base64()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Certificate pinning requires X509 certificates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static sha1(Ljava/security/cert/X509Certificate;)Lokin/ByteString;
    .registers 1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lokin/ByteString;->of([B)Lokin/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokin/ByteString;->sha1()Lokin/ByteString;

    move-result-object p0

    return-object p0
.end method

.method static sha256(Ljava/security/cert/X509Certificate;)Lokin/ByteString;
    .registers 1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lokin/ByteString;->of([B)Lokin/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokin/ByteString;->sha256()Lokin/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public check(Ljava/lang/String;Ljava/util/List;)V
    .registers 15

    invoke-virtual {p0, p1}, Lokhttp4/CertificatePinner;->findMatchingPins(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lokhttp4/CertificatePinner;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    if-eqz v1, :cond_13

    invoke-virtual {v1, p2, p1}, Lokhttp4/internal/tls/CertificateChainCleaner;->clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :cond_13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_84

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v8, 0x0

    :goto_28
    if-ge v8, v5, :cond_81

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokhttp4/CertificatePinner$Pin;

    iget-object v10, v9, Lokhttp4/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string/jumbo v11, "sha256/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    if-nez v6, :cond_41

    invoke-static {v4}, Lokhttp4/CertificatePinner;->sha256(Ljava/security/cert/X509Certificate;)Lokin/ByteString;

    move-result-object v6

    :cond_41
    iget-object v9, v9, Lokhttp4/CertificatePinner$Pin;->hash:Lokin/ByteString;

    invoke-virtual {v9, v6}, Lokin/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    return-void

    :cond_4a
    iget-object v10, v9, Lokhttp4/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    const-string/jumbo v11, "sha1/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    if-nez v7, :cond_5b

    invoke-static {v4}, Lokhttp4/CertificatePinner;->sha1(Ljava/security/cert/X509Certificate;)Lokin/ByteString;

    move-result-object v7

    :cond_5b
    iget-object v9, v9, Lokhttp4/CertificatePinner$Pin;->hash:Lokin/ByteString;

    invoke-virtual {v9, v7}, Lokin/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_64

    return-void

    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_67
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unsupported hashAlgorithm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Lokhttp4/CertificatePinner$Pin;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Certificate pinning failure!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n  Peer certificate chain:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_98
    const-string v5, "\n    "

    if-ge v4, v3, :cond_bf

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lokhttp4/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_98

    :cond_bf
    const-string p2, "\n  Pinned certificates for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_d0
    if-ge v2, p1, :cond_e1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp4/CertificatePinner$Pin;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d0

    :cond_e1
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    goto :goto_ec

    :goto_eb
    throw p1

    :goto_ec
    goto :goto_eb
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lokhttp4/CertificatePinner;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lokhttp4/CertificatePinner;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    check-cast p1, Lokhttp4/CertificatePinner;

    iget-object v2, p1, Lokhttp4/CertificatePinner;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    invoke-static {v1, v2}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lokhttp4/CertificatePinner;->pins:Ljava/util/Set;

    iget-object p1, p1, Lokhttp4/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method findMatchingPins(Ljava/lang/String;)Ljava/util/List;
    .registers 6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lokhttp4/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp4/CertificatePinner$Pin;

    invoke-virtual {v2, p1}, Lokhttp4/CertificatePinner$Pin;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_2b
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lokhttp4/CertificatePinner;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lokhttp4/CertificatePinner;->pins:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method withCertificateChainCleaner(Lokhttp4/internal/tls/CertificateChainCleaner;)Lokhttp4/CertificatePinner;
    .registers 4

    iget-object v0, p0, Lokhttp4/CertificatePinner;->certificateChainCleaner:Lokhttp4/internal/tls/CertificateChainCleaner;

    invoke-static {v0, p1}, Lokhttp4/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_11

    :cond_a
    new-instance v0, Lokhttp4/CertificatePinner;

    iget-object v1, p0, Lokhttp4/CertificatePinner;->pins:Ljava/util/Set;

    invoke-direct {v0, v1, p1}, Lokhttp4/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp4/internal/tls/CertificateChainCleaner;)V

    :goto_11
    return-object v0
.end method
