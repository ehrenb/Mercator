.class public Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;
.source "ListFullReviewsRequest.java"

# interfaces
.implements Lcm/aptoide/pt/dataprovider/ws/v7/Endless;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;
    }
.end annotation


# instance fields
.field private lang:Ljava/lang/String;

.field private limit:Ljava/lang/Integer;

.field private mature:Z

.field private offset:I

.field private order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

.field private packageName:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private refresh:Z

.field private reviewId:Ljava/lang/Long;

.field private sort:Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;

.field private storeId:Ljava/lang/Long;

.field private storeName:Ljava/lang/String;

.field private store_pass_sha1:Ljava/lang/String;

.field private store_user:Ljava/lang/String;

.field private subLimit:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(JIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 110
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->q:Ljava/lang/String;

    .line 132
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->storeId:Ljava/lang/Long;

    .line 133
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->limit:Ljava/lang/Integer;

    .line 134
    iput p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->offset:I

    .line 135
    iput-boolean p5, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->refresh:Z

    .line 136
    iput-object p6, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->store_user:Ljava/lang/String;

    .line 137
    iput-object p7, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->store_pass_sha1:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 110
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->q:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->packageName:Ljava/lang/String;

    .line 143
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->storeName:Ljava/lang/String;

    .line 144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->limit:Ljava/lang/Integer;

    .line 145
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->subLimit:Ljava/lang/Integer;

    .line 146
    iput-boolean p5, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->refresh:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;-><init>()V

    .line 110
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->q:Ljava/lang/String;

    .line 126
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->refresh:Z

    .line 127
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 103
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->canEqual(Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLimit()Ljava/lang/Integer;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOffset()I

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOffset()I

    move-result v4

    if-eq v3, v4, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLang()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isMature()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isMature()Z

    move-result v4

    if-eq v3, v4, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_d

    if-eqz v4, :cond_e

    :cond_c
    move v0, v2

    goto :goto_0

    :cond_d
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_e
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isRefresh()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isRefresh()Z

    move-result v4

    if-eq v3, v4, :cond_f

    move v0, v2

    goto :goto_0

    :cond_f
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOrder()Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOrder()Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    move-result-object v4

    if-nez v3, :cond_11

    if-eqz v4, :cond_12

    :cond_10
    move v0, v2

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_12
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSort()Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSort()Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;

    move-result-object v4

    if-nez v3, :cond_14

    if-eqz v4, :cond_15

    :cond_13
    move v0, v2

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_15
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v4

    if-nez v3, :cond_17

    if-eqz v4, :cond_18

    :cond_16
    move v0, v2

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_18
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getReviewId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getReviewId()Ljava/lang/Long;

    move-result-object v4

    if-nez v3, :cond_1a

    if-eqz v4, :cond_1b

    :cond_19
    move v0, v2

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_1b
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_1d

    if-eqz v4, :cond_1e

    :cond_1c
    move v0, v2

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1e
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_20

    if-eqz v4, :cond_21

    :cond_1f
    move v0, v2

    goto/16 :goto_0

    :cond_20
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_21
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSubLimit()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSubLimit()Ljava/lang/Integer;

    move-result-object v4

    if-nez v3, :cond_23

    if-eqz v4, :cond_24

    :cond_22
    move v0, v2

    goto/16 :goto_0

    :cond_23
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_24
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_user()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_user()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_26

    if-eqz v4, :cond_27

    :cond_25
    move v0, v2

    goto/16 :goto_0

    :cond_26
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_27
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_pass_sha1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_pass_sha1()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_29

    if-eqz v0, :cond_2a

    :cond_28
    move v0, v2

    goto/16 :goto_0

    :cond_29
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_2a
    move v0, v1

    goto/16 :goto_0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->offset:I

    return v0
.end method

.method public getOrder()Lcm/aptoide/pt/dataprovider/ws/v7/Order;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getReviewId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->reviewId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSort()Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->sort:Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->storeId:Ljava/lang/Long;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStore_pass_sha1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->store_pass_sha1:Ljava/lang/String;

    return-object v0
.end method

.method public getStore_user()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->store_user:Ljava/lang/String;

    return-object v0
.end method

.method public getSubLimit()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->subLimit:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x4f

    const/16 v1, 0x2b

    .line 103
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOffset()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLang()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v5

    mul-int/lit8 v4, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isMature()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x3b

    if-nez v4, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isRefresh()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_4
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOrder()Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSort()Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getReviewId()Ljava/lang/Long;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSubLimit()Ljava/lang/Integer;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_user()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_pass_sha1()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_d

    :goto_d
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_d
.end method

.method public isMature()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->mature:Z

    return v0
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->refresh:Z

    return v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->lang:Ljava/lang/String;

    return-void
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setMature(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->mature:Z

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->offset:I

    return-void
.end method

.method public setOrder(Lcm/aptoide/pt/dataprovider/ws/v7/Order;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->order:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setQ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->q:Ljava/lang/String;

    return-void
.end method

.method public setRefresh(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->refresh:Z

    return-void
.end method

.method public setReviewId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->reviewId:Ljava/lang/Long;

    return-void
.end method

.method public setSort(Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->sort:Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;

    return-void
.end method

.method public setStoreId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->storeId:Ljava/lang/Long;

    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->storeName:Ljava/lang/String;

    return-void
.end method

.method public setStore_pass_sha1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->store_pass_sha1:Ljava/lang/String;

    return-void
.end method

.method public setStore_user(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->store_user:Ljava/lang/String;

    return-void
.end method

.method public setSubLimit(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->subLimit:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListFullReviewsRequest.Body(limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isMature()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->isRefresh()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getOrder()Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSort()Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body$Sort;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reviewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getReviewId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getSubLimit()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store_user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_user()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", store_pass_sha1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ListFullReviewsRequest$Body;->getStore_pass_sha1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
