.class public abstract Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore;
.super Lcm/aptoide/pt/dataprovider/ws/v7/V7;
.source "BaseRequestWithStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "B:",
        "Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;",
        ">",
        "Lcm/aptoide/pt/dataprovider/ws/v7/V7",
        "<TU;TB;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Lokhttp3/OkHttpClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lokhttp3/OkHttpClient;",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lokhttp3/OkHttpClient;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/dataprovider/ws/v7/BaseBodyWithStore;Lretrofit2/Converter$Factory;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lretrofit2/Converter$Factory;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcm/aptoide/pt/dataprovider/ws/v7/V7;-><init>(Lcm/aptoide/pt/dataprovider/ws/v7/AccessTokenBody;Lretrofit2/Converter$Factory;Ljava/lang/String;)V

    .line 23
    return-void
.end method
