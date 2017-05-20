.class public abstract Lcm/aptoide/pt/networkclient/okhttp/cache/BaseCache;
.super Ljava/lang/Object;
.source "BaseCache.java"

# interfaces
.implements Lcm/aptoide/pt/networkclient/okhttp/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "Tout:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcm/aptoide/pt/networkclient/okhttp/cache/Cache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm",
            "<TK;TTout;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm",
            "<TK;TTout;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcm/aptoide/pt/networkclient/okhttp/cache/BaseCache;->keyAlgorithm:Lcm/aptoide/pt/networkclient/okhttp/cache/KeyAlgorithm;

    .line 13
    return-void
.end method
