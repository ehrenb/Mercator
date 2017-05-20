.class Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;
.super Ljava/lang/Object;
.source "GetAppRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;,
        Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;
    }
.end annotation


# instance fields
.field private meta:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

.field private versions:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;->setAppId(J)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->meta:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    .line 172
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;-><init>()V

    invoke-virtual {v0, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;->setPackageName(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->versions:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    .line 173
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 165
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getMeta()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getMeta()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getVersions()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getVersions()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    move-result-object v3

    if-nez v2, :cond_7

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getMeta()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->meta:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    return-object v0
.end method

.method public getVersions()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->versions:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/16 v1, 0x2b

    .line 165
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getMeta()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getVersions()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setMeta(Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->meta:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    return-void
.end method

.method public setVersions(Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->versions:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetAppRequest.Body.Node(meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getMeta()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Meta;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;->getVersions()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node$Versions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
