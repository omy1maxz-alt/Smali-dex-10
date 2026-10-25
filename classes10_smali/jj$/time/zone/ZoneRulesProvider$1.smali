.class Ljj$/time/zone/ZoneRulesProvider$1;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic val$loaded:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Ljj$/time/zone/ZoneRulesProvider$1;->val$loaded:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    const-string v0, "java.time.zone.DefaultZoneRulesProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_8
    const-class v1, Ljj$/time/zone/ZoneRulesProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljj$/time/zone/ZoneRulesProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/zone/ZoneRulesProvider;

    invoke-static {v2}, Ljj$/time/zone/ZoneRulesProvider;->registerProvider(Ljj$/time/zone/ZoneRulesProvider;)V

    iget-object v3, p0, Ljj$/time/zone/ZoneRulesProvider$1;->val$loaded:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_29

    nop

    goto :goto_38

    :catch_29
    move-exception v1

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_30
    new-instance v1, Ljj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;

    invoke-direct {v1}, Ljj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;-><init>()V

    invoke-static {v1}, Ljj$/time/zone/ZoneRulesProvider;->registerProvider(Ljj$/time/zone/ZoneRulesProvider;)V

    :goto_38
    const/4 v1, 0x0

    return-object v1
.end method
