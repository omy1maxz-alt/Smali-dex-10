.class public final synthetic Lcom/gold/extension/shared/patches/NetworkProxyPatch$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2

    .line 0
    invoke-static {p1}, Lcom/gold/extension/shared/patches/NetworkProxyPatch;->$r8$lambda$WhmTfIYg2ff_5HuRJwXfWSlR4LE(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method
