.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "ListSearchAppsRequest.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private limit:Ljava/lang/Integer;

.field private offset:I

.field private query:Ljava/lang/String;

.field private storeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private storeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storesAuthMap:Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private trusted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 122
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->limit:Ljava/lang/Integer;

    .line 123
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->query:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storesAuthMap:Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    .line 125
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storeNames:Ljava/util/List;

    .line 126
    iput-object p5, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->trusted:Ljava/lang/Boolean;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 130
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->limit:Ljava/lang/Integer;

    .line 131
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->query:Ljava/lang/String;

    .line 132
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->trusted:Ljava/lang/Boolean;

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcm/aptoide/pt/networkclient/util/HashMapNotNull;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 106
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->limit:Ljava/lang/Integer;

    .line 107
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->query:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storeIds:Ljava/util/List;

    .line 109
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storesAuthMap:Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    .line 110
    iput-object p5, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->trusted:Ljava/lang/Boolean;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 114
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->limit:Ljava/lang/Integer;

    .line 115
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->query:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storeNames:Ljava/util/List;

    .line 117
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->trusted:Ljava/lang/Boolean;

    .line 118
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 93
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getOffset()I

    move-result v4

    if-eq v3, v4, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_9

    if-eqz v4, :cond_a

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v4

    if-nez v3, :cond_c

    if-eqz v4, :cond_d

    :cond_b
    move v0, v2

    goto :goto_0

    :cond_c
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_d
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoreNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoreNames()Ljava/util/List;

    move-result-object v4

    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    :cond_e
    move v0, v2

    goto :goto_0

    :cond_f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_10
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v4

    if-nez v3, :cond_12

    if-eqz v4, :cond_13

    :cond_11
    move v0, v2

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_13
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getTrusted()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getTrusted()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v3, :cond_15

    if-eqz v0, :cond_16

    :cond_14
    move v0, v2

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_16
    move v0, v1

    goto/16 :goto_0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->offset:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storeIds:Ljava/util/List;

    return-object v0
.end method

.method public getStoreNames()Ljava/util/List;
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
    .line 100
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storeNames:Ljava/util/List;

    return-object v0
.end method

.method public getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->storesAuthMap:Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    return-object v0
.end method

.method public getTrusted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->trusted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 93
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getOffset()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getQuery()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoreIds()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoreNames()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getStoresAuthMap()Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->getTrusted()Ljava/lang/Boolean;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListSearchAppsRequest$Body;->offset:I

    return-void
.end method
