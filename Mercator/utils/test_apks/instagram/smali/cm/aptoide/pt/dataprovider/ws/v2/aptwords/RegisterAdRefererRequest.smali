.class public Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;
.source "RegisterAdRefererRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest$DefaultResponse;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest$DefaultResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private adId:J

.field private appId:J

.field private success:Ljava/lang/String;

.field private tracker:Ljava/lang/String;


# direct methods
.method private constructor <init>(JJLjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;-><init>()V

    .line 26
    iput-wide p1, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->adId:J

    .line 27
    iput-wide p3, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->appId:J

    .line 28
    if-eqz p6, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->success:Ljava/lang/String;

    .line 30
    invoke-direct {p0, p5}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->extractAndSetTracker(Ljava/lang/String;)V

    .line 31
    return-void

    .line 28
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private extractAndSetTracker(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 36
    const-string v1, "/"

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->tracker:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic lambda$execute$0(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest$DefaultResponse;)V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method static synthetic lambda$execute$1(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public static of(JJLjava/lang/String;Z)Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;
    .locals 8

    .prologue
    .line 43
    new-instance v1, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;-><init>(JJLjava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest$$Lambda$1;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest$$Lambda$2;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v1

    invoke-super {p0, v0, v1}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    .line 52
    return-void
.end method

.method protected loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;Z)Lrx/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;",
            "Z)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest$DefaultResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    .line 59
    const-string v1, "success"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->success:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "adid"

    iget-wide v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->adId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "appid"

    iget-wide v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->appId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "q"

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/Api;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "androidversion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "tracker"

    iget-object v2, p0, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->tracker:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {p1, v0}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;->load(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataFromNetwork(Ljava/lang/Object;Z)Lrx/d;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest;->loadDataFromNetwork(Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;Z)Lrx/d;

    move-result-object v0

    return-object v0
.end method
