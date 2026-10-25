.class Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;
.super Ljava/lang/Object;
.source "Resources_cs.java"


# instance fields
.field private final names:Ljava/util/List;

.field private final resourceKeyPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->names:Ljava/util/List;

    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->resourceKeyPrefix:Ljava/lang/String;

    return-void
.end method

.method private addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;
    .registers 9

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->names:Ljava/util/List;

    new-instance v1, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsName;-><init>(ZLjava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method addFutureName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    move-result-object v0

    return-object v0
.end method

.method addPastName(Ljava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->addName(ZLjava/lang/String;J)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;

    move-result-object v0

    return-object v0
.end method

.method build(Ljava/util/ResourceBundle;)Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;
    .registers 5

    new-instance v0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->resourceKeyPrefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormatBuilder;->names:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2}, Lorg/ocpsoft/prettytime/i18n/Resources_cs$CsTimeFormat;-><init>(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/util/Collection;)V

    return-object v0
.end method
