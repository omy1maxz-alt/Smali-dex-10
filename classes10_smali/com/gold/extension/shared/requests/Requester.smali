.class public Lcom/gold/extension/shared/requests/Requester;
.super Ljava/lang/Object;
.source "Requester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;
    }
.end annotation


# static fields
.field private static volatile connectionProvider:Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionFromCompiledRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route$CompiledRoute;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->getCompiledRoute()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 41
    invoke-virtual {p1}, Lcom/gold/extension/shared/requests/Route$CompiledRoute;->getMethod()Lcom/gold/extension/shared/requests/Route$Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; Morphe/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getPatchesReleaseVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static varargs getConnectionFromRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1, p2}, Lcom/gold/extension/shared/requests/Route;->compile([Ljava/lang/String;)Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromCompiledRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route$CompiledRoute;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/requests/Requester;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/gold/extension/shared/requests/Requester;->connectionProvider:Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;

    if-eqz v0, :cond_9

    .line 57
    invoke-interface {v0, p0}, Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0

    .line 60
    :cond_9
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method public static parseErrorString(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_9

    .line 107
    const-string p0, ""

    return-object p0

    .line 109
    :cond_9
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseInputStreamAndClose(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseErrorStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseErrorString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method

.method private static parseInputStreamAndClose(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 68
    :try_start_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :catchall_20
    move-exception p0

    goto :goto_2a

    .line 74
    :cond_22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_20

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object p0

    .line 67
    :goto_2a
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw p0
.end method

.method public static parseJSONArray(Ljava/net/HttpURLConnection;)Lorg/json/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseJSONArrayAndDisconnect(Ljava/net/HttpURLConnection;)Lorg/json/JSONArray;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseJSONArray(Ljava/net/HttpURLConnection;)Lorg/json/JSONArray;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method

.method public static parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseJSONObjectAndDisconnect(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseJSONObject(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method

.method public static parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseInputStreamAndClose(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseStringAndDisconnect(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/gold/extension/shared/requests/Requester;->parseString(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method

.method public static setConnectionProvider(Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;)V
    .registers 1

    .line 28
    sput-object p0, Lcom/gold/extension/shared/requests/Requester;->connectionProvider:Lcom/gold/extension/shared/requests/Requester$ConnectionProvider;

    return-void
.end method
