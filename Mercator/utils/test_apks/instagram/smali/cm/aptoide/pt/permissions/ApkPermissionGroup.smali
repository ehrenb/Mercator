.class public Lcm/aptoide/pt/permissions/ApkPermissionGroup;
.super Ljava/lang/Object;
.source "ApkPermissionGroup.java"


# instance fields
.field private descriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->descriptions:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->name:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->descriptions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 35
    instance-of v0, p1, Lcm/aptoide/pt/permissions/ApkPermissionGroup;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;

    .line 37
    invoke-virtual {v0}, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->descriptions:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    check-cast p1, Lcm/aptoide/pt/permissions/ApkPermissionGroup;

    iget-object v1, p1, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->descriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->descriptions:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->descriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcm/aptoide/pt/permissions/ApkPermissionGroup;->name:Ljava/lang/String;

    .line 47
    return-void
.end method
