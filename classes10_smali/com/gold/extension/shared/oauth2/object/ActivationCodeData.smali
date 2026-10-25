.class public Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;
.super Ljava/lang/Object;
.source "ActivationCodeData.java"


# instance fields
.field public final deviceCode:Ljava/lang/String;

.field public final expiresIn:I

.field public final fetchTime:J

.field public final interval:I

.field public final userCode:Ljava/lang/String;

.field public final verificationUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "device_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->deviceCode:Ljava/lang/String;

    .line 55
    const-string v0, "user_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->userCode:Ljava/lang/String;

    .line 56
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->expiresIn:I

    .line 57
    const-string v0, "interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->interval:I

    .line 58
    const-string v0, "verification_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->verificationUrl:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->fetchTime:J

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .registers 7

    .line 63
    iget v0, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->expiresIn:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->fetchTime:J

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

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivationCodeData{deviceCode=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->deviceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', userCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->userCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->expiresIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->interval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", verificationUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/gold/extension/shared/oauth2/object/ActivationCodeData;->verificationUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
