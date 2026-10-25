.class public Ljj$/sun/security/action/GetLongAction;
.super Ljava/lang/Object;
.source "GetLongAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private defaultSet:Z

.field private defaultVal:J

.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/security/action/GetLongAction;->defaultSet:Z

    iput-object p1, p0, Ljj$/sun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/security/action/GetLongAction;->defaultSet:Z

    iput-object p1, p0, Ljj$/sun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    iput-wide p2, p0, Ljj$/sun/security/action/GetLongAction;->defaultVal:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljj$/sun/security/action/GetLongAction;->defaultSet:Z

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Long;
    .registers 4

    iget-object v0, p0, Ljj$/sun/security/action/GetLongAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    iget-boolean v1, p0, Ljj$/sun/security/action/GetLongAction;->defaultSet:Z

    if-eqz v1, :cond_13

    iget-wide v1, p0, Ljj$/sun/security/action/GetLongAction;->defaultVal:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    :cond_13
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/security/action/GetLongAction;->run()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
