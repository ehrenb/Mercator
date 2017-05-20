.class public abstract Lcm/aptoide/pt/dataprovider/ws/v7/AnalyticsBaseRequest;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "AnalyticsBaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody;",
        ">",
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<",
        "Lcm/aptoide/pt/model/v7/BaseV7Response;",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/analyticsbody/AnalyticsBaseBody;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 14
    return-void
.end method
