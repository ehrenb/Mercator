.class interface abstract Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords$Interfaces;
.super Ljava/lang/Object;
.source "Aptwords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/Aptwords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Interfaces"
.end annotation


# virtual methods
.method public abstract getAds(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/model/v2/GetAdsResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "getAds"
    .end annotation
.end method

.method public abstract load(Lcm/aptoide/pt/networkclient/util/HashMapNotNull;)Lrx/d;
    .param p1    # Lcm/aptoide/pt/networkclient/util/HashMapNotNull;
        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/util/HashMapNotNull",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/dataprovider/ws/v2/aptwords/RegisterAdRefererRequest$DefaultResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "registerAdReferer"
    .end annotation
.end method
