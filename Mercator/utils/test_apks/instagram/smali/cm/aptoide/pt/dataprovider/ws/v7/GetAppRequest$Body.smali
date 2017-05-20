.class public Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;
.source "GetAppRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;
    }
.end annotation


# instance fields
.field private appId:Ljava/lang/Long;

.field private md5:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "apk_md5sum"
    .end annotation
.end field

.field private nodes:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

.field private packageName:Ljava/lang/String;

.field private refresh:Z

.field private storeName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "store_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 162
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->appId:Ljava/lang/Long;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 156
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->md5:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->refresh:Z

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 131
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 132
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->appId:Ljava/lang/Long;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->refresh:Z

    .line 134
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->nodes:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 137
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 138
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->appId:Ljava/lang/Long;

    .line 139
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->refresh:Z

    .line 140
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->storeName:Ljava/lang/String;

    .line 141
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->nodes:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 151
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->refresh:Z

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;-><init>()V

    .line 145
    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->packageName:Ljava/lang/String;

    .line 146
    iput-boolean p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->refresh:Z

    .line 147
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->storeName:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 122
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getAppId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getAppId()Ljava/lang/Long;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_8

    if-eqz v4, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_9
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->isRefresh()Z

    move-result v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->isRefresh()Z

    move-result v4

    if-eq v3, v4, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getMd5()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getStoreName()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getNodes()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getNodes()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    move-result-object v0

    if-nez v3, :cond_12

    if-eqz v0, :cond_13

    :cond_11
    move v0, v2

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_13
    move v0, v1

    goto/16 :goto_0
.end method

.method public getAppId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->appId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getNodes()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->nodes:Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 122
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithApp;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getAppId()Ljava/lang/Long;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getPackageName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v2, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->isRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x4f

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getMd5()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->getNodes()Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body$Node;

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
    const/16 v0, 0x61

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

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/GetAppRequest$Body;->refresh:Z

    return v0
.end method
