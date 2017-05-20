.class public Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "ShareInstallCardRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response;",
        "Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;",
        ">;"
    }
.end annotation


# static fields
.field private static access_token:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field private static type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;
    .locals 3

    .prologue
    .line 26
    sput-object p0, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->packageName:Ljava/lang/String;

    .line 27
    sput-object p1, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->access_token:Ljava/lang/String;

    .line 28
    sput-object p2, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->type:Ljava/lang/String;

    .line 29
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;

    invoke-direct {v1, p3}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v2, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;

    .line 32
    invoke-virtual {v1, v0, p1}, Lcm/aptoide/pt/dataprovider/ws/BaseBodyDecorator;->decorate(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/BaseBody;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;

    const-string v1, "https://ws75.aptoide.com/api/7/"

    invoke-direct {v2, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;Ljava/lang/String;)V

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
    .line 37
    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->body:Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->packageName:Ljava/lang/String;

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->access_token:Ljava/lang/String;

    sget-object v3, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->type:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;->shareInstallCard(Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest$Body;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/ShareInstallCardRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v7/V7$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
