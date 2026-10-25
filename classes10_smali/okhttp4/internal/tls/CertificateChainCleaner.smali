.class public abstract Lokhttp4/internal/tls/CertificateChainCleaner;
.super Ljava/lang/Object;
.source "CertificateChainCleaner.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/CertificateChainCleaner;
    .registers 2

    invoke-static {}, Lokhttp4/internal/platform/Platform;->get()Lokhttp4/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp4/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp4/internal/tls/CertificateChainCleaner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract clean(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
.end method
