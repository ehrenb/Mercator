.class public Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;
.super Ljava/lang/RuntimeException;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/network/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestException"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 551
    return-void
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 560
    invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/HttpRequest$HttpRequestException;->a()Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method
