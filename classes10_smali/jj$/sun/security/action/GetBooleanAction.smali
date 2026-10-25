.class public Ljj$/sun/security/action/GetBooleanAction;
.super Ljava/lang/Object;
.source "GetBooleanAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private theProp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/security/action/GetBooleanAction;->theProp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Ljj$/sun/security/action/GetBooleanAction;->theProp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/security/action/GetBooleanAction;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
