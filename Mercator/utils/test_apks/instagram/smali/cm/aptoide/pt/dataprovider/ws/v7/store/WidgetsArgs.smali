.class public Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;
.super Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
.source "WidgetsArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$GridSizeObject;,
        Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$GridSizeObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 21
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->APPS_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    invoke-virtual {p0, v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->add(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;I)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    .line 22
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->STORES_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    invoke-virtual {p0, v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->add(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;I)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    .line 23
    return-void
.end method

.method public static createDefault()Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    invoke-direct {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;-><init>()V

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->APPS_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->APPS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Type;->getPerLineCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->add(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;I)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->STORES_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->STORES_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 34
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Type;->getPerLineCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->add(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;I)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/model/v7/Type;

    .line 35
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Type;->getPerLineCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->add(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;I)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->STORES_RECOMMENDED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->STORES_RECOMMENDED:Lcm/aptoide/pt/model/v7/Type;

    .line 36
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Type;->getPerLineCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->add(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;I)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;I)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$GridSizeObject;

    invoke-direct {v0, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$GridSizeObject;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-object p0
.end method
