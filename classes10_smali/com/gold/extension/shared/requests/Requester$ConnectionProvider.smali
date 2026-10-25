.class public interface abstract Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;
.super Ljava/lang/Object;
.source "Requester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/requests/Requester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionProvider"
.end annotation


# virtual methods
.method public abstract openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
