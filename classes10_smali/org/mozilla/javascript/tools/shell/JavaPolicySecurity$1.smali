.class Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;
.super Ljava/lang/Object;
.source "JavaPolicySecurity.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

.field final synthetic val$cx:Lorg/mozilla/javascript/Context;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$scope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .registers 5

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->val$cx:Lorg/mozilla/javascript/Context;

    iput-object p4, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->val$scope:Lorg/mozilla/javascript/Scriptable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->val$filename:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->access$000(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->this$0:Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;

    invoke-static {v1, v0}, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;->access$100(Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity;Ljava/net/URL;)Ljava/security/ProtectionDomain;

    move-result-object v1

    :try_start_e
    iget-object v2, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->val$cx:Lorg/mozilla/javascript/Context;

    iget-object v3, p0, Lorg/mozilla/javascript/tools/shell/JavaPolicySecurity$1;->val$scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/tools/shell/Main;->processFileSecure(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_1b

    const/4 v0, 0x0

    return-object v0

    :catch_1b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
