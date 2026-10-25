.class public final Lokhttp4/CertificatePinner$Builder;
.super Ljava/lang/Object;
.source "CertificatePinner.java"


# instance fields
.field private final pins:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp4/CertificatePinner$Builder;->pins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lokhttp4/CertificatePinner;
    .registers 4

    new-instance v0, Lokhttp4/CertificatePinner;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lokhttp4/CertificatePinner$Builder;->pins:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp4/CertificatePinner;-><init>(Ljava/util/Set;Lokhttp4/internal/tls/CertificateChainCleaner;)V

    return-object v0
.end method
