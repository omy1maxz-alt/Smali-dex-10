.class Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;
.super Ljava/lang/Object;
.source "JavaPolicySecurity.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

.field final synthetic val$domain:Ljava/security/ProtectionDomain;

.field final synthetic val$parentLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V
    .registers 4

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;->this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;->val$parentLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;->val$domain:Ljava/security/ProtectionDomain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;->run()Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$Loader;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$Loader;
    .registers 4

    new-instance v0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$Loader;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;->val$parentLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$2;->val$domain:Ljava/security/ProtectionDomain;

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$Loader;-><init>(Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)V

    return-object v0
.end method
