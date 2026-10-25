.class public Ljj$/sun/security/action/PutAllAction;
.super Ljava/lang/Object;
.source "PutAllAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final map:Ljava/util/Map;

.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/sun/security/action/PutAllAction;->provider:Ljava/security/Provider;

    iput-object p2, p0, Ljj$/sun/security/action/PutAllAction;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Ljj$/sun/security/action/PutAllAction;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 3

    iget-object v0, p0, Ljj$/sun/security/action/PutAllAction;->provider:Ljava/security/Provider;

    iget-object v1, p0, Ljj$/sun/security/action/PutAllAction;->map:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method
