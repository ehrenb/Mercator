.class public abstract Lio/fabric/sdk/android/services/network/HttpRequest$c;
.super Ljava/lang/Object;
.source "HttpRequest.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract c()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 588
    const/4 v2, 0x0

    .line 590
    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$c;->b()Ljava/lang/Object;
    :try_end_0
    .catch Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 599
    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$c;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 603
    return-object v0

    .line 600
    :catch_0
    move-exception v0

    .line 602
    new-instance v1, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 591
    :catch_1
    move-exception v0

    .line 593
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    :catchall_0
    move-exception v0

    .line 599
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$c;->c()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 603
    :cond_0
    throw v0

    .line 594
    :catch_2
    move-exception v0

    .line 596
    :try_start_4
    new-instance v2, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 600
    :catch_3
    move-exception v2

    .line 601
    if-nez v1, :cond_0

    .line 602
    new-instance v0, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;

    invoke-direct {v0, v2}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 598
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_0
.end method
