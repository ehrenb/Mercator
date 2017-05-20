.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;
.super Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;
.source "GetStoreWidgetsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Body"
.end annotation


# instance fields
.field private context:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field private storeName:Ljava/lang/String;

.field private widgetsArgs:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    .line 76
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->widgetsArgs:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    .line 82
    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->widgetsArgs:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    .line 83
    iput-object p3, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->context:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    .line 84
    iput-object p4, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->storeName:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 68
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getContext()Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getContext()Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

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
    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_b

    if-eqz v0, :cond_c

    :cond_a
    move v0, v2

    goto :goto_0

    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_c
    move v0, v1

    goto :goto_0
.end method

.method public getContext()Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->context:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->widgetsArgs:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 68
    invoke-super {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getWidgetsArgs()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getContext()Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/GetStoreWidgetsRequest$Body;->getStoreName()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    :goto_2
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

    move-result v1

    goto :goto_2
.end method
