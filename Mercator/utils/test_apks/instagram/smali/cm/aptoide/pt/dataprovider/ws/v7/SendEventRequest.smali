.class public Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "SendEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static ACTION:Ljava/lang/String;

.field private static CONTEXT:Ljava/lang/String;

.field private static NAME:Ljava/lang/String;

.field private static final aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "CLICK"

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->ACTION:Ljava/lang/String;

    .line 25
    const-string v0, "TIMELINE"

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->CONTEXT:Ljava/lang/String;

    .line 28
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 29
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static of(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;
    .locals 3

    .prologue
    .line 37
    sput-object p2, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->NAME:Ljava/lang/String;

    .line 38
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;

    .line 40
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body$Data;Ljava/lang/String;)V

    .line 42
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;

    invoke-virtual {v0, v1, p0}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v7/BaseV7Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->NAME:Ljava/lang/String;

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->ACTION:Ljava/lang/String;

    sget-object v3, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->CONTEXT:Ljava/lang/String;

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;

    invoke-interface {p1, v1, v2, v3, v0}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->addEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest$Body;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 20
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/SendEventRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
