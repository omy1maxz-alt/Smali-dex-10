.class final Lorg/mozilla/javascript/SecurityUtilities$2;
.super Ljava/lang/Object;
.source "SecurityUtilities.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2

    iput-object p1, p0, Lorg/mozilla/javascript/SecurityUtilities$2;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/SecurityUtilities$2;->run()Ljava/security/ProtectionDomain;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/security/ProtectionDomain;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/javascript/SecurityUtilities$2;->val$clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    return-object v0
.end method
