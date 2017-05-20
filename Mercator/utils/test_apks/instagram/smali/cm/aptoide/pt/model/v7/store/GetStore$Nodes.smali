.class public Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;
.super Ljava/lang/Object;
.source "GetStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/model/v7/store/GetStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nodes"
.end annotation


# instance fields
.field private meta:Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

.field private tabs:Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

.field private widgets:Lcm/aptoide/pt/model/v7/GetStoreWidgets;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 20
    instance-of v0, p1, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;

    invoke-virtual {p1, p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->canEqual(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getTabs()Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getTabs()Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    move-result-object v3

    if-nez v2, :cond_8

    if-eqz v3, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getWidgets()Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    move-result-object v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getWidgets()Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    move-result-object v3

    if-nez v2, :cond_a

    if-eqz v3, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1
.end method

.method public getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->meta:Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    return-object v0
.end method

.method public getTabs()Lcm/aptoide/pt/model/v7/store/GetStoreTabs;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->tabs:Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    return-object v0
.end method

.method public getWidgets()Lcm/aptoide/pt/model/v7/GetStoreWidgets;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->widgets:Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 20
    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getTabs()Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getWidgets()Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public setMeta(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->meta:Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    return-void
.end method

.method public setTabs(Lcm/aptoide/pt/model/v7/store/GetStoreTabs;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->tabs:Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    return-void
.end method

.method public setWidgets(Lcm/aptoide/pt/model/v7/GetStoreWidgets;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->widgets:Lcm/aptoide/pt/model/v7/GetStoreWidgets;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetStore.Nodes(meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tabs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getTabs()Lcm/aptoide/pt/model/v7/store/GetStoreTabs;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widgets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/store/GetStore$Nodes;->getWidgets()Lcm/aptoide/pt/model/v7/GetStoreWidgets;

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
