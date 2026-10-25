.class public Lcom/gold/extension/shared/oauth2/object/AccessTokenData;
.super Ljava/lang/Object;
.source "AccessTokenData.java"


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final expiresIn:I

.field public final fetchTime:J

.field public final refreshToken:Ljava/lang/String;

.field public final scope:Ljava/lang/String;

.field public final tokenType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->refreshToken:Ljava/lang/String;

    .line 63
    const-string p1, "access_token"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->accessToken:Ljava/lang/String;

    .line 64
    const-string p1, "expires_in"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->expiresIn:I

    .line 65
    const-string p1, "scope"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->scope:Ljava/lang/String;

    .line 66
    const-string p1, "token_type"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->tokenType:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->fetchTime:J

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    const-string v0, "refresh_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .registers 7

    .line 71
    iget v0, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->expiresIn:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->fetchTime:J

    sub-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessToken{accessToken=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', expiresIn=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->expiresIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', scope=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', tokenType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/shared/oauth2/object/AccessTokenData;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
