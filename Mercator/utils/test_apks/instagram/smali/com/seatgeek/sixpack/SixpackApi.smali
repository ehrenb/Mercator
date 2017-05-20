.class public interface abstract Lcom/seatgeek/sixpack/SixpackApi;
.super Ljava/lang/Object;
.source "SixpackApi.java"


# virtual methods
.method public abstract convert(Lcom/seatgeek/sixpack/c;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/seatgeek/sixpack/c;
        .annotation runtime Lretrofit2/http/Query;
            value = "experiment"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "kpi"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/seatgeek/sixpack/c;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "convert"
    .end annotation
.end method

.method public abstract participate(Lcom/seatgeek/sixpack/c;Ljava/util/List;Lcom/seatgeek/sixpack/a;Ljava/lang/Double;Ljava/lang/Boolean;)Lretrofit2/Call;
    .param p1    # Lcom/seatgeek/sixpack/c;
        .annotation runtime Lretrofit2/http/Query;
            value = "experiment"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Query;
            value = "alternatives"
        .end annotation
    .end param
    .param p3    # Lcom/seatgeek/sixpack/a;
        .annotation runtime Lretrofit2/http/Query;
            value = "force"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation runtime Lretrofit2/http/Query;
            value = "traffic_fraction"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit2/http/Query;
            value = "prefetch"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/seatgeek/sixpack/c;",
            "Ljava/util/List",
            "<",
            "Lcom/seatgeek/sixpack/a;",
            ">;",
            "Lcom/seatgeek/sixpack/a;",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/seatgeek/sixpack/b/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "participate"
    .end annotation
.end method
